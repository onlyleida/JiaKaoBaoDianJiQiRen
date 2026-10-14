package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.PressLineType;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.helper.CarStoppedChecker;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100132_Event extends d<K3GlobalStepConfig> {
    private long banMaStartTime;
    private final CarStoppedChecker carStoppedChecker;
    private long gridStartTime;
    private boolean isPressLine;
    private long jinTingStartTime;

    public K3_Global_100132_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.jinTingStartTime = 0L;
        this.banMaStartTime = 0L;
        this.gridStartTime = 0L;
        this.carStoppedChecker = new CarStoppedChecker(BitmapDescriptorFactory.HUE_RED, 1000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        boolean zOnCheck = this.carStoppedChecker.onCheck(eVar);
        if (examProcessor.y(Step.K3_TeShuQuYu) && examProcessor.n.b(ConflictSignal.PressFullLine)) {
            this.jinTingStartTime = 0L;
            this.banMaStartTime = 0L;
            this.gridStartTime = 0L;
            this.isPressLine = false;
            return true;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            if (eVar.d().M != 3) {
                return !this.isPressLine;
            }
            if (zOnCheck) {
                if (this.jinTingStartTime == 0) {
                    this.jinTingStartTime = eVar.d().L;
                }
                if (this.banMaStartTime == 0) {
                    this.banMaStartTime = eVar.d().L;
                }
                if (this.gridStartTime == 0) {
                    this.gridStartTime = eVar.d().L;
                }
                if (this.jinTingStartTime > 0 && eVar.d().L - this.jinTingStartTime > ((Integer) ((K3GlobalStepConfig) this.config).p200223.value).intValue() * 1000 && K3CollisionManager.getInstance().checkPressLine(eVar, examProcessor, true, PressLineType.PressJinTingArea) != null) {
                    this.isPressLine = true;
                    return false;
                }
                if (this.banMaStartTime > 0) {
                    if (examProcessor.n.b(ConflictSignal.PressBanMaLine)) {
                        this.banMaStartTime = 0L;
                        return true;
                    }
                    if (eVar.d().L - this.banMaStartTime > ((Integer) ((K3GlobalStepConfig) this.config).p200224.value).intValue() * 1000 && K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressBanMaLine)) {
                        this.isPressLine = true;
                        return false;
                    }
                }
                if (this.gridStartTime <= 0 || eVar.d().L - this.gridStartTime <= ((Integer) ((K3GlobalStepConfig) this.config).p200225.value).intValue() * 1000 || !K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressGridLine)) {
                    this.isPressLine = false;
                    return true;
                }
                this.isPressLine = true;
                return false;
            }
            this.jinTingStartTime = 0L;
            this.banMaStartTime = 0L;
            this.gridStartTime = 0L;
            this.isPressLine = false;
        }
        return true;
    }
}
