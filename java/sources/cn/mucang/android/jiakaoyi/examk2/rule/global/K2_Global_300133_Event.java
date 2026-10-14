package cn.mucang.android.jiakaoyi.examk2.rule.global;

import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import cn.mucang.android.jiakaoyi.examk2.config.K2QiDianQuYuConfig;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.tencent.connect.common.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class K2_Global_300133_Event extends d<K2GlobalConfig> {
    private boolean canCheck;
    private boolean hasDoorClose;
    private boolean hasSeatBeltOn;

    public K2_Global_300133_Event(K2GlobalConfig k2GlobalConfig, Deduct deduct) {
        super(k2GlobalConfig, deduct);
        this.canCheck = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.e.d
    protected boolean handleSuccess(e eVar, ExamProcessor examProcessor, b bVar) {
        K2QiDianQuYuConfig k2QiDianQuYuConfig;
        if (!this.canCheck) {
            return true;
        }
        if (examProcessor.v()) {
            Step step = examProcessor.s().f3142e;
            Step step2 = Step.K2_QiDianQuYu;
            if (step == step2 && (k2QiDianQuYuConfig = (K2QiDianQuYuConfig) examProcessor.r(step2)) != null && (((String) k2QiDianQuYuConfig.p408101.value).contains(Constants.VIA_TO_TYPE_QZONE) || ((String) k2QiDianQuYuConfig.p408101.value).contains("5"))) {
                this.canCheck = false;
                return true;
            }
        }
        if (eVar.d().f5266d) {
            this.hasSeatBeltOn = true;
        } else if (this.hasSeatBeltOn) {
            this.hasSeatBeltOn = false;
            return false;
        }
        if (eVar.d().j) {
            this.hasDoorClose = true;
        } else if (this.hasDoorClose) {
            this.hasDoorClose = false;
            return false;
        }
        return true;
    }
}
