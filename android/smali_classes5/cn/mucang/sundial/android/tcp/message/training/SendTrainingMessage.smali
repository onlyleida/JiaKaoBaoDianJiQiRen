.class public Lcn/mucang/sundial/android/tcp/message/training/SendTrainingMessage;
.super Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/SendMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;-><init>()V

    return-void
.end method

.method public static create(Lcn/mucang/sundial/android/tcp/SocketClient;Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;)Lcn/mucang/sundial/android/tcp/message/training/SendTrainingMessage;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/SendTrainingMessage;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/training/SendTrainingMessage;-><init>()V

    .line 2
    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/Send;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->setBody([B)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/SocketClient;->getRegisterInfo()Lcn/mucang/sundial/android/db/entity/RegisterInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/RegisterInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->setDeviceId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/SocketClient;->getNextTrainingMessageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->setSequence(I)V

    .line 5
    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/Message;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->setTid(I)V

    .line 6
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;

    .line 7
    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;->isRealtimeMessage()Z

    move-result v2

    .line 8
    invoke-interface {p1}, Lcn/mucang/sundial/android/tcp/message/training/ExtendSendMessage;->isNeedReply()Z

    move-result p1

    const-string v3, "SHA-256"

    invoke-direct {v1, v2, p1, v3}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;-><init>(ZZLjava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->setExtendAttribute(Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;)V

    .line 10
    invoke-static {p0, v0}, Lcn/mucang/sundial/android/tcp/message/training/SendTrainingMessage;->fillVerify(Lcn/mucang/sundial/android/tcp/SocketClient;Lcn/mucang/sundial/android/tcp/message/training/SendTrainingMessage;)V

    return-object v0
.end method

.method private static fillVerify(Lcn/mucang/sundial/android/tcp/SocketClient;Lcn/mucang/sundial/android/tcp/message/training/SendTrainingMessage;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->getMsgBody()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->getExtendAttribute()Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage$ExtendAttribute;->getDigestType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/SocketClient;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 7
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 8
    invoke-virtual {p1, p0}, Lcn/mucang/sundial/android/tcp/message/training/TrainingMessage;->setVerify([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x900

    return v0
.end method
