import unittest
from editor_transaction_model import *

class EditorModelTests(unittest.TestCase):
    def test_stage_clamps_and_publishes_axes(self):
        p=Preferences(); e=LiteClockEditor(p,{}, {},'x',2.0,740,56)
        self.assertEqual(e.stage_progress(),1.0)
        self.assertEqual(p.values[PROGRESS_DOMAIN],1.0)
        self.assertEqual(p.values[STYLE_DOMAIN]['weight'],740)
    def test_done_commits_pair_and_notifies_once(self):
        p=Preferences({'old':1}); e=LiteClockEditor(p,{}, {},'new',.4,750,56)
        self.assertTrue(e.done()); self.assertTrue(e.closing)
        self.assertEqual(p.values[STYLE_KEY],'new'); self.assertEqual(p.notify_count,1)
    def test_failed_done_does_not_finish_or_commit(self):
        p=Preferences({STYLE_KEY:'old'}); e=LiteClockEditor(p,{}, {},'new',.4,750,56)
        self.assertFalse(e.done(False)); self.assertFalse(e.closing); self.assertEqual(p.values[STYLE_KEY],'old')
    def test_cancel_restores_previous_staged_values(self):
        p=Preferences(); e=LiteClockEditor(p,{'a':1},{'b':2},'new',.4,750,56)
        e.stage_progress(); self.assertTrue(e.cancel()); self.assertEqual(p.values[STYLE_DOMAIN],{'a':1}); self.assertEqual(p.values[PROGRESS_DOMAIN],{'b':2})

if __name__=='__main__': unittest.main()
