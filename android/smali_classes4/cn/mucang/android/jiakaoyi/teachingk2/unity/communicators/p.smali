.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001!B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010 \u001a\u00020\u001eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;",
        "",
        "drawParam",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper$DrawParam;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper$DrawParam;)V",
        "boxId",
        "",
        "carPositionObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;",
        "lastSubStepEvent",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
        "normalObserver",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/NormalHandler$NormalLine;",
        "predictId",
        "predictObserver",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/NormalHandler$PredictAxle;",
        "stepObserver",
        "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;",
        "stopId",
        "stopPositionObserver",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;",
        "subStepObserver",
        "traceId",
        "traceModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;",
        "traceObserver",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/CarTraceSideData;",
        "clear",
        "",
        "start",
        "stop",
        "DrawParam",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

.field private final g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

.field private final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/i/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;)V
    .locals 1

    const-string v0, "drawParam"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->b:I

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->c:I

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->d:I

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->e:I

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;-><init>()V

    const/4 v0, 0x5

    .line 7
    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->group:I

    const/16 v0, 0xf

    .line 8
    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->alpha:F

    const/4 v0, 0x3

    .line 10
    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->height:I

    .line 11
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 12
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    .line 13
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/d;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->h:Landroidx/lifecycle/a0;

    .line 14
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/f;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->i:Landroidx/lifecycle/a0;

    .line 15
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/e;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->j:Landroidx/lifecycle/a0;

    .line 16
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/c;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->k:Landroidx/lifecycle/a0;

    .line 17
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/g;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->l:Landroidx/lifecycle/a0;

    .line 18
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/a;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->m:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 19
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/h;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->n:Landroidx/lifecycle/a0;

    return-void
.end method

.method private static final a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;->d()Lkotlin/jvm/b/a;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    const/16 v1, 0x9

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->group:I

    const-string v1, "#267B04"

    .line 3
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->color:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;->getPoints()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->positions:Ljava/util/List;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    const/4 p1, 0x1

    iput-boolean p1, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->isSeal:Z

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    const/4 v3, 0x0

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->f(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;ZIILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->e:I

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->k(Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->l(Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->q(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->o(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->r(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->m(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;)V

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;)V
    .locals 15

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v5, "#0000FF"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-string v10, "\u6559\u5b66\u70b9"

    const-string v11, "colorMat"

    const/4 v12, 0x0

    const/16 v13, 0x963

    const/4 v14, 0x0

    .line 3
    invoke-static/range {v0 .. v14}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 3
    iget v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->d:I

    const/4 v2, 0x2

    new-array v2, v2, [Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x0

    .line 4
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/4 v10, 0x5

    int-to-double v10, v10

    sub-double/2addr v8, v10

    iget-wide v12, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v12, v10

    invoke-direct {v6, v8, v9, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    aput-object v6, v2, v5

    const/4 v5, 0x1

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v7, v10

    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v12, v10

    invoke-direct {v6, v7, v8, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    aput-object v6, v2, v5

    .line 5
    invoke-static {v2}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0xf

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xd02

    const/16 v17, 0x0

    const-string v8, "#FF0000"

    const-string v13, "\u6cd5\u7ebf"

    .line 6
    invoke-static/range {v3 .. v17}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->d:I

    :cond_0
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->a:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->b()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->a(I)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->c()V

    :cond_0
    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    const/16 v1, 0x8

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->group:I

    const-string v1, "#FF0000"

    .line 2
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->color:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;->getPoints()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->positions:Ljava/util/List;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    const/4 p1, 0x1

    iput-boolean p1, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->isSeal:Z

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->c:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->f(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;ZIILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->c:I

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStepName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;->getSubStepName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->b()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    :cond_1
    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;->e()Lkotlin/jvm/b/a;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->g:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    const-string v1, "#00FF00"

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->color:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;->a:Ljava/util/List;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->positions:Ljava/util/List;

    const/4 p1, 0x5

    .line 4
    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->group:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->isSeal:Z

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    const/4 v1, 0x1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->b:I

    invoke-virtual {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;ZI)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->b:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->b(I)V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->c:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->b(I)V

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->d:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->b(I)V

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->e:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->b(I)V

    const/4 v1, 0x6

    .line 5
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->a(I)V

    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->a(I)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TraceErrorTipModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TraceErrorTipModel;-><init>(ZI)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method public final n()V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->m:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->j(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->b()V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$b;

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->m:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/r$a;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/p;->f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    return-void
.end method
