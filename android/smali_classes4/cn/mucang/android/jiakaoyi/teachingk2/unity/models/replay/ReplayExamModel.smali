.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public car:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;",
            ">;"
        }
    .end annotation
.end field

.field public deduct:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;",
            ">;"
        }
    .end annotation
.end field

.field public error:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public signal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;",
            ">;"
        }
    .end annotation
.end field

.field public step:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
            ">;"
        }
    .end annotation
.end field

.field public trackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    return-void
.end method


# virtual methods
.method protected setAnalysis()V
    .locals 8

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

    iget v3, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->c:I

    iget v4, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->ss:I

    iget v5, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->ln:I

    iget v6, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->wn:I

    iget v7, v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->s:I

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->f(ZIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

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

.method public setData()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->car:Ljava/util/List;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->signal:Ljava/util/List;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->error:Ljava/util/List;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->deduct:Ljava/util/List;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->step:Ljava/util/List;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayExamModel;->setAnalysis()V

    return-void
.end method
