.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
.source "SourceFile"


# instance fields
.field private i:I

.field private j:Landroid/os/Handler;

.field private final k:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private final l:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/m/a;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_signal_reporting:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->j:Landroid/os/Handler;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->k:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/i;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->l:Landroidx/lifecycle/a0;

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->m:Landroidx/lifecycle/a0;

    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->i:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->k:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 5
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->m:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private synthetic i(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->i:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    const/high16 v2, 0x41a00000    # 20.0f

    mul-int/lit8 p1, p1, 0x5

    int-to-float p1, p1

    add-float/2addr p1, v2

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic k(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/j;-><init>(ZZ)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->e(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method

.method private synthetic m(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/j;-><init>(ZZ)V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->e(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method

.method private synthetic o()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->J()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/b1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/b1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic q()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->i:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->w()V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    :goto_1
    return-void
.end method

.method private synthetic s(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/m;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic u(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->h()V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private w()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_can_not_find_signal_box:I

    .line 3
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_contact_official:I

    .line 4
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->mc_contact_number:I

    invoke-static {v6}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_retry:I

    .line 5
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/h;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-direct {v0, v1, v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    const-string v0, "\u65e0\u6cd5\u68c0\u6d4b\u5230\u4fe1\u53f7\u76d2"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->d()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->h()V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_checking_connect:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->h()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->k:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 5
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 6
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->m:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->j:Landroid/os/Handler;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic j(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->i(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public synthetic l(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->k(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveWaitOta;)V

    return-void
.end method

.method public synthetic n(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->m(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k0;)V

    return-void
.end method

.method public synthetic p()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->o()V

    return-void
.end method

.method public synthetic r()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->q()V

    return-void
.end method

.method public synthetic t(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->s(Landroid/view/View;)V

    return-void
.end method

.method public synthetic v(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e1;->u(Landroid/view/View;)V

    return-void
.end method
