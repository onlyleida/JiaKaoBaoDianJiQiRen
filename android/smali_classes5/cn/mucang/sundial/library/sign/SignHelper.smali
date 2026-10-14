.class public Lcn/mucang/sundial/library/sign/SignHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SignHelper"


# instance fields
.field private algorithm:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method private constructor <init>(Lcn/mucang/sundial/library/sign/EncryptAlgorithm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/library/sign/SignHelper;->readPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/library/sign/SignHelper;->privateKey:Ljava/security/PrivateKey;

    .line 3
    iput-object p1, p0, Lcn/mucang/sundial/library/sign/SignHelper;->algorithm:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    return-void
.end method

.method private buildQuery(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?v=1.0.0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/library/sign/SignHelper;->algorithm:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&sign="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static create(Lcn/mucang/sundial/library/sign/EncryptAlgorithm;)Lcn/mucang/sundial/library/sign/SignHelper;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/sign/SignHelper;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sign/SignHelper;-><init>(Lcn/mucang/sundial/library/sign/EncryptAlgorithm;)V

    return-object v0
.end method

.method private static readPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->readPrivateKey(Lcn/mucang/sundial/android/db/entity/RegisterInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method private signTimestamp(J)[B
    .locals 11

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/16 v9, 0xd

    if-lt v0, v9, :cond_0

    new-array v0, v8, [B

    const/16 v9, 0x38

    ushr-long v9, p1, v9

    long-to-int v10, v9

    int-to-byte v9, v10

    aput-byte v9, v0, v6

    const/16 v6, 0x30

    ushr-long v9, p1, v6

    long-to-int v6, v9

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    const/16 v4, 0x28

    ushr-long v9, p1, v4

    long-to-int v4, v9

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    ushr-long v9, p1, v2

    long-to-int v2, v9

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-long v1, p1, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    ushr-long v2, p1, v3

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    ushr-long v2, p1, v8

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v7, [B

    ushr-long v9, p1, v5

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    ushr-long v5, p1, v3

    long-to-int v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    ushr-long v3, p1, v8

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public buildGetUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/sundial/library/sign/SignException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length v3, p2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 5
    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    aget-object v5, p2, v4

    invoke-static {v5}, Lcn/mucang/android/core/encode/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2, v0, v1}, Lcn/mucang/sundial/library/sign/SignHelper;->sign([BJ)Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v2, Ljava/text/MessageFormat;

    invoke-direct {v2, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1, p2}, Lcn/mucang/sundial/library/sign/SignHelper;->buildQuery(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildPostUrl(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/sundial/library/sign/SignException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p2, v0, v1}, Lcn/mucang/sundial/library/sign/SignHelper;->sign([BJ)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1, p2}, Lcn/mucang/sundial/library/sign/SignHelper;->buildQuery(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sign([BJ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/sundial/library/sign/SignException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/library/sign/SignHelper;->algorithm:Lcn/mucang/sundial/library/sign/EncryptAlgorithm;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/sign/EncryptAlgorithm;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_0

    .line 3
    invoke-direct {p0, p2, p3}, Lcn/mucang/sundial/library/sign/SignHelper;->signTimestamp(J)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string p2, "RSA/ECB/PKCS1Padding"

    .line 5
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 p3, 0x1

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/sign/SignHelper;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 7
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/encode/a;->e([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    new-instance p1, Lcn/mucang/sundial/library/sign/SignException;

    invoke-direct {p1}, Lcn/mucang/sundial/library/sign/SignException;-><init>()V

    throw p1
.end method
