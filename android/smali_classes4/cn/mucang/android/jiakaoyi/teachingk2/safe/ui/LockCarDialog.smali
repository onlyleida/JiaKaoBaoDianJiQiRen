.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 (2\u00020\u00012\u00020\u0002:\u0001(B8\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0002\u0010\u000cJ\u0012\u0010\u001e\u001a\u00020\u000b2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0010\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020#H\u0016J\u0012\u0010$\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0002J\u0008\u0010\'\u001a\u00020\u000bH\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R,\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;",
        "Landroid/app/Dialog;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "context",
        "Landroid/content/Context;",
        "lockType",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;",
        "unLocked",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;Lkotlin/jvm/functions/Function1;)V",
        "hasPlayDesc",
        "",
        "isEngineAlreadyStop",
        "isEngineRestart",
        "getLockType",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioStatus;",
        "passwordDialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/ManagerPasswordDialog;",
        "tipPlayTime",
        "",
        "getUnLocked",
        "()Lkotlin/jvm/functions/Function1;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "setSystemWindowType",
        "window",
        "Landroid/view/Window;",
        "unLock",
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


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;

.field private d:Z

.field private e:J

.field private f:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

.field private g:Z

.field private h:Z

.field private final i:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unLocked"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->b:Lkotlin/jvm/b/l;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/f;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->i:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->d:Z

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->o()V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->i(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->l(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic h(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->k(Landroid/view/View;)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;->callTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;->a()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_call_monitoring_center:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_hang_up:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_calling:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "getCurrentActivity()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_input_admin_psw_unlock:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.stri\u2026e_input_admin_psw_unlock)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    .line 4
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/o;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->f:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->n(Landroid/view/Window;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->f:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog$onCreate$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog$onCreate$1$1;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->k(Lkotlin/jvm/b/l;)V

    .line 7
    :goto_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->f:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_2
    return-void
.end method

.method private static final k(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->C()V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->i:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->f:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->dismiss()V

    .line 4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u5f39\u7a97\u6d88\u5931, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car_unlocked:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog$b;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V

    .line 5
    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method private final n(Landroid/view/Window;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f6

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d3

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    :cond_3
    const-string p1, "LockCarDialog: \u6ca1\u6709\u60ac\u6d6e\u7a97\u6743\u9650"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final o()V
    .locals 2

    const-string v0, "LockCarDialog: \u5df2\u89e3\u9664\u9501\u5b9a"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->b:Lkotlin/jvm/b/l;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    invoke-interface {v0, v1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public final c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;

    move-result-object p1

    const-string v1, "inflate(layoutInflater)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->c(Landroid/app/Dialog;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->CONTROL:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    if-ne p1, v3, :cond_1

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;->settingIv:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LockCarDialog: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;->desc:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v3, 0xff0c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_1060:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, -0x2

    .line 12
    invoke-virtual {p1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 13
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->n(Landroid/view/Window;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;->settingIv:Landroid/widget/ImageView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/e;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_car_locked_desc:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 17
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog$a;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V

    .line 18
    invoke-static {p1, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    const-string p1, "LockCarDialog:\u8f66\u8f86\u5904\u4e8e\u5371\u9669\u72b6\u6001\u5df2\u9501\u6b7b\uff0c\u8bf7\u8054\u7cfb\u6559\u7ec3\u6216\u76d1\u63a7\u4e2d\u5fc3\u89e3\u9664\u72b6\u6001"

    .line 19
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;->callTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/h;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->g:Z

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockCarDialog: isEngineAlreadyStop: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->g:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", \u8f6c\u901f: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->i:Landroidx/lifecycle/a0;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 24
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->s()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/i;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 25
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 26
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/g;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .line 27
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->g:Z

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->g:Z

    if-eqz v0, :cond_2

    const-string v0, "LockCarDialog: \u5df2\u7ecf\u7184\u706b"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->h:Z

    .line 6
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->h:Z

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    const/16 v1, 0xfa0

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/d;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;)V

    const-string v3, ""

    invoke-virtual {v0, v3, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 8
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;->engineIv:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->h:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 9
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->c:Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLockCarBinding;->engineIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;->e:J

    .line 11
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_open_engine:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 13
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    return-void

    .line 15
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method
