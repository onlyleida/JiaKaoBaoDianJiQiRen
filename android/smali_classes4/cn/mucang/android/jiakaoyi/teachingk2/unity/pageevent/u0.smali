.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;
.implements Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/a0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetTextI18n"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0001%B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0003J\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001d\u001a\u00020\u001bH\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0008\u0010\u001f\u001a\u00020\u001bH\u0016J\u001a\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u00152\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010$\u001a\u00020\u001bH\u0002R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/AutoTeachPage;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/handlers/UnityPageHandler$PageEvent;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/BaseTeachFunc;",
        "()V",
        "controller",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;",
        "debugViewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;",
        "errorCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseError;",
        "specialObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/utm/SpecialPointData;",
        "statusCallback",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAutoPilotState$AutoPilotResponseState;",
        "traceModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;",
        "traceObserver",
        "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/CarTraceSideData;",
        "unityLineGroup",
        "",
        "handleEvent",
        "",
        "event",
        "Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;",
        "initDebug",
        "",
        "initDebugView",
        "onEnter",
        "onExit",
        "showLastTeach",
        "unitySetStatus",
        "state",
        "data",
        "",
        "unregister",
        "Companion",
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
.field public static final i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0$a;

.field private static j:Z


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

.field private b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

.field private final c:I

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

.field private final e:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->c:I

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;-><init>()V

    .line 5
    iput v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->group:I

    const/16 v0, 0xf

    .line 6
    iput v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->alpha:F

    const/4 v0, 0x3

    .line 8
    iput v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->height:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->open:Z

    const-string v0, "#00FF00"

    .line 10
    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->color:Ljava/lang/String;

    const-string v0, "\u6807\u51c6\u8f68\u8ff9"

    .line 11
    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->showName:Ljava/lang/String;

    .line 12
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 13
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/m;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 15
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/i;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->g:Landroidx/lifecycle/a0;

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->h:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static synthetic A(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->p(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->v(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->R(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->m(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->x(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->w(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->T(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;)V

    return-void
.end method

.method public static synthetic I(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->k(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method

.method public static synthetic J(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->l(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->S(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V

    return-void
.end method

.method public static synthetic M(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->r(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->q(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method

.method public static synthetic P(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->t(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V

    return-void
.end method

.method public static final Q(Z)V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0$a;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0$a;->b(Z)V

    return-void
.end method

.method private static final R(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;->a()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    .line 4
    iget v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->c:I

    const/4 v4, 0x2

    new-array v4, v4, [Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x0

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/4 v10, 0x5

    int-to-double v10, v10

    sub-double/2addr v8, v10

    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v12, v10

    invoke-direct {v7, v8, v9, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    aput-object v7, v4, v5

    const/4 v5, 0x1

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v8, v10

    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v12, v10

    invoke-direct {v7, v8, v9, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    aput-object v7, v4, v5

    invoke-static {v4}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0xf

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xf03

    const/16 v17, 0x0

    const-string v8, "#FF0000"

    .line 6
    invoke-static/range {v3 .. v17}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final S(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->unknownCode:I

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->unknownCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->stateTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u72b6\u6001\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->desc:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final T(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->d:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;->a:Ljava/util/List;

    iput-object p0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->positions:Ljava/util/List;

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->f(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;ZIILjava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private final U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->l(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->j:Z

    return v0
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->j:Z

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->unknownCode:I

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->unknownCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->errorTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;->b:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->desc:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final f()Z
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->i:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0$a;->a()Z

    move-result v0

    return v0
.end method

.method private final h()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->debugTv:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->pointTv:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->startTv:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->pauseTv:Landroid/widget/TextView;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/n;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->resumeTv:Landroid/widget/TextView;

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :goto_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->endTv:Landroid/widget/TextView;

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :goto_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->startEngineTv:Landroid/widget/TextView;

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :goto_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->stopEngineTv:Landroid/widget/TextView;

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/l;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :goto_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->delayEt:Landroid/widget/EditText;

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    const-wide/16 v1, 0x1f4

    const-string v3, "keyDebugDelay"

    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->f(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_12

    goto :goto_9

    :cond_12
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->saveTv:Landroid/widget/TextView;

    if-nez v0, :cond_13

    goto :goto_9

    :cond_13
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/q;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/q;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    return-void
.end method

.method private static final j(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Pause:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/j;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u6682\u505c\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u6682\u505c\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final l(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Resume:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/e;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u6062\u590d\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u6062\u590d\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final p(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/p;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u7ed3\u675f\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u7ed3\u675f\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->g()V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->i()V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    const-wide/16 v0, 0x1f4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->delayEt:Landroid/widget/EditText;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lkotlin/text/l;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    const-string p0, "keyDebugDelay"

    .line 2
    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->l(Ljava/lang/String;J)V

    return-void
.end method

.method private static final u(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "it.context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->d()V

    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->stateTv:Landroid/widget/TextView;

    const-string v0, "\u72b6\u6001\uff1a\u65e0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->errorTv:Landroid/widget/TextView;

    const-string p1, "\u5f02\u5e38\uff1a\u65e0"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Start:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/g;

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u5f00\u59cb\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u5f00\u59cb\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final y()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const v1, 0x1020002

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->h()V

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/r;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->f:Lcn/mucang/android/jiakaoyi/framework/h/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic z(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->u(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->c(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->e()V

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->j(I)V

    .line 2
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/f;->a:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->f()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->g0()V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->setTraceType(I)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/g;->a()V

    .line 7
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->j:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->y()V

    goto :goto_2

    .line 9
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->U()V

    .line 12
    :goto_2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    .line 13
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/r;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;

    .line 14
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public i(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->j(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->j(I)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->F()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->c:I

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->a(I)V

    .line 4
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/f;->a:Z

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachController;->b()V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->Z()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->b:Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/AutoTeachDebugViewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/r0/b;->b()V

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->U()V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/a;

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/h/a;

    .line 12
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/u0;->h:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method
