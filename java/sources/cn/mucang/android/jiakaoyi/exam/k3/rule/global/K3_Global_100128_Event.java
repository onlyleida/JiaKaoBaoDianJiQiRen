package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3ChaoCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100128_Event extends d<K3GlobalStepConfig> {
    private boolean beforePressLineTurnLightOn;
    private K3ChaoCheStepConfig chaoCheStepConfig;
    private boolean isDeduct;
    private boolean isInit;
    private boolean lastPressLine;
    private float pressLineStartDistance;
    private long pressLineStartTime;
    private float startDistance;
    private long startTime;

    public K3_Global_100128_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.startTime = 0L;
        this.startDistance = BitmapDescriptorFactory.HUE_RED;
        this.beforePressLineTurnLightOn = false;
        this.pressLineStartTime = 0L;
        this.pressLineStartDistance = BitmapDescriptorFactory.HUE_RED;
        this.lastPressLine = false;
        this.isDeduct = false;
    }

    private void reset() {
        this.startTime = 0L;
        this.startDistance = BitmapDescriptorFactory.HUE_RED;
        this.pressLineStartTime = 0L;
        this.pressLineStartDistance = BitmapDescriptorFactory.HUE_RED;
        this.isDeduct = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        K3ChaoCheStepConfig k3ChaoCheStepConfig;
        boolean z = eVar.d().j(Light.TurnLeftLight) || eVar.d().j(Light.TurnRightLight);
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().h()) {
            boolean zIsPressLine = K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressDashLine);
            if (!this.isInit) {
                this.isInit = true;
                this.beforePressLineTurnLightOn = z;
                this.lastPressLine = zIsPressLine;
                return true;
            }
            if (!this.lastPressLine && !zIsPressLine) {
                this.beforePressLineTurnLightOn = z;
            }
            if (this.chaoCheStepConfig == null) {
                this.chaoCheStepConfig = (K3ChaoCheStepConfig) examProcessor.r(Step.K3_ChaoChe);
            }
            if (zIsPressLine) {
                if (this.pressLineStartTime == 0) {
                    this.pressLineStartTime = examProcessor.i;
                }
                if (this.pressLineStartDistance == BitmapDescriptorFactory.HUE_RED) {
                    this.pressLineStartDistance = eVar.d().C;
                }
                if (examProcessor.y(Step.K3_ChaoChe) && (k3ChaoCheStepConfig = this.chaoCheStepConfig) != null && ((Boolean) k3ChaoCheStepConfig.p206156.value).booleanValue()) {
                    if (this.startTime == 0) {
                        this.startTime = examProcessor.i;
                    }
                    if (this.startDistance == BitmapDescriptorFactory.HUE_RED) {
                        this.startDistance = eVar.d().C;
                    }
                    if (!this.isDeduct) {
                        this.isDeduct = examProcessor.i - this.startTime > ((long) (((Integer) this.chaoCheStepConfig.p206157.value).intValue() * 1000)) || eVar.d().C - this.startDistance > ((float) ((Integer) this.chaoCheStepConfig.p206158.value).intValue());
                    }
                } else if (!this.beforePressLineTurnLightOn) {
                    reset();
                } else if (!this.isDeduct) {
                    this.isDeduct = eVar.d().L - this.pressLineStartTime > ((long) (((Integer) ((K3GlobalStepConfig) this.config).p200170.value).intValue() * 1000)) || eVar.d().C - this.pressLineStartDistance > ((float) ((Integer) ((K3GlobalStepConfig) this.config).p200227.value).intValue());
                }
            } else {
                reset();
            }
            this.lastPressLine = zIsPressLine;
        }
        if (examProcessor.n.b(ConflictSignal.PressDashLine)) {
            reset();
        }
        return !this.isDeduct;
    }
}
