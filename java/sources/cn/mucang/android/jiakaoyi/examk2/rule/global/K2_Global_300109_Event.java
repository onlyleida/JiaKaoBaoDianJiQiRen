package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300109_Event extends d<K2GlobalConfig> {
    private long startTime;
    private final List<String> stepTypes;
    private final List<String> types;

    public K2_Global_300109_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.types = new ArrayList();
        this.stepTypes = new ArrayList();
        this.startTime = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean checkConfig() {
        return ((Boolean) ((K2GlobalConfig) this.config).p401106.value).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (!examProcessor.v()) {
            return true;
        }
        Step step = examProcessor.s().f3142e;
        if (this.types.contains(String.valueOf(step.number))) {
            return true;
        }
        if (examProcessor.s.f3128a && this.stepTypes.contains(String.valueOf(step.number))) {
            this.startTime = -1L;
            return true;
        }
        if (eVar.d().f5267e) {
            if (this.startTime == -1) {
                this.startTime = examProcessor.i;
            }
            if (examProcessor.i - this.startTime > ((Integer) ((K2GlobalConfig) this.config).p401107.value).intValue() * 1000) {
                this.startTime = examProcessor.i;
                return false;
            }
        } else {
            this.startTime = -1L;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.a
    protected void initArgs(e eVar, ExamProcessor examProcessor, b bVar) {
        super.initArgs(eVar, examProcessor, bVar);
        this.types.addAll(Arrays.asList(((String) ((K2GlobalConfig) this.config).p401108.value).split("-")));
        this.stepTypes.addAll(Arrays.asList(((String) ((K2GlobalConfig) this.config).p401168.value).split("-")));
    }
}
