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
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100203_Event extends d<K3GlobalStepConfig> {
    private boolean isDeduct;
    private float pressLineStartDistance;
    private long pressLineStartTime;

    public K3_Global_100203_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.pressLineStartTime = 0L;
        this.pressLineStartDistance = BitmapDescriptorFactory.HUE_RED;
        this.isDeduct = false;
    }

    private void reset() {
        this.pressLineStartTime = 0L;
        this.pressLineStartDistance = BitmapDescriptorFactory.HUE_RED;
        this.isDeduct = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.n.b(ConflictSignal.PressFullLine)) {
            reset();
            return !this.isDeduct;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.d().h()) {
            if (!K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressNonMotorVehicleLine)) {
                reset();
            } else if (((Boolean) ((K3GlobalStepConfig) this.config).p200196.value).booleanValue() && (examProcessor.y(Step.K3_QiBu) || examProcessor.y(Step.K3_TingChe))) {
                if (this.pressLineStartDistance == BitmapDescriptorFactory.HUE_RED) {
                    this.pressLineStartDistance = eVar.d().C;
                }
                if (this.pressLineStartTime == 0) {
                    this.pressLineStartTime = eVar.d().L;
                }
                this.isDeduct = eVar.d().C - this.pressLineStartDistance > ((float) ((Integer) ((K3GlobalStepConfig) this.config).p200211.value).intValue()) || eVar.d().L - this.pressLineStartTime > ((long) (((Integer) ((K3GlobalStepConfig) this.config).p200212.value).intValue() * 1000));
            } else {
                this.pressLineStartTime = 0L;
                this.pressLineStartDistance = BitmapDescriptorFactory.HUE_RED;
                this.isDeduct = true;
            }
        }
        return !this.isDeduct;
    }
}
