.class public Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
.end annotation


# static fields
.field public static final IV_PARAMETER_SPEC:Ljava/lang/String; = "0000000000000000"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native encrpytAESKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encrpytAESKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static encryptInfoForCertifyId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

    const-string v2, "2.12.1.2"

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setSdkVersion(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setOperatorCode(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/utils/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setNetworkType(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setSceneCode(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TerminalInfo;

    sget-object p0, Lcom/mobile/auth/gatewayauth/manager/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setUniqueId(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/model/TerminalInfo;

    invoke-virtual {v1, p2}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setCustomId(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/mobile/auth/gatewayauth/model/TerminalInfo;->setMetaInfo(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->toJson(Ljava/lang/Object;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/mobile/auth/gatewayauth/model/RStruct;

    invoke-direct {p1}, Lcom/mobile/auth/gatewayauth/model/RStruct;-><init>()V

    invoke-static {p0, p5}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mobile/auth/gatewayauth/model/RStruct;->setC(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/mobile/auth/gatewayauth/utils/EncryptUtils;->encrpytAESKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mobile/auth/gatewayauth/model/RStruct;->setK(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/mobile/auth/gatewayauth/model/RStruct;->setRid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mobile/auth/gatewayauth/model/RStruct;->toJson()Lorg/json/JSONObject;

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

.method public static native encryptToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native generateAesKey()Ljava/lang/String;
.end method

.method private static native getSecret1()Ljava/lang/String;
.end method

.method private static native getSecret2()Ljava/lang/String;
.end method

.method private static native getSecret3()Ljava/lang/String;
.end method

.method private static native getSecret4()Ljava/lang/String;
.end method

.method public static native noEncryptTinfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
