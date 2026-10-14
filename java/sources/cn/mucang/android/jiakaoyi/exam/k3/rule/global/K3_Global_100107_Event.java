package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.d.i;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100107_Event extends d<K3GlobalStepConfig> {
    private b checker;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100107_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.checker = new b((((Integer) ((K3GlobalStepConfig) this.config).p200117.value).intValue() * 1000) + (i.a() ? 2000 : 100));
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (examProcessor.p().isAuto()) {
            setDoNotExecute(true);
            return true;
        }
        if ((eVar.d().m == Gear.GearN || eVar.d().k) && eVar.d().c()) {
            this.checker.g();
            if (this.checker.d()) {
                return false;
            }
        } else {
            this.checker.f();
            this.checker.a();
        }
        return true;
    }
}
