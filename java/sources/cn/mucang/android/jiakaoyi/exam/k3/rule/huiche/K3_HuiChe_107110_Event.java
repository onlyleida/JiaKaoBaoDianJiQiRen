package cn.mucang.android.jiakaoyi.exam.k3.rule.huiche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.collision.result.TwoSideOffsetResult;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3HuiCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.HuiCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_HuiChe_107110_Event extends d<K3HuiCheStepConfig> {
    private float mLeftDistance;
    private float mRightDistance;
    private float onceReachLeftDistance;
    private float onceReachRightDistance;

    public K3_HuiChe_107110_Event(K3HuiCheStepConfig k3HuiCheStepConfig, Deduct deduct) {
        super(k3HuiCheStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!K3CollisionManager.getInstance().hasHpCollision(eVar)) {
            return true;
        }
        HuiCheStepData huiCheStepData = (HuiCheStepData) bVar.f();
        TwoSideOffsetResult twoSideOffsetResult = huiCheStepData.zhiXianOffset;
        if (twoSideOffsetResult == null || twoSideOffsetResult.rightLine == null) {
            if (this.onceReachRightDistance != BitmapDescriptorFactory.HUE_RED) {
                this.mRightDistance += eVar.d().C - this.onceReachRightDistance;
            }
            this.onceReachRightDistance = BitmapDescriptorFactory.HUE_RED;
        } else {
            double d2 = huiCheStepData.rightDis;
            if (d2 < 0.0d) {
                d2 = 0.0d;
            }
            if (d2 <= ((Integer) ((K3HuiCheStepConfig) this.config).p207119.value).intValue() || d2 > ((K3HuiCheStepConfig) this.config).p207119.value2) {
                if (((Boolean) ((K3HuiCheStepConfig) this.config).p207130.value).booleanValue()) {
                    setDoNotExecute(true);
                    return false;
                }
                if (this.onceReachRightDistance != BitmapDescriptorFactory.HUE_RED) {
                    this.mRightDistance += eVar.d().C - this.onceReachRightDistance;
                }
                this.onceReachRightDistance = BitmapDescriptorFactory.HUE_RED;
            } else if (this.onceReachRightDistance == BitmapDescriptorFactory.HUE_RED) {
                this.onceReachRightDistance = eVar.d().C;
            }
        }
        if (!bVar.j()) {
            return true;
        }
        if (this.onceReachRightDistance != BitmapDescriptorFactory.HUE_RED) {
            this.mRightDistance += eVar.d().C - this.onceReachRightDistance;
        }
        return this.mRightDistance > ((float) ((Integer) ((K3HuiCheStepConfig) this.config).p207121.value).intValue());
    }
}
