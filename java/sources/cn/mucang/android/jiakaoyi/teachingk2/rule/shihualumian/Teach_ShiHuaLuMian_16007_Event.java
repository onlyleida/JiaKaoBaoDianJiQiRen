package cn.mucang.android.jiakaoyi.teachingk2.rule.shihualumian;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_ShiHuaLuMian_16007_Event extends d<SimpleTeachingConfig> {
    public Teach_ShiHuaLuMian_16007_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        CarModel carModelD = eVar.d();
        setDoNotExecute(true);
        return (carModelD.j(Light.WarningLight) || carModelD.j(Light.FrontFogLight) || carModelD.j(Light.RearFogLight) || carModelD.j(Light.NearLight) || carModelD.j(Light.FarLight)) ? false : true;
    }
}
