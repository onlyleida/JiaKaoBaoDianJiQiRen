package cn.mucang.android.jiakaoyi.examk2.rule.suidao;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2SuiDaoConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SuiDao_312113_Event extends d<K2SuiDaoConfig> {
    private boolean hasOpenLight;

    public K2_SuiDao_312113_Event(K2SuiDaoConfig k2SuiDaoConfig, Deduct deduct) {
        super(k2SuiDaoConfig, deduct);
        this.hasOpenLight = false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.hasOpenLight && !eVar.d().j(Light.NearLight) && !eVar.d().j(Light.FarLight)) {
            this.hasOpenLight = false;
            return false;
        }
        if (!this.hasOpenLight && (eVar.d().j(Light.NearLight) || eVar.d().j(Light.FarLight))) {
            this.hasOpenLight = true;
        }
        return true;
    }
}
