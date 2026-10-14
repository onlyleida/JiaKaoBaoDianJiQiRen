.class Lcom/mobile/auth/gatewayauth/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobile/auth/gatewayauth/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/gatewayauth/d;


# direct methods
.method constructor <init>(Lcom/mobile/auth/gatewayauth/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    instance-of p2, p1, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "ui_manager_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/d;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    instance-of v0, p1, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getUIManagerID()I

    move-result v0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/d;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->b(Lcom/mobile/auth/gatewayauth/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->b(Lcom/mobile/auth/gatewayauth/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/ReflectionUtils;->getApplication()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->c(Lcom/mobile/auth/gatewayauth/d;)Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/d;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    instance-of v0, p1, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getUIManagerID()I

    move-result p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/d;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/d;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    instance-of v0, p1, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/LoginAuthActivity;->getUIManagerID()I

    move-result p1

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/d;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/d$1;->a:Lcom/mobile/auth/gatewayauth/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mobile/auth/gatewayauth/d;->a(Lcom/mobile/auth/gatewayauth/d;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
