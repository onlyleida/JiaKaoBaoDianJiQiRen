package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100121_Event extends d<K3GlobalStepConfig> {
    private long checkStartTime;
    private boolean lastHasRunningTurnLightStep;
    private boolean lastStepRunning;
    private boolean needCheckTurnLight;

    public K3_Global_100121_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.lastHasRunningTurnLightStep = false;
        this.needCheckTurnLight = false;
        this.checkStartTime = 0L;
        this.lastStepRunning = true;
    }

    private boolean hasTurnLightStepRunning(List<b> list) {
        if (list.isEmpty()) {
            return false;
        }
        Iterator<b> it = list.iterator();
        while (it.hasNext()) {
            Step step = it.next().f3142e;
            if (step == Step.K3_QiBu || step == Step.K3_LuKouZuoZhuan || step == Step.K3_LuKouYouZhuan || step == Step.K3_BianDao || step == Step.K3_ChaoChe || step == Step.K3_DiaoTou || step == Step.K3_LinTing || step == Step.K3_HuanDao || step == Step.K3_BianDaoChaoChe || step == Step.K3_TingChe) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        List<b> listQ = examProcessor.q();
        boolean z = listQ.size() > 0;
        boolean z2 = !this.lastStepRunning && z;
        this.lastStepRunning = z;
        boolean zHasTurnLightStepRunning = hasTurnLightStepRunning(listQ);
        if (zHasTurnLightStepRunning) {
            this.needCheckTurnLight = false;
            this.checkStartTime = 0L;
        } else {
            if (this.lastHasRunningTurnLightStep) {
                this.needCheckTurnLight = eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight);
            }
            if (z2) {
                this.needCheckTurnLight = false;
                this.checkStartTime = 0L;
            }
            if (this.needCheckTurnLight) {
                if (this.checkStartTime == 0) {
                    this.checkStartTime = eVar.d().L;
                }
                if (!(eVar.d().j(Light.TurnRightLight) || eVar.d().j(Light.TurnLeftLight))) {
                    this.needCheckTurnLight = false;
                    this.checkStartTime = 0L;
                } else if (eVar.d().L - this.checkStartTime > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                    this.needCheckTurnLight = false;
                    this.checkStartTime = 0L;
                    this.lastHasRunningTurnLightStep = false;
                    return false;
                }
            }
        }
        this.lastHasRunningTurnLightStep = zHasTurnLightStepRunning;
        return true;
    }
}
