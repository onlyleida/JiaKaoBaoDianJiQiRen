package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.signal.utils.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300121_Event extends d<K2GlobalConfig> {
    private long checkTime;
    private boolean noRunning;
    private final List<String> stepList;

    public K2_Global_300121_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.stepList = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.v()) {
            if (this.noRunning) {
                this.noRunning = false;
                this.checkTime = 0L;
            }
            if ((!eVar.d().j(Light.TurnLeftLight) && !eVar.d().j(Light.TurnRightLight)) || this.stepList.contains(String.valueOf(examProcessor.s().f3142e.number))) {
                this.checkTime = 0L;
            } else if (this.checkTime == 0) {
                this.checkTime = examProcessor.i;
            }
        } else if (h.a(eVar.d().x)) {
            this.checkTime = 0L;
        } else {
            if (this.checkTime == 0) {
                this.checkTime = examProcessor.i;
            }
            this.noRunning = true;
        }
        long j = this.checkTime;
        return j <= 0 || examProcessor.i - j <= ((long) (((Integer) ((K2GlobalConfig) this.config).p401111.value).intValue() * 1000));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        this.stepList.addAll(Arrays.asList(((String) ((K2GlobalConfig) this.config).p401167.value).split("-")));
    }
}
