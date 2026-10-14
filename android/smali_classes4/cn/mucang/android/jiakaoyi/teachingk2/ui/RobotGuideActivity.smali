.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000W\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u000c\u0008\u0007\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0004$%&\'B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0012H\u0015J\u0008\u0010\u001b\u001a\u00020\u0012H\u0016J\u0008\u0010\u001c\u001a\u00020\u0012H\u0014J\u0008\u0010\u001d\u001a\u00020\u0012H\u0014J\u0008\u0010\u001e\u001a\u00020\u0012H\u0014J\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0012H\u0002J\u0008\u0010#\u001a\u00020\u0012H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "dialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/video/VideoPlayDialog;",
        "imgTipAdapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "isSignalSuccess",
        "",
        "observer",
        "cn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$observer$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$observer$1;",
        "signalCheckAdapter",
        "speakTipTask",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$TtsRunnable;",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "checkSignal",
        "car",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;",
        "getStatName",
        "",
        "init",
        "onBackPressed",
        "onDestroy",
        "onPause",
        "onResume",
        "onSignalChanged",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "startCheck",
        "stopCheck",
        "CheckSignalBinder",
        "Companion",
        "ImageTipBinder",
        "TtsRunnable",
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
.field public static final h:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$b;


# instance fields
.field private final b:Lcom/drakeet/multitype/f;

.field private final c:Lcom/drakeet/multitype/f;

.field private d:Z

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/video/e;

.field private final f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;

.field private final g:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$b;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->h:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->b:Lcom/drakeet/multitype/f;

    .line 3
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->c:Lcom/drakeet/multitype/f;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/video/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/video/e;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Lcn/mucang/android/jiakaoyi/teachingk2/video/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/video/e;

    return-void
.end method

.method public static final synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->s()V

    return-void
.end method

.method public static final synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->t()V

    return-void
.end method

.method private final n(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 3
    :goto_2
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    .line 4
    :goto_4
    iget-boolean v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    xor-int/2addr v4, v2

    .line 5
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    .line 6
    :goto_5
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->d:Z

    if-eqz v5, :cond_7

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_adjust_please_pic:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_adjust_please_pic)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;->c(Ljava/lang/String;)V

    goto :goto_6

    .line 8
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_8

    .line 9
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_wear_belt:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-nez v3, :cond_9

    .line 10
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_put_neutral:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-nez v4, :cond_a

    .line 11
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_p500_pull_handbrake:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-nez v0, :cond_b

    .line 12
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_straighten_wheel:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;

    sget-object v3, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v3, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.teachbase_please)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;->c(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->getLaunchPageIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->c:Lcom/drakeet/multitype/f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Landroid/view/View;)V

    return-void
.end method

.method private final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;->b(Z)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;->b(Z)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$d;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/f0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_robot_guide_page:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_robot_guide_page)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected init()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->statusBar:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;

    const-string v1, "viewBinding.statusBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/r;)Landroidx/lifecycle/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->c(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->titleBar:Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;

    const-string v0, "viewBinding.titleBar"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_sahngche:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_back:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->guide_ic_back:I

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$init$1;

    invoke-direct {v9, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$init$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V

    const/4 v5, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->b(Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;Landroidx/lifecycle/r;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/b/a;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->titleBar:Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;->titleTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/base/e;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$init$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$init$2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/e;-><init>(IJLkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->rcvSignals:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->b:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V

    .line 10
    const-class v3, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    invoke-virtual {v0, v3, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->rcvSignals:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 13
    :goto_0
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->b:Lcom/drakeet/multitype/f;

    const/4 v6, 0x3

    new-array v7, v6, [Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    .line 14
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    sget v9, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_wear_seat_belt:I

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getString(R.string.teachbase_wear_seat_belt)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/o;)V

    aput-object v8, v7, v2

    .line 15
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    sget v9, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_put_into_n_gear:I

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getString(R.string.teachbase_put_into_n_gear)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/o;)V

    aput-object v8, v7, v1

    .line 16
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    sget v9, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_pull_handbrake:I

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getString(R.string.teachbase_pull_handbrake)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/o;)V

    aput-object v8, v7, v4

    .line 17
    invoke-static {v7}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v0, :cond_3

    .line 18
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    sget v8, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachingk2_back_steering_wheel:I

    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(R.string.teachingk2_back_steering_wheel)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/o;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_3
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 20
    invoke-virtual {v5, v7}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 21
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->rcvImageTips:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, p0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->c:Lcom/drakeet/multitype/f;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$c;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V

    .line 23
    const-class v5, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;

    invoke-virtual {v0, v5, v3}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 24
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->rcvImageTips:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->c:Lcom/drakeet/multitype/f;

    new-array v3, v6, [Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;

    .line 26
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;

    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->check_ic_seat:I

    sget v7, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_adjust_pos:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;-><init>(ILjava/lang/String;)V

    aput-object v5, v3, v2

    .line 27
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->check_ic_left_mirror:I

    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_adjust_left_mirror:I

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;-><init>(ILjava/lang/String;)V

    aput-object v2, v3, v1

    .line 28
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->check_ic_right_mirror:I

    sget v5, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_adjust_right_mirror:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;-><init>(ILjava/lang/String;)V

    aput-object v1, v3, v4

    .line 29
    invoke-static {v3}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 30
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRobotGuideBinding;->saveTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->s()V

    .line 32
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->b()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const-string v0, "GuideBack"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->e:Lcn/mucang/android/jiakaoyi/teachingk2/video/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 3
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->t()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->t()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->c()Landroidx/lifecycle/z;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/a0;)V

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->c()Landroidx/lifecycle/z;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->g:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    :goto_1
    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;->c(Z)V

    .line 2
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    if-eqz v4, :cond_2

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v4, v5, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v4, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 4
    :cond_5
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;->c(Z)V

    .line 5
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    if-eqz v1, :cond_6

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    goto :goto_4

    :cond_6
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_7

    goto :goto_5

    .line 6
    :cond_7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    xor-int/2addr v1, v2

    .line 7
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;->c(Z)V

    .line 8
    :goto_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    if-eqz v1, :cond_8

    move-object v3, v0

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;

    :cond_8
    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/model/a;->c(Z)V

    .line 9
    :goto_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    const-string v0, "signal.car"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->n(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    return-void
.end method
