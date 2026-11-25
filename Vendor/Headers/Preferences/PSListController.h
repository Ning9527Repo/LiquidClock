#pragma once
#import <UIKit/UIKit.h>
@class PSSpecifier;
@interface PSViewController : UIViewController
- (void)reloadSpecifiers;
@end
@interface PSListController : PSViewController
@property(nonatomic,retain) NSArray *specifiers;
- (NSArray *)loadSpecifiersFromPlistName:(NSString *)name target:(id)target;
- (NSArray *)loadSpecifiersFromPlistName:(NSString *)name target:(id)target bundle:(NSBundle *)bundle;
@end
