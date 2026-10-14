package cn.mucang.android.jiakaoyi.examk2.rule.quka;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2QuKaConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;

/* JADX INFO: loaded from: classes2.dex */
public class K2_QuKa_307103_Event extends d<K2QuKaConfig> {
    public K2_QuKa_307103_Event(K2QuKaConfig k2QuKaConfig, Deduct deduct) {
        super(k2QuKaConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        return (eVar.d().m == Gear.GearBack && eVar.d().F == CarModel.Direction.Back) ? false : true;
    }
}
