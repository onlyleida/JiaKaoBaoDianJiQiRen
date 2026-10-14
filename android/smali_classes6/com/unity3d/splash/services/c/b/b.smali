.class public Lcom/unity3d/splash/services/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Lcom/unity3d/splash/services/core/cache/a; = null

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/unity3d/splash/services/c/b/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/c/b/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    sget-object v0, Lcom/unity3d/splash/services/c/b/b;->b:Lcom/unity3d/splash/services/core/cache/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unity3d/splash/services/core/cache/a;

    const-string v1, "UnitySplashAdsCache"

    invoke-direct {v0, v1}, Lcom/unity3d/splash/services/core/cache/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/splash/services/c/b/b;->j(Lcom/unity3d/splash/services/core/cache/a;)V

    :cond_0
    sget-object v0, Lcom/unity3d/splash/services/c/b/b;->b:Lcom/unity3d/splash/services/core/cache/a;

    invoke-virtual {v0, p0}, Lcom/unity3d/splash/services/core/cache/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/c/b/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "release"

    invoke-static {v0}, Lcom/unity3d/splash/services/c/b/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/splash/services/c/b/b;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/unity3d/splash/services/c/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/splash/services/c/b/b;->c:Z

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "https://splash-ads.unitychina.cn/webview/release/native/config.json"

    return-object p0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    const-string v0, "UnitySplashAdsStorage-"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/splash/services/c/b/b;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/UnitySplashAdsWebApp.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()I
    .locals 1

    const/16 v0, 0xce4

    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    const-string v0, "3.3.0"

    return-object v0
.end method

.method public static j(Lcom/unity3d/splash/services/core/cache/a;)V
    .locals 0

    sput-object p0, Lcom/unity3d/splash/services/c/b/b;->b:Lcom/unity3d/splash/services/core/cache/a;

    return-void
.end method

.method public static k(Z)V
    .locals 0

    sput-boolean p0, Lcom/unity3d/splash/services/c/b/b;->c:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    :goto_0
    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->i(I)V

    return-void

    :cond_0
    const/4 p0, 0x4

    goto :goto_0
.end method

.method public static l(J)V
    .locals 0

    return-void
.end method

.method public static m(Z)V
    .locals 0

    return-void
.end method

.method public static n(Lcom/unity3d/splash/services/a;)V
    .locals 0

    return-void
.end method

.method public static o(Z)V
    .locals 0

    return-void
.end method

.method public static p(Z)V
    .locals 0

    return-void
.end method
