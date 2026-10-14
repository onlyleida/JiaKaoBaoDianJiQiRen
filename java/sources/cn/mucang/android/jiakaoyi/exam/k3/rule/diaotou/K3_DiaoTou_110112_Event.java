package cn.mucang.android.jiakaoyi.exam.k3.rule.diaotou;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DiaoTouStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.DiaoTouStateData;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class K3_DiaoTou_110112_Event extends d<K3DiaoTouStepConfig> {
    public K3_DiaoTou_110112_Event(K3DiaoTouStepConfig k3DiaoTouStepConfig, Deduct deduct) {
        super(k3DiaoTouStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        DiaoTouStateData diaoTouStateData = (DiaoTouStateData) bVar.f();
        if (diaoTouStateData.isLeftDiaoTou) {
            if (eVar.d().D - diaoTouStateData.startAngel > 50.0f) {
                f.o("110112 " + diaoTouStateData.isLeftDiaoTou + " ; start " + diaoTouStateData.state + " ; gyroAngel " + eVar.d().D + " ; startAngel " + diaoTouStateData.startAngel + " ; diffAngel " + (eVar.d().D - diaoTouStateData.startAngel) + " ; distance " + (eVar.d().C - diaoTouStateData.startEstimateDistance));
                setDoNotExecute(true);
                u.h("检测到右转");
                return false;
            }
        } else if (eVar.d().D - diaoTouStateData.startAngel < -50.0f) {
            f.o("110112 " + diaoTouStateData.isLeftDiaoTou + " ; start " + diaoTouStateData.state + " ; gyroAngel " + eVar.d().D + " ; startAngel " + diaoTouStateData.startAngel + " ; diffAngel " + (eVar.d().D - diaoTouStateData.startAngel) + " ; distance " + (eVar.d().C - diaoTouStateData.startEstimateDistance));
            setDoNotExecute(true);
            u.h("检测到左转");
            return false;
        }
        if (!bVar.j()) {
            return true;
        }
        f.o("结束项目 " + diaoTouStateData.state);
        return diaoTouStateData.state == DiaoTouStateData.State.after;
    }
}
