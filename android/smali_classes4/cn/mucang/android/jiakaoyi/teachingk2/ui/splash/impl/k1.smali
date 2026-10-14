.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
.source "SourceFile"


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

    const-string v0, "\u6743\u9650\u7533\u8bf7"

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->s()V

    return-void
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    return-object p0
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->n()V

    return-void
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    return-object p0
.end method

.method private n()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->v()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method

.method private synthetic o(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic q(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->f()V

    return-void
.end method

.method private s()V
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_permission:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_please_agree_permission:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_cancel:I

    .line 2
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/u0;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/u0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_retry:I

    .line 3
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/v0;

    invoke-direct {v8, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/v0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {v0, v1, v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_permissions:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    invoke-static {v1}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x3e8

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V

    invoke-virtual {v1, v0, v2, v3}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic p(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->o(Landroid/view/View;)V

    return-void
.end method

.method public synthetic r(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->q(Landroid/view/View;)V

    return-void
.end method
