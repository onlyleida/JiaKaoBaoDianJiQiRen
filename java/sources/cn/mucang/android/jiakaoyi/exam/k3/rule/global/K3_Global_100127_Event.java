package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
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
public class K3_Global_100127_Event extends d<K3GlobalStepConfig> {
    private boolean isDeduct;
    private float startDistance;
    private long startTime;

    public K3_Global_100127_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.isDeduct = false;
    }

    private void reset() {
        this.startTime = 0L;
        this.startDistance = BitmapDescriptorFactory.HUE_RED;
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
            if (K3CollisionManager.getInstance().isPressLine(eVar, examProcessor, true, PressLineType.PressFullLine)) {
                if (this.startTime == 0) {
                    this.startTime = examProcessor.i;
                }
                if (this.startDistance == BitmapDescriptorFactory.HUE_RED) {
                    this.startDistance = eVar.d().C;
                }
                this.isDeduct = examProcessor.i - this.startTime > ((long) (((Integer) ((K3GlobalStepConfig) this.config).p200230.value).intValue() * 1000)) || eVar.d().C - this.startDistance > ((float) ((Integer) ((K3GlobalStepConfig) this.config).p200229.value).intValue());
            } else {
                reset();
            }
        }
        return !this.isDeduct;
    }
}
