package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.exam.k3.helper.GearSpeedMatcherSmall;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100194_Event extends d<K3GlobalStepConfig> {
    private GearSpeedMatcherSmall g1;
    private GearSpeedMatcherSmall g2;
    private GearSpeedMatcherSmall g3;
    private GearSpeedMatcherSmall g4;
    private GearSpeedMatcherSmall g5;

    public K3_Global_100194_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x() || eVar.d().f5267e) {
            return true;
        }
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        if (!eVar.d().c() || eVar.d().b <= BitmapDescriptorFactory.HUE_RED || globalStateData.carStop) {
            this.g1.reset();
            this.g2.reset();
            this.g3.reset();
            this.g4.reset();
            this.g5.reset();
            return true;
        }
        if (!examProcessor.n.b(ConflictSignal.GearSpeedNotMatch)) {
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
        Gear gear = Gear.Gear1;
        T t = this.config;
        this.g1 = new GearSpeedMatcherSmall(gear, ((K3GlobalStepConfig) t).p200108, ((K3GlobalStepConfig) t).p200182, ((K3GlobalStepConfig) t).p200178);
        Gear gear2 = Gear.Gear2;
        T t2 = this.config;
        this.g2 = new GearSpeedMatcherSmall(gear2, ((K3GlobalStepConfig) t2).p200109, ((K3GlobalStepConfig) t2).p200182, ((K3GlobalStepConfig) t2).p200178);
        Gear gear3 = Gear.Gear3;
        T t3 = this.config;
        this.g3 = new GearSpeedMatcherSmall(gear3, ((K3GlobalStepConfig) t3).p200110, ((K3GlobalStepConfig) t3).p200182, ((K3GlobalStepConfig) t3).p200178);
        Gear gear4 = Gear.Gear4;
        T t4 = this.config;
        this.g4 = new GearSpeedMatcherSmall(gear4, ((K3GlobalStepConfig) t4).p200111, ((K3GlobalStepConfig) t4).p200182, ((K3GlobalStepConfig) t4).p200178);
        Gear gear5 = Gear.Gear5;
        T t5 = this.config;
        this.g5 = new GearSpeedMatcherSmall(gear5, ((K3GlobalStepConfig) t5).p200112, ((K3GlobalStepConfig) t5).p200182, ((K3GlobalStepConfig) t5).p200178);
    }
}
