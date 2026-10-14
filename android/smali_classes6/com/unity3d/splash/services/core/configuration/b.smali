.class public Lcom/unity3d/splash/services/core/configuration/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/reflect/Method;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    instance-of v4, v4, Landroid/webkit/JavascriptInterface;

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/splash/services/core/configuration/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->a()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Unity Ads cache directory check OK"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "Unity Ads cache directory check fail: no working cache directory available"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static d()Z
    .locals 8

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.unity3d.splash.services.core.webview.bridge.d"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "handleInvocation"

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "handleCallback"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v0, v6, v2

    aput-object v0, v6, v1

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v4}, Lcom/unity3d/splash/services/core/configuration/b;->a(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/configuration/b;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unity Ads ProGuard check OK"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "Unity Ads ProGuard check fail: missing @JavascriptInterface annotations in Unity Ads web bridge"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown exception during Unity Ads ProGuard check: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    return v1

    :catch_1
    move-exception v0

    const-string v1, "Unity Ads ProGuard check fail: Unity Ads web bridge methods not found"

    :goto_0
    invoke-static {v1, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2

    :catch_2
    move-exception v0

    const-string v1, "Unity Ads ProGuard check fail: Unity Ads web bridge class not found"

    goto :goto_0
.end method
