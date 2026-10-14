package cn.mucang.android.jiakaoyi.teachingk2.rule.zhijiaozhuanwan;

import cn.mucang.android.jiakaoyi.engine.config.SimpleTeachingConfig;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.y0.b.l;

/* JADX INFO: loaded from: classes4.dex */
public class Teach_ZhiJiaoZhuanWan_14001_Event extends d<SimpleTeachingConfig> {
    public Teach_ZhiJiaoZhuanWan_14001_Event(SimpleTeachingConfig simpleTeachingConfig, Deduct deduct) {
        super(simpleTeachingConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        l lVar = (l) bVar.f();
        if (((cn.mucang.android.jiakaoyi.teachingk2.s0.l) lVar.f8776a).s) {
            setDoNotExecute(true);
            if (!eVar.d().j(Light.TurnLeftLight) && !eVar.d().j(Light.TurnRightLight)) {
                lVar.b = true;
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
    }
}
