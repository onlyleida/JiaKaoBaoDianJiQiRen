package cn.mucang.android.jiakaoyi.exam.k3.rule.tingche;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3TingCheStepConfig;
import cn.mucang.android.jiakaoyi.exam.k3.data.TingCheStepData;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class K3_TingChe_116114_Event extends d<K3TingCheStepConfig> {
    private static final int maxCount = 15;
    private LinkedList<Boolean> brakeList;
    private boolean isDoorOpen;
    private boolean isHandbrakeOpen;
    private boolean isReady;

    public K3_TingChe_116114_Event(K3TingCheStepConfig k3TingCheStepConfig, Deduct deduct) {
        super(k3TingCheStepConfig, deduct);
        this.brakeList = new LinkedList<>();
        this.isHandbrakeOpen = true;
        this.isReady = false;
        this.isDoorOpen = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K3TingCheStepConfig) this.config).p216106.value).booleanValue();
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        CarModel carModelD = eVar.d();
        boolean z = carModelD.f5265a > 500;
        if (eVar.d().k() && z) {
            this.brakeList.addFirst(Boolean.valueOf(carModelD.f5268f));
            if (this.brakeList.size() > 15) {
                this.brakeList.removeLast();
            }
        }
        if (this.brakeList.size() == 15) {
            this.isReady = true;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.brakeList.size(); i3++) {
                if (this.brakeList.get(i3).booleanValue()) {
                    i2++;
                } else {
                    i++;
                }
            }
            this.isHandbrakeOpen = i < i2;
        } else {
            this.isReady = false;
        }
        TingCheStepData tingCheStepData = (TingCheStepData) bVar.f();
        if (!this.isDoorOpen && tingCheStepData.state == TingCheStepData.State.OpenDoor) {
            this.isDoorOpen = true;
        }
        if (!this.isDoorOpen || !this.isReady) {
            return true;
        }
        setDoNotExecute(true);
        return !this.isHandbrakeOpen;
    }
}
