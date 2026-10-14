.class Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method

.method private synthetic h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method

.method private synthetic j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method

.method private synthetic l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method

.method private synthetic n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/k;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9700\u8981\u5347\u7ea7app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->i(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start_upgrade_app:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_apk_version_empty:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/b;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v0

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->t()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/c;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic g()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->f()V

    return-void
.end method

.method public synthetic i()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->h()V

    return-void
.end method

.method public synthetic k()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->j()V

    return-void
.end method

.method public synthetic m()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->l()V

    return-void
.end method

.method public synthetic o()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->n()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;->h(Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/impl/d1;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_requesting_version_info:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method
