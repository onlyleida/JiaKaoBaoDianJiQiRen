.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayStepModel;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;-><init>()V

    return-void
.end method


# virtual methods
.method protected setAnalysis()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->deduct:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    .line 2
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->reverse:Z

    iget v3, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->s:I

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->d:Ljava/lang/String;

    iget v5, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->c:I

    iget v6, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->ss:I

    invoke-static {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->e(ZILjava/lang/String;II)Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    move-result-object v2

    .line 3
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->errorAnalysis:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->errorAnalysis:Ljava/lang/String;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->tips:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method
