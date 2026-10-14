package cn.mucang.android.jiakaoyi.teachingk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.s0.j;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.i;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_SuiDao_17013_Event extends d<SimpleTeachingConfig> {
    public Teach_SuiDao_17013_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        i iVar = (i) bVar.f();
        j jVar = (j) iVar.f8776a;
        if (!iVar.c || !jVar.u) {
            return true;
        }
        if (!jVar.y && eVar.d().B - jVar.w < jVar.x) {
            return true;
        }
        if (!(eVar.getCurrentPosition().f5282h == 4 && eVar.d().F == CarModel.Direction.Forward) && eVar.getCurrentPosition().f5282h == 4) {
            return true;
        }
        setDoNotExecute(true);
        return (eVar.d().j(Light.FarLight) || eVar.d().j(Light.NearLight)) ? false : true;
    }
}
