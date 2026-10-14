package cn.mucang.android.jiakaoyi.examk2.rule.jinjiqingkuang;

import cn.mucang.android.jiakaoyi.engine.g.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.f;
import cn.mucang.android.jiakaoyi.examk2.config.K2JinJiQingKuangConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K2_JinJiQingKuang_310104_Event extends d<K2JinJiQingKuangConfig> {
    private boolean isCloseDoor;
    private b timeoutCheck;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_JinJiQingKuang_310104_Event(K2JinJiQingKuangConfig k2JinJiQingKuangConfig, Deduct deduct) {
        super(k2JinJiQingKuangConfig, deduct);
        this.isCloseDoor = false;
        this.timeoutCheck = new b(((Integer) ((K2JinJiQingKuangConfig) this.config).p410110.value).intValue() * 1000);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        b bVar2;
        C c = ((f) bVar.f()).f3279a;
        if (((cn.mucang.android.jiakaoyi.examk2.collision.e) c).z != null && ((cn.mucang.android.jiakaoyi.examk2.collision.e) c).z.booleanValue() && (bVar2 = this.timeoutCheck) != null) {
            bVar2.g();
            if (this.timeoutCheck.d() && !this.isCloseDoor) {
                setDoNotExecute(true);
                return false;
            }
            if (eVar.d().j) {
                this.isCloseDoor = true;
                setDoNotExecute(true);
                this.timeoutCheck.b();
                this.timeoutCheck = null;
            }
        }
        return true;
    }
}
