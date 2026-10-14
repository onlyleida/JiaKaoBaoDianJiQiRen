package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100186_Event extends d<K3GlobalStepConfig> {
    public K3_Global_100186_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.c.g.b.C0119b c0119bD = eVar.b().d(Gear.Gear1);
        cn.mucang.android.jiakaoyi.signal.c.g.b.C0119b c0119bD2 = eVar.b().d(Gear.Gear2);
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = c0119bD == null ? BitmapDescriptorFactory.HUE_RED : c0119bD.n;
        if (c0119bD2 != null) {
            f2 = c0119bD2.n;
        }
        return f3 + f2 <= ((float) ((Integer) ((K3GlobalStepConfig) this.config).p200123.value).intValue());
    }
}
