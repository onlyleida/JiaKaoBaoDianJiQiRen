package cn.mucang.android.jiakaoyi.exam.k3.rule.jiajiandang;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.JiaJianDangStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GearSpeedMatcherBig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JiaJianDang_112110_Event extends d<K3JiaJianDangStepConfig> {
    private K3GlobalStepConfig globalStepConfig;
    private GearSpeedMatcherBig matcher;

    public K3_JiaJianDang_112110_Event(K3JiaJianDangStepConfig k3JiaJianDangStepConfig, Deduct deduct) {
        super(k3JiaJianDangStepConfig, deduct);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x() || eVar.d().f5267e) {
            return true;
        }
        JiaJianDangStateData jiaJianDangStateData = (JiaJianDangStateData) bVar.f();
        if (!eVar.d().c() || eVar.d().b <= BitmapDescriptorFactory.HUE_RED || jiaJianDangStateData.carStop) {
            this.matcher.reset();
            return true;
        }
        boolean zMatch = this.matcher.match(eVar, examProcessor);
        if (((Boolean) this.globalStepConfig.p200179.value).booleanValue() && !zMatch) {
            setDoNotExecute(true);
        }
        return zMatch;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        K3GlobalStepConfig k3GlobalStepConfig = (K3GlobalStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_Global);
        this.globalStepConfig = k3GlobalStepConfig;
        Gear gear = Gear.Gear2;
        T t = this.config;
        this.matcher = new GearSpeedMatcherBig(gear, ((K3JiaJianDangStepConfig) t).p212133, ((K3JiaJianDangStepConfig) t).p212152, k3GlobalStepConfig.p200178);
    }
}
