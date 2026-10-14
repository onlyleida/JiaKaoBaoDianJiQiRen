package cn.mucang.android.jiakaoyi.examk2.rule.jinjiqingkuang;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.f;
import cn.mucang.android.jiakaoyi.examk2.config.K2JinJiQingKuangConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_JinJiQingKuang_310105_Event extends d<K2JinJiQingKuangConfig> {
    private boolean isOpenSeatBelt;
    private b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_JinJiQingKuang_310105_Event(K2JinJiQingKuangConfig k2JinJiQingKuangConfig, Deduct deduct) {
        super(k2JinJiQingKuangConfig, deduct);
        this.isOpenSeatBelt = false;
        this.timeoutCheck = new b(((Integer) ((K2JinJiQingKuangConfig) this.config).p410108.value).intValue() * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        b bVar2;
        C c = ((f) bVar.f()).f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.e) c).y != null && ((cn.mucang.android.jiakaoyi.examk2.collision.e) c).y.booleanValue() && (bVar2 = this.timeoutCheck) != null) {
            bVar2.g();
            if (this.timeoutCheck.d() && !this.isOpenSeatBelt) {
                setDoNotExecute(true);
                return false;
            }
            if (!eVar.d().f5266d) {
                this.isOpenSeatBelt = true;
                setDoNotExecute(true);
                this.timeoutCheck.b();
                this.timeoutCheck = null;
            }
        }
        return true;
    }
}
