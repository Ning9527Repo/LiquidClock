"""Evidence-driven state model for the sample's lite clock editor.

This is a host-testable behavioral model, not an iOS Preferences controller or
replacement hook. Only observed keys and transitions are represented.
"""
from dataclasses import dataclass, field
from copy import deepcopy

STYLE_KEY='Clock.Legacy.Style'
PROGRESS_KEY='Clock.Legacy.ResizeProgress'
STYLE_DOMAIN='dylv.liquidass.clock.style'
PROGRESS_DOMAIN='dylv.liquidass.clock.resizeProgress'

@dataclass
class Preferences:
    values: dict = field(default_factory=dict)
    notify_count: int = 0
    def commit_pair(self, style, progress, success=True):
        if not success: return False
        candidate=dict(self.values)
        candidate[STYLE_KEY]=style
        candidate[PROGRESS_KEY]=progress
        self.values=candidate
        self.notify_count += 1
        return True

@dataclass
class LiteClockEditor:
    prefs: Preferences
    previous_style: object
    previous_progress: object
    style: object
    progress: float
    weight: float
    softness: float
    closing: bool=False

    def stage_progress(self):
        p=max(0.0,min(1.0,float(self.progress)))
        self.prefs.values[STYLE_DOMAIN]={
            'modern': True,
            'weight': float(self.weight),
            'softness': float(self.softness),
        }
        self.prefs.values[PROGRESS_DOMAIN]=p
        return p

    def cancel(self):
        if self.closing: return False
        self.prefs.values[STYLE_DOMAIN]=deepcopy(self.previous_style)
        self.prefs.values[PROGRESS_DOMAIN]=deepcopy(self.previous_progress)
        self.finish()
        return True

    def done(self, transaction_succeeds=True):
        ok=self.prefs.commit_pair(self.style,float(self.progress),transaction_succeeds)
        if ok: self.finish()
        return ok

    def finish(self):
        self.closing=True
