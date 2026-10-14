.class public Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;
.source "SourceFile"


# instance fields
.field private i:Landroid/app/Dialog;

.field private j:J

.field private k:I

.field private final l:Ljava/lang/Runnable;


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

    const-string v0, "\u7f51\u7edc"

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/m/a;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->k:I

    return v0
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->l()V

    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private l()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->q()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->k()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->f()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f51\u7edc\u68c0\u67e5\u5b8c\u6210\uff0c\u8017\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->j:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15f90

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    new-instance v10, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_device_no_net:I

    .line 13
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_contact_official:I

    .line 14
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

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_button_cancel:I

    .line 15
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/a0;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/a0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_retry:I

    .line 16
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/z;

    invoke-direct {v8, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/z;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;)V

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {v0, v1, v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->i:Landroid/app/Dialog;

    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    .line 18
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic m(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->b:Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->f()V

    return-void
.end method

.method private q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_check_network:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->k:I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->q()V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/l;-><init>(F)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->j:J

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->l:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic n(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->m(Landroid/view/View;)V

    return-void
.end method

.method public synthetic p(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/j1;->o(Landroid/view/View;)V

    return-void
.end method
