.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "binding",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;",
        "getBinding",
        "()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "countDownTime",
        "",
        "job",
        "Lkotlinx/coroutines/Job;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private final a:Lkotlin/f;

.field private b:Lkotlinx/coroutines/t1;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$style;->jiakaoyi__dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$binding$2;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->a:Lkotlin/f;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->d()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->c:I

    return p0
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->c:I

    return-void
.end method

.method private final d()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;

    return-object v0
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->g(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->h(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final g(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\u5173\u95ed\u7184\u5c4f\u5f39\u7a97"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->b:Lkotlinx/coroutines/t1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->d()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 4
    :goto_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->d()Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogAutoLogoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/e;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/16 p1, 0x257

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->c:I

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->b:Lkotlinx/coroutines/t1;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;

    invoke-direct {v5, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog$onCreate$3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/AutoLogoutDialog;->b:Lkotlinx/coroutines/t1;

    return-void
.end method
