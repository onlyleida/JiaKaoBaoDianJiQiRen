package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.KeyState;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300114_Event extends d<K2GlobalConfig> {
    private boolean hasKeyStart;

    public K2_Global_300114_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.hasKeyStart = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2GlobalConfig) this.config).p401121.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        cn.mucang.android.jiakaoyi.examk2.b.d dVar = (cn.mucang.android.jiakaoyi.examk2.b.d) bVar.f();
        CarModel carModelD = eVar.d();
        KeyState keyState = carModelD.p;
        if (carModelD.J) {
            keyState = KeyState.Start;
        }
        if (!((Boolean) ((K2GlobalConfig) this.config).p401104.value).booleanValue()) {
            setDoNotExecute(true);
            return carModelD.f();
        }
        int i = carModelD.f5265a;
        if (i >= 0 && i <= dVar.c && keyState == KeyState.Start) {
            this.hasKeyStart = true;
        }
        if (i <= dVar.c) {
            return true;
        }
        setDoNotExecute(true);
        return !this.hasKeyStart;
    }
}
