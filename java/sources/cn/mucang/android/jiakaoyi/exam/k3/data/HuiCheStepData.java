package cn.mucang.android.jiakaoyi.exam.k3.data;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.exam.k3.busmodel.SideDistanceState;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.FootBrakeValidChecker;
import cn.mucang.android.jiakaoyi.exam.k3.helper.FootBrakeVoiceHelper;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.signal.c.e;

/* JADX INFO: loaded from: classes2.dex */
public class HuiCheStepData extends K3BaseStepData<K3HuiCheStepConfig> {
    private FootBrakeValidChecker brakeValidChecker;
    private FootBrakeVoiceHelper footBrakeVoiceHelper;
    public boolean hadFootBrakeOn;
    public boolean haveThanSpeed;
    private double initDis;
    public double leftDis;
    public boolean needCheckBrake;
    private long reachOffsetStartTime;
    public boolean reachRightOffset;
    public double rightDis;
    public TwoSideOffsetResult zhiXianOffset;

    public HuiCheStepData(K3HuiCheStepConfig k3HuiCheStepConfig) {
        super(k3HuiCheStepConfig);
        int i = cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
        this.initDis = i;
        this.rightDis = i;
        this.leftDis = i;
        this.reachRightOffset = false;
        this.hadFootBrakeOn = false;
        this.reachOffsetStartTime = 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkCarOffset(e eVar) {
        if (!((Boolean) ((K3HuiCheStepConfig) this.config).p207105.value).booleanValue() || this.reachRightOffset) {
            return;
        }
        if (eVar.d().D - this.startAngel >= ((Integer) ((K3HuiCheStepConfig) this.config).p207107.value).intValue()) {
            this.reachRightOffset = true;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().h() && Math.abs(this.rightDis - ((double) cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b)) > 0.001d) {
            if (Math.abs(this.initDis - ((double) cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b)) < 0.001d) {
                double d2 = this.rightDis;
                if (d2 > 0.0d) {
                    this.initDis = d2;
                }
            }
            if (Math.abs(this.initDis - ((double) cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b)) > 0.001d) {
                if (this.initDis - this.rightDis <= ((Integer) ((K3HuiCheStepConfig) this.config).p207135.value).intValue()) {
                    this.reachOffsetStartTime = 0L;
                    return;
                }
                if (this.reachOffsetStartTime == 0) {
                    this.reachOffsetStartTime = eVar.d().L;
                }
                if (eVar.d().L - this.reachOffsetStartTime > 1000) {
                    this.reachRightOffset = true;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkJudgeBrake(e eVar, ExamProcessor examProcessor) {
        this.needCheckBrake = false;
        if (((Boolean) ((K3HuiCheStepConfig) this.config).p207103.value).booleanValue()) {
            if (FootBrakeVoiceHelper.INSTANCE.isSpecialStep()) {
                if (this.footBrakeVoiceHelper == null) {
                    this.footBrakeVoiceHelper = new FootBrakeVoiceHelper();
                }
                this.footBrakeVoiceHelper.checkPlayVoice(eVar.d().f5269g);
            }
            if (this.brakeValidChecker == null) {
                this.brakeValidChecker = new FootBrakeValidChecker((K3GlobalStepConfig) examProcessor.r(Step.K3_Global));
            }
            if (eVar.d().C - this.startEstimateDistance <= ((Integer) ((K3HuiCheStepConfig) this.config).p207109.value).intValue() || eVar.d().b < ((Integer) ((K3HuiCheStepConfig) this.config).p207120.value).intValue()) {
                return;
            }
            if (this.brakeValidChecker.check(eVar)) {
                this.hadFootBrakeOn = true;
            }
            this.haveThanSpeed = true;
            this.needCheckBrake = true;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.data.K3BaseStepData, cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().h()) {
            TwoSideOffsetResult twoSideOffset = K3CollisionManager.getInstance().getTwoSideOffset(eVar);
            this.zhiXianOffset = twoSideOffset;
            K3CollisionModel k3CollisionModel = twoSideOffset.rightLine;
            if (k3CollisionModel != null) {
                double dA = cn.mucang.android.jiakaoyi.k3collect.collision.a.a(k3CollisionModel, eVar.c(), true);
                if (dA != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                    if (dA > 3.0d) {
                        dA -= 3.0d;
                    }
                    this.rightDis = dA;
                }
            }
            K3CollisionModel k3CollisionModel2 = this.zhiXianOffset.leftLine;
            if (k3CollisionModel2 != null) {
                double dA2 = cn.mucang.android.jiakaoyi.k3collect.collision.a.a(k3CollisionModel2, eVar.c(), false);
                if (dA2 != cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b) {
                    if (dA2 > 3.0d) {
                        dA2 -= 3.0d;
                    }
                    this.leftDis = dA2;
                }
            }
            t.a("dsh", "左边距：" + this.leftDis + "cm\n右边距：" + this.rightDis + "cm");
            w.g("左边距：" + w.n(this.leftDis) + "cm，右边距：" + w.n(this.rightDis) + "cm");
            SideDistanceState sideDistanceState = new SideDistanceState();
            sideDistanceState.stepType = Step.K3_HuiChe.type;
            sideDistanceState.rightDis = this.rightDis;
            sideDistanceState.leftDis = this.leftDis;
            LiveBus.d(SideDistanceState.class).l(sideDistanceState);
        }
        checkJudgeBrake(eVar, examProcessor);
        checkCarOffset(eVar);
    }
}
