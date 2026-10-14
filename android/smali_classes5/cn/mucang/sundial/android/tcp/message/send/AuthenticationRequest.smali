.class public Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/SendMessage;
.implements Lcn/mucang/sundial/android/tcp/message/Request;


# instance fields
.field private encrypted:[B

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcn/mucang/sundial/android/tcp/SocketClient;)Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 3
    new-instance v3, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v3}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/SocketClient;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 5
    invoke-virtual {v3, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    const-string v4, "SHA-256"

    .line 6
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-string v4, "RSA/ECB/PKCS1Padding"

    .line 9
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    .line 10
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/SocketClient;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-virtual {v4, v5, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 11
    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;->setEncrypted([B)V

    .line 13
    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;->setTimestamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "sundial-TAG"

    const-string v1, "\u751f\u6210\u9274\u6743\u5305\u5931\u8d25"

    .line 14
    invoke-static {v0, v1, p0}, Lcn/mucang/android/core/utils/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public encode()[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget-wide v1, p0, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;->encrypted:[B

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncrypted()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;->encrypted:[B

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x102

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;->timestamp:J

    return-wide v0
.end method

.method public setEncrypted([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;->encrypted:[B

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/tcp/message/send/AuthenticationRequest;->timestamp:J

    return-void
.end method
