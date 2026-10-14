package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3CollisionManager;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.d.i;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100108_Event extends d<K3GlobalStepConfig> {
    private float distance;

    public K3_Global_100108_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.distance = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.p().isAuto()) {
            setDoNotExecute(true);
            return true;
        }
        if (K3CollisionManager.getInstance().hasHpCollision(eVar) && eVar.getCurrentPosition().f5282h != 4) {
            this.distance = BitmapDescriptorFactory.HUE_RED;
        }
        float fIntValue = ((Integer) ((K3GlobalStepConfig) this.config).p200118.value).intValue() + (i.a() ? 10 : 0);
        if (eVar.d().m == Gear.GearN || eVar.d().k) {
            if (this.distance == BitmapDescriptorFactory.HUE_RED) {
                this.distance = eVar.d().C;
            }
            if (eVar.d().C - this.distance > fIntValue && eVar.d().c()) {
                return false;
            }
        } else {
            this.distance = BitmapDescriptorFactory.HUE_RED;
        }
        return true;
    }
}
