.class public Lcom/unity3d/splash/services/core/webview/bridge/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/bridge/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;->valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    :goto_0
    iget-object p1, p0, Lcom/unity3d/splash/services/core/webview/bridge/b;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/b;->e()Lcom/unity3d/splash/services/core/webview/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/unity3d/splash/services/core/webview/b;->j(Lcom/unity3d/splash/services/core/webview/bridge/b;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Illegal status"

    invoke-static {p2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/b;->e()Lcom/unity3d/splash/services/core/webview/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/unity3d/splash/services/core/webview/b;->j(Lcom/unity3d/splash/services/core/webview/bridge/b;)V

    throw p1
.end method
