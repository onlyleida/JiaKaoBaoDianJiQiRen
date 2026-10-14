.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0016\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\u001cJ\u0006\u0010$\u001a\u00020\u001cJ\u000e\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/K3ExamDataUpdater;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "getRunningStep",
        "Lkotlin/Function0;",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;",
        "(Lkotlin/jvm/functions/Function0;)V",
        "data",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;",
        "getData",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;",
        "distanceObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;",
        "emptyStepDesc",
        "",
        "kotlin.jvm.PlatformType",
        "getGetRunningStep",
        "()Lkotlin/jvm/functions/Function0;",
        "startDistance",
        "",
        "startTime",
        "",
        "tingCheDistance",
        "",
        "unit",
        "deductIsOver",
        "",
        "onSignalChanged",
        "",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "onStep",
        "stepHandler",
        "status",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;",
        "start",
        "stop",
        "updateScore",
        "deductScore",
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
.field private final a:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

.field private e:J

.field private f:I

.field private g:F

.field private final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "+",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getRunningStep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->a:Lkotlin/jvm/b/a;

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_m:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->b:Ljava/lang/String;

    .line 3
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_proj_not_start:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->c:Ljava/lang/String;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    const/high16 p1, -0x3b860000    # -1000.0f

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->g:F

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/b;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->h:Landroidx/lifecycle/a0;

    return-void
.end method

.method private static final b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;->distance:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->g:F

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    move-result-object p1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->g:F

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 3
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_side_distance_200:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_side_distance:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_side_distance)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->g:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    iput-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->tipRight:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->scoreNum:I

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    return-object v0
.end method

.method public final e(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;)V
    .locals 1

    const-string v0, "stepHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p1, p2, :cond_0

    const/high16 p1, -0x3b860000    # -1000.0f

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->g:F

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    const-string p2, ""

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->tipRight:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->q()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->e:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->f:I

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    const/16 v2, 0x64

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->scoreNum:I

    .line 7
    sget-object v2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_grade:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.teachbase_grade)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->scoreNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->score:Ljava/lang/String;

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method public final h(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->scoreNum:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->scoreNum:I

    .line 2
    sget-object p1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_grade:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.teachbase_grade)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->scoreNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->score:Ljava/lang/String;

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 9

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->f:I

    if-gtz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    float-to-int v0, v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->f:I

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_0
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->mileage:I

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->e:J

    sub-long/2addr v1, v4

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->timeNum:J

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->timeNum:J

    long-to-int v2, v1

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->g(IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->time:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->a:Lkotlin/jvm/b/a;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->b:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->distance:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->c:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->stepName:Ljava/lang/String;

    goto :goto_2

    .line 12
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    sget-object v2, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->b:Ljava/lang/String;

    const-string v5, "%.0f"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v8, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->o:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->distance:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->stepName:Ljava/lang/String;

    .line 14
    :goto_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v0

    const/16 v1, 0x73

    const/16 v2, 0x3e8

    if-eqz v0, :cond_5

    .line 15
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-eqz v3, :cond_5

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    int-to-long v6, v2

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->lightTime:Ljava/lang/String;

    goto :goto_3

    .line 17
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 18
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    int-to-long v6, v2

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->lightTime:Ljava/lang/String;

    goto :goto_3

    .line 20
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    const-string v0, ""

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;->lightTime:Ljava/lang/String;

    .line 21
    :goto_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method
