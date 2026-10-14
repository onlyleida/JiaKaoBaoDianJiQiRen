package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GearSpeedMatcherBig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100181_Event extends d<K3GlobalStepConfig> {
    private GearSpeedMatcherBig matcher;

    public K3_Global_100181_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x() || eVar.d().f5267e) {
            return true;
        }
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (!eVar.d().c() || eVar.d().b <= BitmapDescriptorFactory.HUE_RED || globalStateData.carStop) {
            this.matcher.reset();
            return true;
        }
        if (examProcessor.n.b(ConflictSignal.GearSpeedNotMatch)) {
            this.matcher.reset();
            return true;
        }
        boolean zMatch = this.matcher.match(eVar, examProcessor);
        if (((Boolean) ((K3GlobalStepConfig) this.config).p200179.value).booleanValue() && !zMatch) {
            setDoNotExecute(true);
        }
        return zMatch;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        Gear gear = Gear.Gear1;
        T t = this.config;
        this.matcher = new GearSpeedMatcherBig(gear, ((K3GlobalStepConfig) t).p200108, ((K3GlobalStepConfig) t).p200183, ((K3GlobalStepConfig) t).p200178);
    }
}
