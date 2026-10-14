.class Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->f()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic e()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->f()Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic g()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->f()Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->c(Landroid/view/View;)V

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->e()V

    return-void
.end method

.method public synthetic h()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->g()V

    return-void
.end method

.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    move-result-object v1

    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_device_not_recognized:I

    .line 6
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_contact_official:I

    .line 7
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

    .line 8
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/p;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/q;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/q;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-direct {v0, v1, v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    .line 9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    const-string v0, "TestDeviceId : \u8bbe\u5907\u65e0\u6cd5\u8bc6\u522b"

    .line 10
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;->h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/s;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/r;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/r;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/g1$a;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
