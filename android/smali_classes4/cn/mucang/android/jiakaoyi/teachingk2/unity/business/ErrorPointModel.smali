.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0016J\u0006\u0010&\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001a\u0010\u001e\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018\"\u0004\u0008 \u0010\u001aR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008\u00a8\u0006\'"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;",
        "Ljava/io/Serializable;",
        "()V",
        "analysis",
        "",
        "getAnalysis",
        "()Ljava/lang/String;",
        "setAnalysis",
        "(Ljava/lang/String;)V",
        "desc",
        "getDesc",
        "setDesc",
        "imgUrl",
        "getImgUrl",
        "setImgUrl",
        "reverse",
        "",
        "getReverse",
        "()Z",
        "setReverse",
        "(Z)V",
        "step",
        "",
        "getStep",
        "()I",
        "setStep",
        "(I)V",
        "stepName",
        "getStepName",
        "setStepName",
        "stepPhase",
        "getStepPhase",
        "setStepPhase",
        "stepPhaseName",
        "getStepPhaseName",
        "setStepPhaseName",
        "getErrorDesc",
        "index",
        "getStepNameDesc",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private analysis:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private reverse:Z

.field private step:I

.field private stepName:Ljava/lang/String;

.field private stepPhase:I

.field private stepPhaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnalysis()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->analysis:Ljava/lang/String;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorDesc(I)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_error_analysis:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_error_analysis)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->stepPhaseName:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->stepName:Ljava/lang/String;

    :cond_0
    aput-object p1, v2, v3

    const/4 p1, 0x2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->desc:Ljava/lang/String;

    aput-object v3, v2, p1

    const/4 p1, 0x3

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->analysis:Ljava/lang/String;

    aput-object v3, v2, p1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getImgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getReverse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->reverse:Z

    return v0
.end method

.method public final getStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->step:I

    return v0
.end method

.method public final getStepName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->stepName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStepNameDesc()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->step:I

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_zuoku:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_1

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_youku:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_2

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_fanqv:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 8
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->stepName:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->reverse:Z

    if-eqz v3, :cond_3

    move-object v2, v0

    :cond_3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStepPhase()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->stepPhase:I

    return v0
.end method

.method public final getStepPhaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->stepPhaseName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAnalysis(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->analysis:Ljava/lang/String;

    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->desc:Ljava/lang/String;

    return-void
.end method

.method public final setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public final setReverse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->reverse:Z

    return-void
.end method

.method public final setStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->step:I

    return-void
.end method

.method public final setStepName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->stepName:Ljava/lang/String;

    return-void
.end method

.method public final setStepPhase(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->stepPhase:I

    return-void
.end method

.method public final setStepPhaseName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->stepPhaseName:Ljava/lang/String;

    return-void
.end method
