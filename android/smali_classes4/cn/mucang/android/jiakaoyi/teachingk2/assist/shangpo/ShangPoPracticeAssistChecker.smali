.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;
.super Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001b\u001a\u00020\u000bH\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u000bH\u0016J\u0006\u0010\u000c\u001a\u00020\u000bJ\u0008\u0010\u001f\u001a\u00020\u000bH\u0016J\u0008\u0010 \u001a\u00020\u001dH\u0002J\u0008\u0010!\u001a\u00020\u001dH\u0002J\u0008\u0010\"\u001a\u00020\u001dH\u0002J\u0008\u0010#\u001a\u00020\u001dH\u0002J\u0008\u0010$\u001a\u00020\u001dH\u0016J\u0010\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\'H\u0016J\u0018\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u000bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;",
        "()V",
        "MAX_FAIL_TIMES",
        "",
        "askDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JCommonDialog;",
        "houLiuBrakeObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
        "isHouLiuOnFinalFai",
        "",
        "isInShangPoArea",
        "lastEngineStart",
        "lastFailTimesOnAssist",
        "onHouLiuBrake",
        "poDingChecker",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ArrivePoDingChecker;",
        "releaseBrakeObserver",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;",
        "shangPoFailTotalTimes",
        "shangPoObserver",
        "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;",
        "signalCallback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "tipPop",
        "Lcn/mucang/android/jiakaoyi/teachingk2/CountdownPop;",
        "checkCarAngleLegal",
        "clearAll",
        "",
        "isAssisting",
        "isSupportAssist",
        "resetFailParams",
        "sendAssistReadyOrder",
        "showAskDialogIfNeed",
        "showTipPop",
        "start",
        "stop",
        "reason",
        "",
        "sendOrder",
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
.field public static final e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

.field private static j:Z

.field private static k:I

.field private static l:I

.field private static m:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

.field private static final n:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;

