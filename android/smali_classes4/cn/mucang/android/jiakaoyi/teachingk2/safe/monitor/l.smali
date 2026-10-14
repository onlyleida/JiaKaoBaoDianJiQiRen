.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/FlameOutMonitor;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "count",
        "",
        "dialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;",
        "onSignalChanged",
        "",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "show",
        "reason",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;

.field private static b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->e(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)V
    .locals 8

    const-string v0, "$reason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-nez v1, :cond_3

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;ZILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/g;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6
    :goto_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 7
    :cond_3
    :goto_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static final e(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;

    const/4 v0, 0x0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->c:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->c:I

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    :goto_0
    const/4 p1, 0x0

    .line 4
    sput p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/l;->c:I

    :cond_1
    return-void
.end method
