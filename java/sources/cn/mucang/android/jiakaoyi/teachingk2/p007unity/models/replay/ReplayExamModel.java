package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.trace.TraceCacheManager;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceCarModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceDeductModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceErrorModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceSignalModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisModel;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ReplayExamModel extends MessageModel {
    public List<TraceCarModel> car;
    public List<TraceDeductModel> deduct;
    public List<TraceErrorModel> error;
    public String id;
    public List<TraceSignalModel> signal;
    public List<TraceStepModel> step;
    public String trackId;

    protected void setAnalysis() {
        for (TraceDeductModel traceDeductModel : this.deduct) {
            AnalysisModel analysisModelF = AnalysisManager.f(traceDeductModel.reverse, traceDeductModel.c, traceDeductModel.ss, traceDeductModel.ln, traceDeductModel.wn, traceDeductModel.s);
            if (n0.g(analysisModelF.errorAnalysis)) {
                traceDeductModel.tips = analysisModelF.errorAnalysis;
            }
        }
    }

    public void setData() {
        this.car = TraceCacheManager.d();
        this.signal = TraceCacheManager.g();
        this.error = TraceCacheManager.f();
        this.deduct = TraceCacheManager.e();
        this.step = TraceCacheManager.h();
        setAnalysis();
    }
}
