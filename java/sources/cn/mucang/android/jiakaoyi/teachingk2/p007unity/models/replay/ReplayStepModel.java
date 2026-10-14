package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceDeductModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisManager;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.analysis.AnalysisModel;

/* JADX INFO: loaded from: classes4.dex */
public class ReplayStepModel extends ReplayExamModel {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.replay.ReplayExamModel
    protected void setAnalysis() {
        for (TraceDeductModel traceDeductModel : this.deduct) {
            AnalysisModel analysisModelE = AnalysisManager.e(traceDeductModel.reverse, traceDeductModel.s, traceDeductModel.f3170d, traceDeductModel.c, traceDeductModel.ss);
            if (n0.g(analysisModelE.errorAnalysis)) {
                traceDeductModel.tips = analysisModelE.errorAnalysis;
            }
        }
    }
}
