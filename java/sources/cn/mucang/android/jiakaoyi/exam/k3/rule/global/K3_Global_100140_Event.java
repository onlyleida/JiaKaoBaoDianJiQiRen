package cn.mucang.android.jiakaoyi.exam.k3.rule.global;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3GlobalStepConfig;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class K3_Global_100140_Event extends d<K3GlobalStepConfig> {
    private float lastSpeed;
    private boolean needCheck;
    private long startTime;
    private int thresholdSpeed;
    private int thresholdTime;

    /* JADX WARN: Multi-variable type inference failed */
    public K3_Global_100140_Event(K3GlobalStepConfig k3GlobalStepConfig, Deduct deduct) {
        super(k3GlobalStepConfig, deduct);
        this.startTime = -1L;
        this.lastSpeed = -1.0f;
        this.thresholdTime = 3;
        this.thresholdSpeed = 15;
        this.needCheck = true;
        String[] strArrSplit = ((String) k3GlobalStepConfig.p200262.value).split("\\*");
        if (strArrSplit.length == 2) {
            try {
                this.thresholdTime = Integer.parseInt(strArrSplit[0]);
                this.thresholdSpeed = Integer.parseInt(strArrSplit[1]);
            } catch (Exception e2) {
                e2.printStackTrace();
                f.o("config.p200262 配置错误：" + ((String) k3GlobalStepConfig.p200262.value));
                u.h("200262 配置错误：" + ((String) k3GlobalStepConfig.p200262.value));
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        CarModel carModelD = eVar.d();
        if (!carModelD.f5269g) {
            this.startTime = examProcessor.i;
            this.lastSpeed = carModelD.b;
            return true;
        }
        long j = examProcessor.i;
        if (j - this.startTime > ((long) this.thresholdTime) * 1000 || this.lastSpeed - carModelD.b < this.thresholdSpeed) {
            return true;
        }
        this.startTime = j;
        this.lastSpeed = carModelD.c;
        return false;
    }
}
