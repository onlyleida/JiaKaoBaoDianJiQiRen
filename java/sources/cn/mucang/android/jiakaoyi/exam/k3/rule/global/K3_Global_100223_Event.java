package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.GlobalStateData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100223_Event extends d<K3GlobalStepConfig> {
    private float gear1StartDistance;
    private float gear1SumDistance;
    private boolean hasInit;
    private boolean hasQiBu;
    private boolean judgeFirst;
    private boolean lastCarStop;
    private boolean noChangeGear;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100223_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.noChangeGear = false;
        this.lastCarStop = false;
        this.hasInit = false;
        this.hasQiBu = false;
        this.judgeFirst = true;
        this.gear1StartDistance = BitmapDescriptorFactory.HUE_RED;
        this.gear1SumDistance = BitmapDescriptorFactory.HUE_RED;
        this.judgeFirst = ((Integer) k3GlobalStepConfig.p200245.value).intValue() > 0;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return this.judgeFirst;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.x()) {
            return true;
        }
        GlobalStateData globalStateData = (GlobalStateData) bVar.f();
        boolean z = eVar.d().m == Gear.Gear2 || eVar.d().m == Gear.Gear3 || eVar.d().m == Gear.Gear4 || eVar.d().m == Gear.Gear5 || eVar.d().m == Gear.Gear6 || eVar.d().m == Gear.GearBack;
        if (!this.hasInit) {
            this.hasInit = true;
            boolean z2 = globalStateData.carStop;
            this.lastCarStop = z2;
            if (!z2) {
                setDoNotExecute(true);
                return true;
            }
        }
        if (this.lastCarStop && !globalStateData.carStop) {
            this.hasQiBu = true;
        }
        if (this.hasQiBu && globalStateData.carStop) {
            setDoNotExecute(true);
            return true;
        }
        if (eVar.d().m == Gear.Gear1) {
            if (this.gear1StartDistance == BitmapDescriptorFactory.HUE_RED) {
                this.gear1StartDistance = eVar.d().C;
            }
            if (this.gear1SumDistance + (eVar.d().C - this.gear1StartDistance) >= ((Integer) ((K3GlobalStepConfig) this.config).p200245.value).intValue()) {
                setDoNotExecute(true);
                return false;
            }
        } else if (!z) {
            if (this.gear1StartDistance != BitmapDescriptorFactory.HUE_RED) {
                this.gear1SumDistance += eVar.d().C - this.gear1StartDistance;
            }
            this.gear1StartDistance = BitmapDescriptorFactory.HUE_RED;
        } else if (!globalStateData.carStop) {
            setDoNotExecute(true);
        }
        if (this.gear1SumDistance < ((Integer) ((K3GlobalStepConfig) this.config).p200245.value).intValue()) {
            return true;
        }
        setDoNotExecute(true);
        return false;
    }
}
