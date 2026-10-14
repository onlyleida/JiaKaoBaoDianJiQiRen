package cn.mucang.android.jiakaoyi.examk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.l;
import cn.mucang.android.jiakaoyi.examk2.collision.h;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SuiDao_312102_Event extends d<K2SuiDaoConfig> {
    public K2_SuiDao_312102_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        h hVar = (h) ((l) bVar.f()).f3279a;
        Boolean bool = hVar.z;
        if (bool == null || !bool.booleanValue() || !hVar.x || !hVar.b || ((Integer) ((K2SuiDaoConfig) this.config).p412118.value).intValue() == 1) {
            return true;
        }
        if (((Integer) ((K2SuiDaoConfig) this.config).p412118.value).intValue() == 2 && ((Integer) ((K2SuiDaoConfig) this.config).p412110.value).intValue() == 0) {
            return true;
        }
        setDoNotExecute(true);
        return (eVar.d().j(Light.FarLight) || eVar.d().j(Light.NearLight)) ? false : true;
    }
}
