.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0007J2\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0007J8\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0018\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0008\u0010\u001d\u001a\u00020\u000eH\u0007J\u0008\u0010\u001e\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisManager;",
        "",
        "()V",
        "TYPE_EXAM",
        "",
        "TYPE_TRAIN",
        "examList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;",
        "trainDeducts",
        "getTrainDeducts",
        "()Ljava/util/List;",
        "trainList",
        "getAnalysis",
        "",
        "getAnalysisModel",
        "reverse",
        "",
        "step",
        "name",
        "",
        "code",
        "subStep",
        "getExamAnalysis",
        "line",
        "wheel",
        "handleDeduct",
        "deduct",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "startStep",
        "stopStep",
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


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->b:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/a;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final b()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/e;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/e;->m(I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/b;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/e;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/e;->m(I)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/d;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/d;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u62c9\u53d6\u9519\u8bef\u5206\u6790\u5931\u8d25\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final c(Ljava/util/List;)V
    .locals 1

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static final d(Ljava/util/List;)V
    .locals 1

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static final e(ZILjava/lang/String;II)Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    .line 3
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductCode:I

    if-ne v2, p3, :cond_0

    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->reverse:Z

    if-ne v2, p0, :cond_0

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p1, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 5
    :cond_2
    :goto_0
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->subStep:I

    if-ne v2, p4, :cond_0

    return-object v1

    .line 6
    :cond_3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;-><init>()V

    .line 7
    iput p3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductCode:I

    .line 8
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductName:Ljava/lang/String;

    .line 9
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->step:I

    .line 10
    iput p4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->subStep:I

    .line 11
    iput-boolean p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->reverse:Z

    return-object v0
.end method

.method public static final f(ZIIIII)Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    .line 2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductCode:I

    if-ne v2, p1, :cond_0

    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->reverse:Z

    if-eq v2, p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq p5, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne p5, v2, :cond_3

    .line 4
    :cond_2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->subStep:I

    if-eq v2, p2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->wheel:I

    if-eqz v2, :cond_4

    if-eq v2, p4, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->line:Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->line:Ljava/lang/String;

    const-string v3, "model.line"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    return-object v1

    .line 8
    :cond_6
    new-instance p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;-><init>()V

    return-object p0
.end method

.method public static final h(ZLcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 3

    const-string v0, "deduct"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->d:Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->subStep:I

    :goto_0
    invoke-static {p0, v1, v2, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->e(ZILjava/lang/String;II)Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    move-result-object p0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->errorAnalysis:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getAnalysis()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->errorAnalysis:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->X(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 5
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->d:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;

    .line 7
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductCode:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->deductCode:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->reverse:Z

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->reverse:Z

    if-ne v1, v2, :cond_2

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->subStep:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;->subStep:I

    if-ne v0, v1, :cond_2

    return-void

    .line 8
    :cond_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic i()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->b()V

    return-void
.end method

.method public static synthetic j(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->c(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->d(Ljava/util/List;)V

    return-void
.end method

.method public static final l()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->b()V

    return-void
.end method

.method public static final m()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f$a;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/g/f;->d(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/AnalysisModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/analysis/f;->d:Ljava/util/List;

    return-object v0
.end method
