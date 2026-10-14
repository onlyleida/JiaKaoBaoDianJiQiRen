package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.i.e.a;
import cn.mucang.android.jiakaoyi.engine.i.e.b;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100152_Event extends d<K3GlobalStepConfig> {
    private final a chuangdong;

    public K3_Global_100152_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.chuangdong = new a(new b() { // from class: cn.mucang.android.jiakaoyi.exam.k3.rule.global.K3_Global_100152_Event.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // cn.mucang.android.jiakaoyi.engine.i.e.b
            public boolean trigger(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
                CarModel carModelD = eVar.d();
                return carModelD.b < 1.0f && carModelD.p == KeyState.ON && carModelD.f5265a < ((Integer) ((K3GlobalStepConfig) ((d) K3_Global_100152_Event.this).config).p200147.value).intValue();
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean sameEventDeductOnce() {
        return false;
    }
}
