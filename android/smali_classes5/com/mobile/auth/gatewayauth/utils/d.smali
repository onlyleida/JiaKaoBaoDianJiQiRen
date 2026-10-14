.class public Lcom/mobile/auth/gatewayauth/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/mobile/auth/q/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;

    invoke-direct {v1}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;-><init>()V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setOsVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setDeviceBrand(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/security/PackageUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setPackageName(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/security/PackageUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setAppVersion(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/security/PackageUtils;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setSign(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setVendorKey(Ljava/lang/String;)V

    const-string p2, "2.12.1.2"

    invoke-virtual {v1, p2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setSdkVersion(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setOperatorCode(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setNetworkType(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setSceneCode(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TerminalInfo;

    sget-object p0, Lcom/mobile/auth/gatewayauth/manager/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setUniqueId(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TerminalInfo;

    invoke-static {v1, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->toJson(Ljava/lang/Object;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;

    invoke-direct {v1}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;-><init>()V

    invoke-virtual {v1, p4}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setAccessCode(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/d;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setOsVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/d;->c()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/d;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setDeviceBrand(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/security/PackageUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setPackageName(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/security/PackageUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setAppVersion(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/security/PackageUtils;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setSign(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setVendorKey(Ljava/lang/String;)V

    const-string p4, "2.12.1.2"

    invoke-virtual {v1, p4}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setSdkVersion(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setOperatorCode(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setNetworkType(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setInnerIP(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setCsrf(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TerminalInfo;

    invoke-virtual {v1, p3}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setSceneCode(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TerminalInfo;

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setCertifyId(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setCustomId(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->toJson(Ljava/lang/Object;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method
