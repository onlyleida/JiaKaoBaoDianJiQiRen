.class public Lcom/unity3d/splash/services/core/configuration/d$k;
.super Lcom/unity3d/splash/services/core/configuration/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/configuration/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private a:Lcom/unity3d/splash/services/core/configuration/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/splash/services/core/configuration/d$b;-><init>(Lcom/unity3d/splash/services/core/configuration/d$a;)V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/configuration/d$k;->a:Lcom/unity3d/splash/services/core/configuration/a;

    return-void
.end method

.method private c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-static {}, Lcom/unity3d/splash/services/core/api/a;->a()Lcom/unity3d/splash/services/core/lifecycle/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/splash/services/c/b/a;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/splash/services/c/b/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/splash/services/core/api/a;->a()Lcom/unity3d/splash/services/core/lifecycle/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/api/a;->b(Lcom/unity3d/splash/services/core/lifecycle/a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public b()Lcom/unity3d/splash/services/core/configuration/d$b;
    .locals 6

    const-string v0, "Unity Ads init: starting init"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/b;->e()Lcom/unity3d/splash/services/core/webview/b;

    move-result-object v1

    const-string v2, "reset webapp"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Lcom/unity3d/splash/services/core/webview/b;->o(Z)V

    invoke-virtual {v1, v3}, Lcom/unity3d/splash/services/core/webview/b;->n(Z)V

    invoke-virtual {v1}, Lcom/unity3d/splash/services/core/webview/b;->f()Lcom/unity3d/splash/services/core/webview/a;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/unity3d/splash/services/core/configuration/d$k$a;

    invoke-direct {v4, p0, v1, v0}, Lcom/unity3d/splash/services/core/configuration/d$k$a;-><init>(Lcom/unity3d/splash/services/core/configuration/d$k;Lcom/unity3d/splash/services/core/webview/b;Landroid/os/ConditionVariable;)V

    invoke-static {v4}, Lcom/unity3d/splash/services/c/a/b;->d(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/d$f;

    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Reset failed on opening ConditionVariable"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/d$k;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v0, v2, v1, v3}, Lcom/unity3d/splash/services/core/configuration/d$f;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Lcom/unity3d/splash/services/core/configuration/d$k;->c()V

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/splash/services/c/b/b;->j(Lcom/unity3d/splash/services/core/cache/a;)V

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->a()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/unity3d/splash/services/core/configuration/d$f;

    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Cache directory is NULL"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unity3d/splash/services/core/configuration/d$k;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v0, v2, v1, v3}, Lcom/unity3d/splash/services/core/configuration/d$f;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v0

    :cond_3
    invoke-static {v3}, Lcom/unity3d/splash/services/c/b/b;->m(Z)V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$k;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/splash/services/core/configuration/a;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/splash/services/core/configuration/d$k;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/core/configuration/a;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v2, v0, v3

    iget-object v4, p0, Lcom/unity3d/splash/services/core/configuration/d$k;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-virtual {v4, v2}, Lcom/unity3d/splash/services/core/configuration/a;->b(Ljava/lang/String;)Lcom/unity3d/splash/services/core/configuration/c;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/unity3d/splash/services/core/configuration/d$k;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-interface {v2, v4}, Lcom/unity3d/splash/services/core/configuration/c;->d(Lcom/unity3d/splash/services/core/configuration/a;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/unity3d/splash/services/core/configuration/d$g;

    iget-object v1, p0, Lcom/unity3d/splash/services/core/configuration/d$k;->a:Lcom/unity3d/splash/services/core/configuration/a;

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/configuration/d$g;-><init>(Lcom/unity3d/splash/services/core/configuration/a;)V

    return-object v0
.end method
