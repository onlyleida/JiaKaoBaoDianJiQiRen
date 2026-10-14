package cn.mucang.android.jiakaoyi.teachingk2.rule.quka;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachingk2.s0.g;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.f;
import com.google.android.exoplayer2.DefaultRenderersFactory;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_QuKa_20008_Event extends d<SimpleTeachingConfig> {
    private boolean hasHandbrake;
    private final b timeoutChecker;

    public Teach_QuKa_20008_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
        this.timeoutChecker = new b(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        this.hasHandbrake = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (((g) ((f) bVar.f()).f8776a).f3695f) {
            this.timeoutChecker.g();
        }
        if (this.timeoutChecker.e() && !eVar.d().f5268f) {
            setDoNotExecute(true);
            this.timeoutChecker.b();
            this.hasHandbrake = true;
        }
        if (this.hasHandbrake || !this.timeoutChecker.d()) {
            return true;
        }
        setDoNotExecute(true);
        this.timeoutChecker.b();
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
