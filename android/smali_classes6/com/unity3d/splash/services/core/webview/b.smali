.class public Lcom/unity3d/splash/services/core/webview/b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/webview/b$b;,
        Lcom/unity3d/splash/services/core/webview/b$c;
    }
.end annotation


# static fields
.field private static e:Lcom/unity3d/splash/services/core/webview/b;

.field private static f:Landroid/os/ConditionVariable;


# instance fields
.field private a:Z

.field private b:Lcom/unity3d/splash/services/core/webview/a;

.field private c:Lcom/unity3d/splash/services/core/configuration/a;

.field private d:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/b;->a:Z

    invoke-virtual {p0, p1}, Lcom/unity3d/splash/services/core/webview/b;->l(Lcom/unity3d/splash/services/core/configuration/a;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/b;->d()Lcom/unity3d/splash/services/core/configuration/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/configuration/a;->d()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/splash/services/core/webview/bridge/c;->f([Ljava/lang/Class;)V

    new-instance p1, Lcom/unity3d/splash/services/core/webview/a;

    invoke-static {}, Lcom/unity3d/splash/services/c/b/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/unity3d/splash/services/core/webview/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/b;->b:Lcom/unity3d/splash/services/core/webview/a;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/splash/services/core/webview/b$c;-><init>(Lcom/unity3d/splash/services/core/webview/b;Lcom/unity3d/splash/services/core/webview/b$a;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/unity3d/splash/services/core/webview/b;->b:Lcom/unity3d/splash/services/core/webview/a;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/b$b;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/splash/services/core/webview/b$b;-><init>(Lcom/unity3d/splash/services/core/webview/b;Lcom/unity3d/splash/services/core/webview/b$a;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/splash/services/core/configuration/a;Lcom/unity3d/splash/services/core/webview/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/core/webview/b;-><init>(Lcom/unity3d/splash/services/core/configuration/a;)V

    return-void
.end method

.method static synthetic a()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/b;->f:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static b(Lcom/unity3d/splash/services/core/configuration/a;)Z
    .locals 2

    invoke-static {}, Lcom/unity3d/splash/services/core/log/DeviceLog;->d()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/unity3d/splash/services/core/webview/b$a;

    invoke-direct {v0, p0}, Lcom/unity3d/splash/services/core/webview/b$a;-><init>(Lcom/unity3d/splash/services/core/configuration/a;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/c/a/b;->d(Ljava/lang/Runnable;)V

    new-instance p0, Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object p0, Lcom/unity3d/splash/services/core/webview/b;->f:Landroid/os/ConditionVariable;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/b;->e()Lcom/unity3d/splash/services/core/webview/b;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Cannot call create() from main thread!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e()Lcom/unity3d/splash/services/core/webview/b;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/b;->e:Lcom/unity3d/splash/services/core/webview/b;

    return-object v0
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "javascript:window."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invoking javascript: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/b;->f()Lcom/unity3d/splash/services/core/webview/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/unity3d/splash/services/core/webview/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static m(Lcom/unity3d/splash/services/core/webview/b;)V
    .locals 0

    sput-object p0, Lcom/unity3d/splash/services/core/webview/b;->e:Lcom/unity3d/splash/services/core/webview/b;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/unity3d/splash/services/core/webview/bridge/b;
    .locals 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/b;->d:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/b;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/splash/services/core/webview/bridge/b;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()Lcom/unity3d/splash/services/core/configuration/a;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/b;->c:Lcom/unity3d/splash/services/core/configuration/a;

    return-object v0
.end method

.method public f()Lcom/unity3d/splash/services/core/webview/a;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/b;->b:Lcom/unity3d/splash/services/core/webview/a;

    return-object v0
.end method

.method public g(Lcom/unity3d/splash/services/core/webview/bridge/a;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/b;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "invokeBatchCallback ignored because web app is not loaded"

    invoke-static {p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/webview/bridge/a;->d()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity3d/splash/services/core/webview/bridge/CallbackStatus;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Enum;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    aget-object v6, v3, v1

    check-cast v6, Ljava/lang/String;

    array-length v7, v3

    invoke-static {v3, v2, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v8, v3, v6

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_4
    :try_start_0
    const-string p1, "nativebridge"

    const-string v1, "handleCallback"

    invoke-direct {p0, p1, v1, v0}, Lcom/unity3d/splash/services/core/webview/b;->h(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "Error while invoking batch response for WebView"

    invoke-static {v0, p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_3
    return v2
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/splash/services/core/webview/b;->a:Z

    return v0
.end method

.method public j(Lcom/unity3d/splash/services/core/webview/bridge/b;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/splash/services/core/webview/b;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/unity3d/splash/services/core/webview/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/unity3d/splash/services/core/webview/bridge/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs k(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/webview/b;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sendEvent ignored because web app is not loaded"

    invoke-static {p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p1, "nativebridge"

    const-string p2, "handleEvent"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/splash/services/core/webview/b;->h(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Error while sending event to WebView"

    invoke-static {p2, p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    return v1
.end method

.method public l(Lcom/unity3d/splash/services/core/configuration/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/b;->c:Lcom/unity3d/splash/services/core/configuration/a;

    return-void
.end method

.method public n(Z)V
    .locals 0

    sget-object p1, Lcom/unity3d/splash/services/core/webview/b;->f:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/splash/services/core/webview/b;->a:Z

    return-void
.end method

.method public p(Lcom/unity3d/splash/services/core/webview/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/core/webview/b;->b:Lcom/unity3d/splash/services/core/webview/a;

    return-void
.end method