.field private static final o:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/engine/i/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private static final q:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->j:Z

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$poDingChecker$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$poDingChecker$1;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;-><init>(Lkotlin/jvm/b/a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->n:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/e;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->o:Landroidx/lifecycle/a0;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/d;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/g;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->q:Landroidx/lifecycle/a0;

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/f;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->r:Landroidx/lifecycle/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_poqi_assist:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_poqi_assist)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic C(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->e()Z

    move-result p0

    return p0
.end method

.method public static final synthetic D(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->S()V

    return-void
.end method

.method public static final synthetic E()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    return-object v0
.end method

.method public static final synthetic F()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->l:I

    return v0
.end method

.method public static final synthetic G()Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->n:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;

    return-object v0
.end method

.method public static final synthetic H()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    return v0
.end method

.method public static final synthetic I()Lcn/mucang/android/jiakaoyi/teachingk2/k0;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->m:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    return-object v0
.end method

.method public static final synthetic J()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f:Z

    return v0
.end method

.method public static final synthetic K(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic L(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->d0()V

    return-void
.end method

.method public static final synthetic M(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f:Z

    return-void
.end method

.method public static final synthetic N(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->l:I

    return-void
.end method

.method public static final synthetic O(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->h:Z

    return-void
.end method

.method public static final synthetic P(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f0()V

    return-void
.end method

.method public static final synthetic Q(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i0()V

    return-void
.end method

.method private final R()Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    const-wide/16 v3, 0x0

    .line 3
    invoke-static {v3, v4}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    const/4 v3, 0x0

    .line 5
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->h:Ljava/util/List;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_2

    const-string v1, "\u6ca1\u6709\u8003\u573a\u4e0a\u5761\u533a\u57df\u7684\u5730\u56fe\u6570\u636e"

    .line 6
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return v0

    .line 7
    :cond_2
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    .line 8
    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v4

    :cond_4
    if-nez v3, :cond_5

    const-string v2, "\u6ca1\u6709\u627e\u5230\u8f66\u5b50\u6240\u5728\u7684\u4e0a\u5761\u533a\u57df\uff0ccarCenter:"

    .line 9
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return v0

    .line 10
    :cond_5
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 11
    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorAngle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCarAngleLegal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpg-double v4, v1, v6

    if-gtz v4, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", degree:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    if-gtz v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 14
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.mapcollect.poshandle.K2Data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkCarAngleLegal error, "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return v0
.end method

.method private final S()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->m:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->dismiss()V

    .line 3
    :goto_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->c0()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->q:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->r:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private static final T(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->HouLiu:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne p0, v0, :cond_1

    sget-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->h:Z

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->h:Z

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    add-int/2addr v1, v0

    sput v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->g:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u540e\u6e9c\u5239\u8f66, \u5761\u8d77\u5931\u8d25\u6b21\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u6700\u540e\u4e00\u6b21\u5931\u8d25\u662f\u540e\u6e9c\u5239\u8f66: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic V(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->g0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->h0(Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic X(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->j0(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public static synthetic Y(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e0(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V

    return-void
.end method

.method public static synthetic Z(Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->b0(Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;)V

    return-void
.end method

.method public static synthetic a0(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->T(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V

    return-void
.end method

.method private static final b0(Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;)V
    .locals 4

    .line 1
    sget-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->h:Z

    if-eqz p0, :cond_2

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "\u5239\u8f66\u5df2\u89e3\u9664, \u6700\u540e\u4e00\u6b21\u5931\u8d25\u662f\u540e\u6e9c\u5239\u8f66: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->h:Z

    .line 4
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f:Z

    if-eqz v1, :cond_2

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    const/4 v2, 0x1

    if-gt v2, v1, :cond_0

    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i0()V

    goto :goto_0

    .line 7
    :cond_1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->g:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f0()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final c0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->l:I

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    .line 3
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->g:Z

    .line 4
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->h:Z

    return-void
.end method

.method private final d0()V
    .locals 7

    .line 1
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->s(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method private static final e0(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->c:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v0, v1, :cond_0

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f:Z

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->S()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->b:Z

    if-eqz v0, :cond_2

    .line 8
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    const-string v0, "\u8fdb\u5165\u4e0a\u5761\u8d77\u6b65\u533a\u57df"

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->S()V

    const/4 p0, 0x1

    .line 10
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f:Z

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object p0

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->j:Z

    .line 12
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->p:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 13
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->q:Landroidx/lifecycle/a0;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ReleaseBrakeModel;

    .line 14
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->r:Landroidx/lifecycle/a0;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void

    .line 15
    :cond_2
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->a:Z

    if-eqz p0, :cond_3

    .line 16
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    const-string v0, "\u79bb\u5f00\u4e0a\u5761\u8d77\u6b65\u533a\u57df"

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 17
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->n:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final f0()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "showAskDialog, \u6b63\u5728\u8f85\u52a9\u4e2d... , \u5761\u8d77\u5931\u8d25\u6b21\u6570: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->R()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u8f66\u8eab\u548c\u4e0a\u5761\u533a\u57df\u7684\u89d2\u5ea6\u4e0d\u6ee1\u8db3<=15\uff0c\u4e0d\u89e6\u53d1\u81ea\u52a8\u8f85\u52a9\u8be2\u95ee"

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_6

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "showAskDialog, \u5761\u8d77\u5931\u8d25\u6b21\u6570: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "showAskDialog: \u6b63\u5728\u5761\u8d77\u8f85\u52a9\u4e2d, \u5ffd\u7565"

    .line 9
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_need_help_finish_shangpo:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v15, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 12
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v14

    const-string v2, "getCurrentActivity()"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_need_help:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_cancel:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 15
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_confirm:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/b;

    .line 16
    new-instance v13, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const-string v2, "desc"

    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x188

    const/16 v17, 0x0

    move-object v2, v13

    move-object v4, v1

    move-object/from16 v18, v13

    move/from16 v13, v16

    move-object v0, v14

    move-object/from16 v14, v17

    .line 18
    invoke-direct/range {v2 .. v14}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;ZZILkotlin/jvm/internal/o;)V

    move-object/from16 v2, v18

    .line 19
    invoke-direct {v15, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    sput-object v15, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v15, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/c;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 21
    :goto_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_2
    move-object/from16 v0, p0

    .line 22
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->A(Ljava/lang/String;)V

    .line 23
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_6
    return-void
.end method

.method private static final g0(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->d0()V

    return-void
.end method

.method private static final h0(Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    const-string v0, "desc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->A(Ljava/lang/String;)V

    return-void
.end method

.method private final i0()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "showTipPop, \u6b63\u5728\u8f85\u52a9\u4e2d... , \u5761\u8d77\u5931\u8d25\u6b21\u6570: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->R()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u8f66\u8eab\u548c\u4e0a\u5761\u533a\u57df\u7684\u89d2\u5ea6\u4e0d\u6ee1\u8db3<=15\uff0c\u4e0d\u89e6\u53d1\u81ea\u52a8\u8f85\u52a9\u8be2\u95ee"

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->U()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-nez v1, :cond_6

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->m:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->dismiss()V

    .line 7
    :goto_1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->shangpo_assist_pop_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCurrentActivity().get\u2026g.shangpo_assist_pop_tip)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 9
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->confirm_start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 10
    sget-object v10, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$showTipPop$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$showTipPop$1;

    const/4 v11, 0x0

    const/16 v12, 0x136

    const/4 v13, 0x0

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;-><init>(Ljava/lang/String;ILkotlin/jvm/b/l;ZLjava/lang/Integer;Lkotlin/jvm/b/l;Ljava/lang/Integer;Lkotlin/jvm/b/l;Landroid/widget/PopupWindow$OnDismissListener;ILkotlin/jvm/internal/o;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->m:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->m:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->l()V

    :cond_6
    :goto_2
    return-void
.end method

.method private static final j0(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    const-string v0, "signalGetter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    .line 2
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f:Z

    if-eqz v1, :cond_3

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    :cond_0
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->j:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    const/4 v4, 0x0

    .line 6
    sput-boolean v4, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->g:Z

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "\u7184\u706b, \u5761\u8d77\u5931\u8d25\u6b21\u6570: "

    invoke-static {v5, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 8
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k:I

    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 9
    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->f0()V

    goto :goto_1

    :cond_1
    if-gt v3, v2, :cond_2

    if-ge v2, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 10
    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i0()V

    .line 11
    :cond_3
    :goto_1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->j:Z

    .line 12
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 13
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->m:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/k0;->dismiss()V

    .line 14
    :goto_2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_3
    const/4 p0, 0x0

    .line 15
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->m:Lcn/mucang/android/jiakaoyi/teachingk2/k0;

    .line 16
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->i:Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    :cond_6
    return-void
.end method


# virtual methods
.method public U()Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->m()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoAssist:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u81ea\u52a8\u8f85\u52a9\u5f00\u5173\u5173\u95ed"

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const-string v0, "\u81ea\u52a8\u6321\u3001\u5317\u6597\u3001\u65e0\u6cb9\u95e8\u6a21\u5757\u4e0d\u652f\u6301\u5761\u8d77\u8f85\u52a9\u529f\u80fd"

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return v1
.end method

.method public k()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->k()Z

    move-result v0

    return v0
.end method

.method public k0()V
    .locals 3

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->S()V

    const-string v1, "start"

    .line 3
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->o:Landroidx/lifecycle/a0;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    :cond_0
    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public y(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->S()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->y(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
