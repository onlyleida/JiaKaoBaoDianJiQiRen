.class Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/permission/model/PermissionsResult;->getGrantedAll()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V

    :goto_0
    return-void
.end method

.method private synthetic c(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/core/permission/model/PermissionsResult;->getGrantedAll()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/r0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/r0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->c(Landroid/app/Activity;Lf/a/a/a/n/c/a;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)Lcn/mucang/android/jiakaoyi/framework/base/m/a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/t0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/t0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.RECORD_AUDIO"

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/d0;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method

.method public synthetic d(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->c(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->e()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->t(Landroid/content/Intent;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/s0;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/s0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;)V

    const-wide/16 p2, 0x32

    invoke-static {p1, p2, p3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;->h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/k1;)V

    :goto_0
    return-void
.end method
