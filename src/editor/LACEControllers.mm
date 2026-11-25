#import "LACEInternal.h"
static UIFont *Compact(CGFloat size) {lace::State s;s.modern=false;return LACEFont(s,size);}
static UILabel *Caption(NSString *text) {
    UILabel *label=[UILabel new];label.text=text;label.textColor=UIColor.labelColor;
    label.font=Compact(16);label.numberOfLines=0;return label;
}
static void PlaceStack(UIStackView *stack,UIView *host) {
    stack.translatesAutoresizingMaskIntoConstraints=NO;[host addSubview:stack];
    [NSLayoutConstraint activateConstraints:@[
        [stack.leadingAnchor constraintEqualToAnchor:host.safeAreaLayoutGuide.leadingAnchor constant:20],
        [stack.trailingAnchor constraintEqualToAnchor:host.safeAreaLayoutGuide.trailingAnchor constant:-20],
        [stack.topAnchor constraintEqualToAnchor:host.safeAreaLayoutGuide.topAnchor constant:18],
        [stack.bottomAnchor constraintLessThanOrEqualToAnchor:host.safeAreaLayoutGuide.bottomAnchor constant:-16]]];
}
@interface LACEPreviewView : UIView
@property(nonatomic) lace::State state;
@property(nonatomic,strong) UILabel *timeLabel;
@property(nonatomic) CGFloat minimumHeight;
@property(nonatomic) CGFloat maximumHeight;
@end
@implementation LACEPreviewView
- (instancetype)initWithFrame:(CGRect)frame {
    if((self=[super initWithFrame:frame])) {
        self.backgroundColor=[UIColor secondarySystemBackgroundColor];self.layer.cornerRadius=20;
        _timeLabel=[UILabel new];_timeLabel.text=@"09:41";_timeLabel.textAlignment=NSTextAlignmentCenter;
        _timeLabel.textColor=UIColor.labelColor;_timeLabel.accessibilityLabel=@"时钟字体和尺寸预览";
        [self addSubview:_timeLabel];
    }return self;
}
- (void)setState:(lace::State)state {_state=state;[self setNeedsLayout];}
- (void)layoutSubviews {
    [super layoutSubviews];CGFloat width=MAX(1,CGRectGetWidth(self.bounds)-24),height=MAX(1,CGRectGetHeight(self.bounds)-24);
    UIFont *probe=LACEFont(self.state,100);if(!probe)return;
    CGSize extent=[self.timeLabel.text sizeWithAttributes:@{NSFontAttributeName:probe}];
    CGFloat size=100*MIN(width/MAX(1,extent.width),height/MAX(1,probe.lineHeight));
    UIFont *font=LACEFont(self.state,MAX(1,size));self.timeLabel.font=font;
    // Independent UI adaptation: measure uploaded glyphs for horizontal fit, then
    // let normalized sample progress interpolate the available vertical preview.
    // This is not a recovered sample HGHT mapping; HGHT/wdth stay at font defaults.
    self.maximumHeight=height;self.minimumHeight=MIN(height,MAX(1,font.lineHeight*.62));
    CGFloat target=self.minimumHeight+(self.maximumHeight-self.minimumHeight)*self.state.progress;
    self.timeLabel.transform=CGAffineTransformIdentity;
    self.timeLabel.bounds=CGRectMake(0,0,width,MAX(1,font.lineHeight));
    self.timeLabel.center=CGPointMake(CGRectGetMidX(self.bounds),CGRectGetMidY(self.bounds));
    self.timeLabel.transform=CGAffineTransformMakeScale(1,target/MAX(1,font.lineHeight));
}
@end
@interface LACEFontPanel : UIViewController
@property(nonatomic,strong) LACESession *session;
@property(nonatomic,strong) UISlider *weightSlider;
@property(nonatomic,strong) UISlider *softSlider;
@property(nonatomic,strong) UIButton *weightValue;
@property(nonatomic,strong) UIButton *softValue;
@end
@implementation LACEFontPanel
- (void)viewDidLoad {
    [super viewDidLoad];self.title=@"字体与外观";self.view.backgroundColor=UIColor.systemBackgroundColor;
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(closePanel)];
    self.weightSlider=[UISlider new];self.weightSlider.minimumValue=lace::WeightMin;self.weightSlider.maximumValue=lace::WeightMax;
    self.softSlider=[UISlider new];self.softSlider.minimumValue=lace::SoftMin;self.softSlider.maximumValue=lace::SoftMax;
    self.weightSlider.accessibilityLabel=@"时钟字重";self.softSlider.accessibilityLabel=@"时钟柔和度";
    [self.weightSlider addTarget:self action:@selector(changed:) forControlEvents:UIControlEventValueChanged];
    [self.softSlider addTarget:self action:@selector(changed:) forControlEvents:UIControlEventValueChanged];
    self.weightValue=[UIButton buttonWithType:UIButtonTypeSystem];self.softValue=[UIButton buttonWithType:UIButtonTypeSystem];
    [self.weightValue addTarget:self action:@selector(editNumber:) forControlEvents:UIControlEventTouchUpInside];
    [self.softValue addTarget:self action:@selector(editNumber:) forControlEvents:UIControlEventTouchUpInside];
    self.weightValue.accessibilityLabel=@"输入时钟字重";self.softValue.accessibilityLabel=@"输入时钟柔和度";
    UIStackView *stack=[[UIStackView alloc] initWithArrangedSubviews:@[
        Caption(@"字重（100–1000）"),self.weightValue,self.weightSlider,
        Caption(@"柔和度（0–100）"),self.softValue,self.softSlider,
        Caption(@"实时预览；返回此面板不会保存。请在主编辑器点完成，或取消恢复。")]];
    stack.axis=UILayoutConstraintAxisVertical;stack.spacing=12;PlaceStack(stack,self.view);[self refresh];
}
- (void)refresh {
    lace::State s=self.session->transaction.draft;self.weightSlider.value=s.weight;self.softSlider.value=s.softness;
    NSString *weight=[NSString stringWithFormat:@"%.0f",s.weight],*soft=[NSString stringWithFormat:@"%.0f",s.softness];
    [self.weightValue setTitle:weight forState:UIControlStateNormal];[self.softValue setTitle:soft forState:UIControlStateNormal];
    self.weightSlider.accessibilityValue=weight;self.softSlider.accessibilityValue=soft;
}
- (void)changed:(UISlider *)sender {
    (void)sender;lace::State s=self.session->transaction.draft;
    [self.session stageWeight:self.weightSlider.value softness:self.softSlider.value progress:s.progress];[self refresh];
}
- (void)closePanel {[self dismissViewControllerAnimated:YES completion:nil];}
- (void)editNumber:(UIButton *)sender {
    BOOL weight=sender==self.weightValue;
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:weight?@"编辑字重（100–1000）":@"编辑柔和度（0–100）" message:nil preferredStyle:UIAlertControllerStyleAlert];
    lace::State s=self.session->transaction.draft;
    [alert addTextFieldWithConfigurationHandler:^(UITextField *field) {
        field.keyboardType=UIKeyboardTypeDecimalPad;field.text=[NSString stringWithFormat:@"%.0f",weight?s.weight:s.softness];
    }];
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
    __weak LACEFontPanel *weakSelf=self;
    [alert addAction:[UIAlertAction actionWithTitle:@"应用" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        (void)action;LACEFontPanel *panel=weakSelf;if(!panel)return;
        NSString *text=alert.textFields.firstObject.text?:@"";NSScanner *scanner=[NSScanner scannerWithString:text];
        scanner.locale=[NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];double value=0;
        if(![scanner scanDouble:&value]||!scanner.isAtEnd||!lace::finite(value)||
            value<(weight?100:0)||value>(weight?1000:100)) {
            UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification,@"数值无效，未更改");return;
        }
        lace::State current=panel.session->transaction.draft;
        [panel.session stageWeight:weight?value:current.weight softness:weight?current.softness:value progress:current.progress];[panel refresh];
    }]];[self presentViewController:alert animated:YES completion:nil];
}
@end

