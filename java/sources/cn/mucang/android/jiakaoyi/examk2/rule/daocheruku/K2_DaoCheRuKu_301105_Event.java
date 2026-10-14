package cn.mucang.android.jiakaoyi.examk2.rule.daocheruku;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.collision.DaoKuChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2DaoCheRuKuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.google.android.exoplayer2.DefaultRenderersFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_DaoCheRuKu_301105_Event extends d<K2DaoCheRuKuConfig> {
    private b clutchChecker;

    public K2_DaoCheRuKu_301105_Event(K2DaoCheRuKuConfig k2DaoCheRuKuConfig, Deduct deduct) {
        super(k2DaoCheRuKuConfig, deduct);
        this.clutchChecker = new b(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        C c = ((cn.mucang.android.jiakaoyi.examk2.b.b) bVar.f()).f3279a;
        if (((DaoKuChecker) c).u0 != DaoKuChecker.StartByLine.Line12 || ((DaoKuChecker) c).r == SubStep.Step2) {
            setDoNotExecute(true);
            return true;
        }
        if (!((Boolean) ((K2DaoCheRuKuConfig) this.config).p402136.value).booleanValue()) {
            Gear gear = eVar.d().m;
            setDoNotExecute(true);
            return gear != Gear.GearN;
        }
        if (!eVar.d().f5267e) {
            this.clutchChecker.b();
        } else if (!this.clutchChecker.e()) {
            this.clutchChecker.g();
        }
        if (this.clutchChecker.d()) {
            setDoNotExecute(true);
            this.clutchChecker.b();
            return false;
        }
        if (eVar.d().m != Gear.GearN) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
