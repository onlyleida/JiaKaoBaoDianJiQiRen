package cn.mucang.android.jiakaoyi.exam.k3.rule.jiajiandang;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3JiaJianDangStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.JiaJianDangStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GearSpeedMatcherSmall;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_JiaJianDang_112104_Event extends d<K3JiaJianDangStepConfig> {
    private GearSpeedMatcherSmall g1;
    private GearSpeedMatcherSmall g2;
    private GearSpeedMatcherSmall g3;
    private GearSpeedMatcherSmall g4;
    private GearSpeedMatcherSmall g5;
    private K3GlobalStepConfig globalStepConfig;

    public K3_JiaJianDang_112104_Event(K3JiaJianDangStepConfig k3JiaJianDangStepConfig, Deduct deduct) {
        super(k3JiaJianDangStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x() || eVar.d().f5267e) {
            return true;
        }
        JiaJianDangStateData jiaJianDangStateData = (JiaJianDangStateData) bVar.f();
        if (eVar.d().c() && eVar.d().b > BitmapDescriptorFactory.HUE_RED && !jiaJianDangStateData.carStop) {
            return this.g1.match(eVar, examProcessor) && this.g2.match(eVar, examProcessor) && this.g3.match(eVar, examProcessor) && this.g4.match(eVar, examProcessor) && this.g5.match(eVar, examProcessor);
        }
        this.g1.reset();
        this.g2.reset();
        this.g3.reset();
        this.g4.reset();
        this.g5.reset();
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        K3GlobalStepConfig k3GlobalStepConfig = (K3GlobalStepConfig) examProcessor.f3104a.m.getConfig(Step.K3_Global);
        this.globalStepConfig = k3GlobalStepConfig;
        Gear gear = Gear.Gear1;
        T t = this.config;
        this.g1 = new GearSpeedMatcherSmall(gear, ((K3JiaJianDangStepConfig) t).p212132, ((K3JiaJianDangStepConfig) t).p212151, k3GlobalStepConfig.p200178);
        Gear gear2 = Gear.Gear2;
        T t2 = this.config;
        this.g2 = new GearSpeedMatcherSmall(gear2, ((K3JiaJianDangStepConfig) t2).p212133, ((K3JiaJianDangStepConfig) t2).p212151, this.globalStepConfig.p200178);
        Gear gear3 = Gear.Gear3;
        T t3 = this.config;
        this.g3 = new GearSpeedMatcherSmall(gear3, ((K3JiaJianDangStepConfig) t3).p212134, ((K3JiaJianDangStepConfig) t3).p212151, this.globalStepConfig.p200178);
        Gear gear4 = Gear.Gear4;
        T t4 = this.config;
        this.g4 = new GearSpeedMatcherSmall(gear4, ((K3JiaJianDangStepConfig) t4).p212135, ((K3JiaJianDangStepConfig) t4).p212151, this.globalStepConfig.p200178);
        Gear gear5 = Gear.Gear5;
        T t5 = this.config;
        this.g5 = new GearSpeedMatcherSmall(gear5, ((K3JiaJianDangStepConfig) t5).p212136, ((K3JiaJianDangStepConfig) t5).p212151, this.globalStepConfig.p200178);
    }
}
