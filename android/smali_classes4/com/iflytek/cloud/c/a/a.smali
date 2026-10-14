.class public Lcom/iflytek/cloud/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/iflytek/msc/MSCSessionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/a;->a:Z

    .line 4
    invoke-direct {p0, p2}, Lcom/iflytek/cloud/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x277f

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a([BLcom/iflytek/msc/MSCSessionInfo;)Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    :try_start_0
    iget v1, p2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 25
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :cond_0
    const-string p1, "ret"

    .line 26
    :try_start_1
    iget p2, p2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "face result add errorinfo exception"

    .line 27
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 28
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSC isLoaded\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    const-string v0, "MSCSessionBegin"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v0, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {p1, v0}, Lcom/iflytek/msc/MSC;->QIFDInit([BLjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, p1}, Lcom/iflytek/msc/MSC;->QIFDInit([BLjava/lang/Object;)V

    :goto_0
    const-string p1, "SessionBeginEnd"

    .line 8
    invoke-static {p1, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget p1, p1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QIFDINIT INIT FAIL, ERRORCODE:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "QIFDINIT INIT SUCCESS"

    .line 11
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 12
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p1}, Lcom/iflytek/cloud/util/VerifierUtil;->ARGB2Gray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/c/a/a;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Method detectARGB:null parameter or not ARGB bitmap"

    .line 15
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a([BIIII)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    if-ltz p5, :cond_1

    const/4 v1, 0x3

    if-le p5, v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v1}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    const-string v1, "LastDataFlag"

    .line 17
    invoke-static {v1, v0}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    array-length v3, p1

    iget-object v8, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v8}, Lcom/iflytek/msc/MSC;->QIFDMultitracker([BIIIIILjava/lang/Object;)[B

    move-result-object p1

    const-string p2, "GetNotifyResult"

    .line 19
    invoke-static {p2, v0}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/c/a/a;->a([BLcom/iflytek/msc/MSCSessionInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "Method trackNV21:invalid parameters"

    .line 21
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 4

    .line 29
    iget-boolean v0, p0, Lcom/iflytek/cloud/c/a/a;->a:Z

    if-nez v0, :cond_0

    const-string v0, "QIFDFINIT"

    .line 30
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string v0, "SessionEndBegin"

    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/iflytek/msc/MSC;->QIFDFini()I

    move-result v0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSC.QIFDFini result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string v0, "SessionEndEnd"

    .line 34
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/iflytek/cloud/c/a/a;->a:Z

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v1}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    const-string v1, "LastDataFlag"

    .line 3
    invoke-static {v1, v0}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/iflytek/cloud/util/VerifierUtil;->getBitmapsize(Landroid/graphics/Bitmap;)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {p1, v1, v2}, Lcom/iflytek/msc/MSC;->QIFDFacedetect(Landroid/graphics/Bitmap;ILjava/lang/Object;)[B

    move-result-object p1

    const-string v1, "GetNotifyResult"

    .line 5
    invoke-static {v1, v0}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/cloud/c/a/a;->a([BLcom/iflytek/msc/MSCSessionInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "Method detectGray:null parameter or not gray bitmap"

    .line 7
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    return-object v0
.end method
