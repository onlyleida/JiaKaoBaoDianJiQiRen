package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class StepRecordHelper {
    public cn.mucang.android.jiakaoyi.engine.processor.exam.step.b lastStepHandler;
    private cn.mucang.android.jiakaoyi.engine.processor.exam.step.b tempLastStepHandler;
    public float lastStepEndDistance = -1.0f;
    public long lastStepEndTime = -1;
    private boolean lastFrameHasStepRunning = false;
    private List<cn.mucang.android.jiakaoyi.engine.processor.exam.step.b> lastSteps = new ArrayList();

    public void check(e eVar, ExamProcessor examProcessor) {
        boolean zV = examProcessor.v();
        if ((this.lastFrameHasStepRunning ^ zV) && !zV) {
            this.lastStepEndDistance = eVar.d().C;
            this.lastStepEndTime = examProcessor.i;
            this.lastStepHandler = this.tempLastStepHandler;
        }
        this.lastFrameHasStepRunning = zV;
        this.tempLastStepHandler = examProcessor.s();
    }
}
