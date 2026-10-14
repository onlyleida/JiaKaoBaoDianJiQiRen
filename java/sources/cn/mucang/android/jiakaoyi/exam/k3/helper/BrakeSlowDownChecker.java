package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class BrakeSlowDownChecker {
    private FootBrakeValidChecker brakeValidChecker;
    private FootBrakeDotDisHelper footBrakeDotDisHelper;
    private final JudgeMode judgeMode;
    private final float judgeSpeed;
    private final float targetDistance;
    private boolean isPressStopLine = false;
    private float footerBrakeDistance = BitmapDescriptorFactory.HUE_RED;
    private boolean hasJudgeMethodError = false;
    private boolean isOverSpeed = false;
    public boolean hasValidBrake = false;
    private boolean isValidBrakeOn = false;

    public enum JudgeMode {
        StopLine,
        Distance,
        StopLineOrDistance,
        BrakePoint
    }

    public BrakeSlowDownChecker(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, float f2, JudgeMode judgeMode, float f3) {
        this.targetDistance = f2;
        this.judgeMode = judgeMode;
        this.judgeSpeed = f3;
        cn.mucang.android.jiakaoyi.engine.i.c.b bVar2 = bVar.f3143f;
        if (bVar2 == null || !k.c(bVar2.b)) {
            return;
        }
        this.footBrakeDotDisHelper = new FootBrakeDotDisHelper(bVar2);
    }

    private boolean distanceJudge(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (this.isValidBrakeOn && eVar.d().b >= this.judgeSpeed) {
            this.hasValidBrake = true;
            return true;
        }
        if (this.hasValidBrake) {
            return false;
        }
        if (eVar.d().C < this.targetDistance && !bVar.j()) {
            return false;
        }
        if (bVar.f3143f != null) {
            f.o("距离评判刹车扣分 , stepEvent.stepInfo  " + bVar.f3143f.f3084d + " ; isEnd " + bVar.j() + ";targetDistance " + this.targetDistance + " ; currentDistance " + eVar.d().C);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean stopLineJudge(e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        if (!this.isPressStopLine && K3CollisionManager.getInstance().isPressStopLine(eVar, examProcessor, true)) {
            this.isPressStopLine = true;
        }
        if (this.isValidBrakeOn && eVar.d().b >= this.judgeSpeed) {
            this.footerBrakeDistance = this.brakeValidChecker.getJudgeBrakeDistance(eVar);
        }
        if (this.isPressStopLine) {
            if (this.footerBrakeDistance <= BitmapDescriptorFactory.HUE_RED) {
                this.hasValidBrake = false;
            } else {
                this.hasValidBrake = eVar.d().C - this.footerBrakeDistance <= ((float) ((Integer) ((K3GlobalStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_Global)).p200187.value).intValue());
            }
            return true;
        }
        if (!bVar.j()) {
            return false;
        }
        this.hasValidBrake = this.footerBrakeDistance > BitmapDescriptorFactory.HUE_RED;
        if (bVar.f3143f != null) {
            f.o("还未到停止线项目就结束 , stepEvent.stepInfo  " + bVar.f3143f.f3084d + " ; hasFootBrake " + this.hasValidBrake);
        }
        return true;
    }

    public boolean check(e eVar, ExamProcessor examProcessor, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar) {
        if (!this.isOverSpeed && eVar.d().b >= this.judgeSpeed) {
            this.isOverSpeed = true;
        }
        if (this.brakeValidChecker == null) {
            this.brakeValidChecker = new FootBrakeValidChecker((K3GlobalStepConfig) examProcessor.r(Step.K3_Global));
        }
        boolean zCheck = this.brakeValidChecker.check(eVar);
        this.isValidBrakeOn = zCheck;
        JudgeMode judgeMode = this.judgeMode;
        boolean z = false;
        if (judgeMode == JudgeMode.StopLineOrDistance || judgeMode == JudgeMode.StopLine) {
            if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
                if (this.judgeMode == JudgeMode.StopLine) {
                    return stopLineJudge(eVar, bVar, examProcessor);
                }
                return stopLineJudge(eVar, bVar, examProcessor) || distanceJudge(eVar, bVar);
            }
            if (!this.hasJudgeMethodError) {
                this.hasJudgeMethodError = true;
                u.h("选择了用停止线线评判刹车 但是不是高精度");
                f.o("选择了用停止线线评判刹车 但是不是高精度");
            }
        } else {
            if (judgeMode == JudgeMode.Distance) {
                return distanceJudge(eVar, bVar);
            }
            if (judgeMode == JudgeMode.BrakePoint) {
                if (this.footBrakeDotDisHelper != null) {
                    if (zCheck && eVar.d().b >= this.judgeSpeed) {
                        this.footerBrakeDistance = this.brakeValidChecker.getJudgeBrakeDistance(eVar);
                    }
                    if (eVar.d().b >= this.judgeSpeed) {
                        if (this.footBrakeDotDisHelper.checkFootBrake(eVar)) {
                            if (this.footerBrakeDistance > BitmapDescriptorFactory.HUE_RED && eVar.d().C - this.footerBrakeDistance <= this.footBrakeDotDisHelper.getBrakeDistance()) {
                                z = true;
                            }
                            this.hasValidBrake = z;
                            return true;
                        }
                        if (bVar.j()) {
                            if (bVar.f3143f != null) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("还未到刹车点项目结束 , stepEvent.stepInfo  ");
                                sb.append(bVar.f3143f.f3084d);
                                sb.append(" ; ");
                                sb.append(bVar.f3143f.c);
                                sb.append(" ; hasFootBrake ");
                                sb.append(this.footerBrakeDistance > BitmapDescriptorFactory.HUE_RED);
                                f.o(sb.toString());
                            }
                            this.hasValidBrake = this.footerBrakeDistance > BitmapDescriptorFactory.HUE_RED;
                            return true;
                        }
                    }
                } else if (!this.hasJudgeMethodError) {
                    this.hasJudgeMethodError = true;
                    u.h("选择使用刹车点评判 但是没有采集刹车点");
                    f.o("选择使用刹车点评判 但是没有采集刹车点");
                }
            }
        }
        return false;
    }

    public boolean hasValidBrake() {
        return this.footerBrakeDistance > BitmapDescriptorFactory.HUE_RED;
    }

    public boolean judgeDeduct() {
        if (this.isOverSpeed) {
            return this.hasValidBrake;
        }
        return true;
    }
}