@interface LACEEditorController ()
@property(nonatomic,strong) LACESession *session;
@property(nonatomic,strong) LACEPreviewView *preview;
@property(nonatomic,strong) UISlider *sizeSlider;
@property(nonatomic,strong) UILabel *sizeValue;
@property(nonatomic) double startProgress;
@end
@implementation LACEEditorController
- (instancetype)initWithSession:(LACESession *)session {
    if((self=[super initWithNibName:nil bundle:nil]))_session=session;return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];self.title=@"锁屏时钟";self.view.backgroundColor=UIColor.systemBackgroundColor;
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(cancelAndDismiss)];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    self.preview=[[LACEPreviewView alloc] initWithFrame:CGRectZero];
    self.sizeValue=Caption(@"");self.sizeSlider=[UISlider new];self.sizeSlider.minimumValue=0;self.sizeSlider.maximumValue=1;
    self.sizeSlider.accessibilityLabel=@"时钟尺寸";self.sizeSlider.continuous=YES;
    [self.sizeSlider addTarget:self action:@selector(sizeChanged:) forControlEvents:UIControlEventValueChanged];
    UIButton *font=[UIButton buttonWithType:UIButtonTypeSystem];[font setTitle:@"字体与外观" forState:UIControlStateNormal];font.titleLabel.font=Compact(18);
    [font addTarget:self action:@selector(showFonts) forControlEvents:UIControlEventTouchUpInside];
    UIStackView *stack=[[UIStackView alloc] initWithArrangedSubviews:@[
        self.preview,self.sizeValue,self.sizeSlider,font,Caption(@"拖动预览调整高度。所有改动在点完成前仅为预览。")]];
    stack.axis=UILayoutConstraintAxisVertical;stack.spacing=18;PlaceStack(stack,self.view);
    NSLayoutConstraint *height=[self.preview.heightAnchor constraintEqualToConstant:260];height.priority=UILayoutPriorityDefaultHigh;height.active=YES;
    [self.preview.heightAnchor constraintGreaterThanOrEqualToConstant:80].active=YES;
    UIPanGestureRecognizer *pan=[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(resize:)];
    [self.preview addGestureRecognizer:pan];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(previewChanged:) name:LACEDidChange object:self.session.store];
    [self refresh];
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];self.navigationController.presentationController.delegate=self;
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    if(self.isBeingDismissed||self.navigationController.isBeingDismissed||
        (!self.navigationController.presentingViewController&&!self.presentingViewController)) [self.session cancel];
}
- (void)dealloc {
    [NSNotificationCenter.defaultCenter removeObserver:self];[self.session cancel];
}
- (void)previewChanged:(NSNotification *)note {
    if([note.userInfo[@"posterID"] isEqualToString:self.session.posterID])[self refresh];
}
- (void)refresh {
    lace::State s=self.session->transaction.draft;self.preview.state=s;self.sizeSlider.value=s.progress;
    self.sizeValue.text=[NSString stringWithFormat:@"尺寸 %.0f%%",s.progress*100];
    self.sizeSlider.accessibilityValue=[NSString stringWithFormat:@"%.0f%%",s.progress*100];
}
- (void)sizeChanged:(UISlider *)slider {
    lace::State s=self.session->transaction.draft;[self.session stageWeight:s.weight softness:s.softness progress:slider.value];
}
- (void)resize:(UIPanGestureRecognizer *)pan {
    lace::State s=self.session->transaction.draft;
    if(pan.state==UIGestureRecognizerStateBegan)self.startProgress=s.progress;
    if(pan.state==UIGestureRecognizerStateFailed)return;
    double p=pan.state==UIGestureRecognizerStateCancelled?self.startProgress:
        lace::dragProgress(self.startProgress,[pan translationInView:self.preview].y,self.preview.minimumHeight,self.preview.maximumHeight);
    [self.session stageWeight:s.weight softness:s.softness progress:p];
}
- (void)showFonts {
    if(self.presentedViewController||self.session->transaction.phase!=lace::Transaction::Editing)return;
    LACEFontPanel *panel=[LACEFontPanel new];panel.session=self.session;
    UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:panel];
    nav.modalPresentationStyle=UIModalPresentationPageSheet;
    if(@available(iOS 15.0,*))nav.sheetPresentationController.detents=@[UISheetPresentationControllerDetent.mediumDetent,UISheetPresentationControllerDetent.largeDetent];
    [self presentViewController:nav animated:YES completion:nil];
}
- (void)done {
    NSError *error=nil;
    if([self.session commit:&error]){[self.navigationController dismissViewControllerAnimated:YES completion:nil];return;}
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"无法保存时钟" message:error.localizedDescription preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}
- (void)cancelAndDismiss {
    [self.session cancel];[self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
- (void)presentationControllerDidDismiss:(UIPresentationController *)presentationController {
    (void)presentationController;[self.session cancel];
}
@end
