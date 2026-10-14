package cn.mucang.android.jiakaoyi.examk2.rule.squxian;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.engine.trace.model.DeductExtraData;
import cn.mucang.android.jiakaoyi.examk2.b.j;
import cn.mucang.android.jiakaoyi.examk2.collision.g;
import cn.mucang.android.jiakaoyi.examk2.config.K2SQuXianStepConfig;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K2_SQuXian_303103_Event extends d<K2SQuXianStepConfig> {
    private boolean hasLeave;
    private float lastCurrentDistance;

    public K2_SQuXian_303103_Event(K2SQuXianStepConfig k2SQuXianStepConfig, Deduct deduct) {
        super(k2SQuXianStepConfig, deduct);
        this.lastCurrentDistance = BitmapDescriptorFactory.HUE_RED;
        this.hasLeave = true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected DeductExtraData deductExtraData(e eVar, ExamProcessor examProcessor, b bVar) {
        C c = ((j) bVar.f()).f3279a;
        return ((g) c).h(((g) c).t.wheel, eVar);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (((g) ((j) bVar.f()).f3279a).t == Wheel.None) {
            this.hasLeave = true;
            return true;
        }
        if (!this.hasLeave || eVar.d().B - this.lastCurrentDistance <= 0.1d) {
            this.hasLeave = false;
            return true;
        }
        this.lastCurrentDistance = eVar.d().B;
        return false;
    }
}
