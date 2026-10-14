package cn.mucang.android.jiakaoyi.examk2.rule.cefangtingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.a;
import cn.mucang.android.jiakaoyi.examk2.config.K2CeFangTingCheConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_CeFangTingChe_304113_Event extends d<K2CeFangTingCheConfig> {
    public K2_CeFangTingChe_304113_Event(K2CeFangTingCheConfig k2CeFangTingCheConfig, Deduct deduct) {
        super(k2CeFangTingCheConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2CeFangTingCheConfig) this.config).p406125.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        SubStep subStep;
        Gear gear;
        cn.mucang.android.jiakaoyi.examk2.collision.b bVar2 = (cn.mucang.android.jiakaoyi.examk2.collision.b) ((a) bVar.f()).f3279a;
        CarModel carModelD = eVar.d();
        if (bVar2.f3695f && (((subStep = bVar2.r) == SubStep.Step3 || subStep == SubStep.Step4) && (gear = carModelD.m) != Gear.GearN && gear != Gear.GearBack)) {
            setDoNotExecute(true);
            if (carModelD.j(Light.TurnLeftLight) || carModelD.j(Light.TurnRightLight)) {
                return false;
            }
        }
        return true;
    }
}
