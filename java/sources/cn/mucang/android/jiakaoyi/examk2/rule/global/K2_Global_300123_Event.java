package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.conflict.ConflictSignal;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300123_Event extends d<K2GlobalConfig> {
    private long startTime;
    private final String[] steps;

    /* JADX WARN: Multi-variable type inference failed */
    public K2_Global_300123_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.startTime = -1L;
        this.steps = ((String) k2GlobalConfig.p401108.value).split("-");
    }

    private boolean stepIsNotExe(Step step) {
        for (String str : this.steps) {
            if (str.equals(String.valueOf(step.number))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        if (examProcessor.v()) {
            this.startTime = -1L;
        } else {
            if (!((Boolean) ((K2GlobalConfig) this.config).p401169.value).booleanValue() && examProcessor.n.b(ConflictSignal.ClutchTime)) {
                return true;
            }
            if (eVar.d().F == CarModel.Direction.Stop && ((Boolean) ((K2GlobalConfig) this.config).p401115.value).booleanValue()) {
                this.startTime = -1L;
                return true;
            }
            if (eVar.d().f5267e) {
                if (this.startTime == -1) {
                    this.startTime = examProcessor.i;
                }
                return examProcessor.i - this.startTime <= ((long) (((Integer) ((K2GlobalConfig) this.config).p401114.value).intValue() * 1000));
            }
            this.startTime = -1L;
        }
        return true;
    }
}
