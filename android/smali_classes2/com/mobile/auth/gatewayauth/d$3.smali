.class Lcom/mobile/auth/gatewayauth/d$3;
.super Lcom/mobile/auth/gatewayauth/utils/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/gatewayauth/d;->a(ZLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mobile/auth/gatewayauth/d;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/d;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    iput-boolean p2, p0, Lcom/mobile/auth/gatewayauth/d$3;->a:Z

    iput-boolean p3, p0, Lcom/mobile/auth/gatewayauth/d$3;->b:Z

    iput-object p4, p0, Lcom/mobile/auth/gatewayauth/d$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mobile/auth/gatewayauth/d$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/utils/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->b(Lcom/mobile/auth/gatewayauth/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->b(Lcom/mobile/auth/gatewayauth/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->e(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->e(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getActivityIn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->e(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/d;->e(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig;->getActivityIn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nirvana/tools/core/AppUtils;->getAnimResID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->d(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/o/a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "QuitActivity error!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mobile/auth/o/a;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected b()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/mobile/auth/gatewayauth/utils/b$a;->b()V

    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/d$3;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->f(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/mobile/auth/gatewayauth/d$3;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/d;->a()Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$3;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/d$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v3}, Lcom/mobile/auth/gatewayauth/d;->g(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mobile/auth/gatewayauth/manager/compat/ResultCodeProcessor;->convertErrorInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    move-result-object v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->g(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/SystemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/SystemManager;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setVendorName(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TokenRet;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->h(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/manager/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/manager/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->setRequestId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$3;->e:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->f(Lcom/mobile/auth/gatewayauth/d;)Lcom/mobile/auth/gatewayauth/TokenResultListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/TokenRet;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mobile/auth/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
