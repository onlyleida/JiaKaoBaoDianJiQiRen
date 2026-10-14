package cn.mucang.android.jiakaoyi.examk2.rule.shangpoqibu;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.b.k;
import cn.mucang.android.jiakaoyi.examk2.collision.ShangPoChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2ShangPoQiBuConfig;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.SubStep;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_ShangPoQiBu_302119_Event extends d<K2ShangPoQiBuConfig> {
    private float initDistance;

    public K2_ShangPoQiBu_302119_Event(K2ShangPoQiBuConfig k2ShangPoQiBuConfig, Deduct deduct) {
        super(k2ShangPoQiBuConfig, deduct);
        this.initDistance = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        k kVar = (k) bVar.f();
        if (kVar.f3282f) {
            return true;
        }
        if (((ShangPoChecker) kVar.f3279a).r == SubStep.Step2 && eVar.d().c()) {
            if (eVar.d().f5268f) {
                if (this.initDistance > BitmapDescriptorFactory.HUE_RED && eVar.d().B - this.initDistance <= ((Integer) ((K2ShangPoQiBuConfig) this.config).p404129.value).intValue() / 100.0f) {
                    this.initDistance = BitmapDescriptorFactory.HUE_RED;
                    return false;
                }
            } else if (this.initDistance == BitmapDescriptorFactory.HUE_RED) {
                this.initDistance = eVar.d().B;
            }
        }
        if (!((ShangPoChecker) kVar.f3279a).b || this.initDistance <= BitmapDescriptorFactory.HUE_RED || eVar.d().B - this.initDistance > ((Integer) ((K2ShangPoQiBuConfig) this.config).p404129.value).intValue() / 100.0f) {
            return true;
        }
        this.initDistance = BitmapDescriptorFactory.HUE_RED;
        return false;
    }
}
