.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0008\u0010\u0018\u001a\u00020\u0010H\u0007J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0015H\u0007J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0008\u0010\u001e\u001a\u00020\u0015H\u0007J\u0008\u0010\u001f\u001a\u00020\u0015H\u0007J\u0008\u0010 \u001a\u00020\u0015H\u0007J\u0008\u0010!\u001a\u00020\u0015H\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u000b\u001a*\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u000cj\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "areaList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;",
        "coordinate",
        "Lcn/mucang/android/jiakaoyi/signal/utils/Coordinate;",
        "currentCheckAreaList",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "errorList",
        "Ljava/util/LinkedHashMap;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$HighErrorMenu;",
        "Lkotlin/collections/LinkedHashMap;",
        "lastState",
        "",
        "step",
        "",
        "subStep",
        "handleSubStep",
        "",
        "subStepEvent",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
        "hasErrorData",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "onStepEnd",
        "onStepStart",
        "onUserLogin",
        "showDialog",
        "start",
        "stop",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;

.field private static final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel$a;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:I

.field private static f:I

.field private static g:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->b:Ljava/util/LinkedHashMap;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->c:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/LinkedHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static final c(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 9

    const-string v0, "subStepEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->e:I

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v1, :cond_0

    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->f:I

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStep()I

    move-result v1

    if-eq v0, v1, :cond_8

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->g(I)Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->i()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v1

    :goto_0
    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->g:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getStep()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->e:I

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStep()I

    move-result p0

    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->f:I

    .line 5
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 6
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->c:Ljava/util/List;

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;

    .line 8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getStep()I

    move-result v1

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->e:I

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getStepPhase()I

    move-result v1

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->f:I

    if-ne v1, v2, :cond_4

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getAreaPosList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/b;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->g:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorModel;->getAreaPosList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 11
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->g:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    const-string v4, "coordinate!!.toWorld(pos)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :goto_4
    const/16 v0, 0x753f

    .line 16
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->b(I)V

    .line 17
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_error_prone_area:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_error_prone_area)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public static final d()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->e:I

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->f:I

    return-void
.end method

.method public static final f(I)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v1, :cond_0

    .line 3
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->e:I

    const/4 p0, 0x0

    .line 4
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->f:I

    .line 5
    new-instance p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    const/4 v1, 0x1

    const-string v2, "stepEnum"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    const-string v3, "stepEnum.stepName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;-><init>(ILcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->c(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V

    :cond_0
    return-void
.end method

.method public static final g()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 3
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler$onUserLogin$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final h()V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->GrayCement:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->type:I

    const-string v1, "keyInProjectBg"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->Lawn:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->type:I

    const-string v1, "keyOutProjectBg"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->e:I

    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->f:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->b:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/o;-><init>(Landroid/app/Activity;IILjava/util/HashMap;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final i()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public static final j()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 4

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 5
    :cond_2
    sget-boolean p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->h:Z

    if-eq p1, v1, :cond_3

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainErrorAreaModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainErrorAreaModel;-><init>()V

    .line 7
    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainErrorAreaModel;->open:Z

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 9
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/HighErrorHandler;->h:Z

    :cond_3
    return-void
.end method
