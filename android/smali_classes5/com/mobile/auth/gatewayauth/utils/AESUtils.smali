.class public Lcom/mobile/auth/gatewayauth/utils/AESUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
.end annotation


# static fields
.field private static final CipherMode:Ljava/lang/String; = "AES/CBC/PKCS7Padding"


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

.method private static native createIV(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;
.end method

.method private static native createKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
.end method

.method public static native decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decryptBase642Byte(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native decryptBase642String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decryptByte2Byte([BLjava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native decryptByte2String([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decryptString2Byte(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encryptByte2Base64([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encryptByte2Byte([BLjava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native encryptByte2String([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encryptString2Base64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static encryptString2Byte(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/utils/AESUtils;->encryptByte2Byte([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static native encryptString2String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
