.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;,
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0002./B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u001eR(\u0010\u0003\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007\"\u0004\u0008\u0010\u0010\tR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001a\"\u0004\u0008%\u0010\u001cR\u001c\u0010&\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010 \"\u0004\u0008(\u0010\"\u00a8\u00060"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;",
        "Ljava/io/Serializable;",
        "()V",
        "areaPosList",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "getAreaPosList",
        "()Ljava/util/List;",
        "setAreaPosList",
        "(Ljava/util/List;)V",
        "deductList",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;",
        "getDeductList",
        "setDeductList",
        "posList",
        "getPosList",
        "setPosList",
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
        "",
        "getStepName",
        "()Ljava/lang/String;",
        "setStepName",
        "(Ljava/lang/String;)V",
        "stepPhase",
        "getStepPhase",
        "setStepPhase",
        "stepPhaseName",
        "getStepPhaseName",
        "setStepPhaseName",
        "getErrorDesc",
        "",
        "getMenu",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$HighErrorMenu;",
        "getStepNameDesc",
        "DeductAnalysisItem",
        "HighErrorMenu",
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
.field private areaPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field

.field private deductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;",
            ">;"
        }
    .end annotation
.end field

.field private posList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

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
.method public final getAreaPosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->areaPosList:Ljava/util/List;

    return-object v0
.end method

.method public final getDeductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->deductList:Ljava/util/List;

    return-object v0
.end method

.method public final getErrorDesc()Ljava/lang/CharSequence;
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->deductList:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_2

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;

    .line 3
    sget-object v4, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_html:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "getString(R.string.teachbase_html)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getStepPhaseName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getStepName()Ljava/lang/String;

    move-result-object v9

    :cond_1
    aput-object v9, v8, v1

    const/4 v9, 0x2

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;->getDesc()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;->getAnalysis()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move v4, v6

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 v0, 0x0

    throw v0

    .line 5
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_error_area:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_no_error_area)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v0, "<br><br>"

    .line 7
    invoke-static {v3, v0}, Lkotlin/text/l;->k0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const-string v1, "fromHtml(html.removeSuffix(\"<br><br>\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMenu()Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->step:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;->e(I)V

    .line 3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->reverse:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;->d(Z)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getStepNameDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;->g(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;->f(I)V

    .line 6
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->reverse:Z

    if-eqz v1, :cond_2

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->step:I

    .line 8
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 9
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;->f(I)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;->f(I)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v1, v2, :cond_2

    .line 13
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;->f(I)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getPosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->posList:Ljava/util/List;

    return-object v0
.end method

.method public final getReverse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->reverse:Z

    return v0
.end method

.method public final getStep()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->step:I

    return v0
.end method

.method public final getStepName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->stepName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStepNameDesc()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->step:I

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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->stepName:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->reverse:Z

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
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->stepPhase:I

    return v0
.end method

.method public final getStepPhaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->stepPhaseName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAreaPosList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->areaPosList:Ljava/util/List;

    return-void
.end method

.method public final setDeductList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$DeductAnalysisItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->deductList:Ljava/util/List;

    return-void
.end method

.method public final setPosList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->posList:Ljava/util/List;

    return-void
.end method

.method public final setReverse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->reverse:Z

    return-void
.end method

.method public final setStep(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->step:I

    return-void
.end method

.method public final setStepName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->stepName:Ljava/lang/String;

    return-void
.end method

.method public final setStepPhase(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->stepPhase:I

    return-void
.end method

.method public final setStepPhaseName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->stepPhaseName:Ljava/lang/String;

    return-void
.end method
