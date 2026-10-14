.class public Lcom/iflytek/cloud/a/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "http://wke.openspeech.cn/wakeup/"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/cloud/msc/util/i;

.field private d:Lcom/iflytek/cloud/RequestListener;

.field private e:Lcom/iflytek/cloud/msc/util/f;

.field public f:Lcom/iflytek/cloud/msc/util/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/d;->b:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/d;->c:Lcom/iflytek/cloud/msc/util/i;

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/d;->d:Lcom/iflytek/cloud/RequestListener;

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/d;->e:Lcom/iflytek/cloud/msc/util/f;

    .line 6
    new-instance v0, Lcom/iflytek/cloud/a/d/d$a;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/a/d/d$a;-><init>(Lcom/iflytek/cloud/a/d/d;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/d;->f:Lcom/iflytek/cloud/msc/util/i$a;

    .line 7
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/d;->b:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/f;->a(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/f;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/d;->e:Lcom/iflytek/cloud/msc/util/f;

    .line 9
    new-instance p1, Lcom/iflytek/cloud/msc/util/i;

    invoke-direct {p1}, Lcom/iflytek/cloud/msc/util/i;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/d;->c:Lcom/iflytek/cloud/msc/util/i;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/a/d/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/d/d;->b:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    const-string v0, "expiredate"

    const-string v1, "uid"

    const-string v2, "restype"

    const-string v3, "resid"

    const-string v4, "appid"

    const-string v5, "restime"

    const-string v6, "resver"

    .line 18
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "respath"

    .line 19
    invoke-virtual {v7, v8, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    new-instance p0, Lorg/json/JSONTokener;

    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string p0, "athinfo"

    .line 22
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 23
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "d"

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p0, "ivwword"

    .line 30
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "words"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    const-string v1, ""

    move-object v3, v1

    const/4 v2, 0x0

    .line 31
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "text"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "threshold"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "wakelist"

    .line 37
    invoke-virtual {v7, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 38
    :try_start_2
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string p0, "unkown"

    .line 39
    invoke-virtual {v7, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 40
    :goto_1
    :try_start_4
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v7, v5, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    const-wide/16 p0, 0x0

    .line 41
    :try_start_5
    invoke-virtual {v7, v5, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    :goto_2
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 43
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object p0

    const-string p1, "ver_ivw"

    .line 44
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string p0, "wakever"

    .line 45
    invoke-virtual {v7, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "root:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    const/4 v7, 0x0

    const-string p0, "compose resinfo error"

    .line 47
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    :goto_3
    return-object v7
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "unkown"

    const-string v1, "resver"

    const/4 v2, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "user ivw resver unkown"

    .line 49
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    return-object v2

    .line 50
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 51
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "appid"

    .line 52
    invoke-static {v0, p0, p1}, Lcom/iflytek/cloud/msc/util/d;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "resid"

    .line 53
    invoke-static {v0, p0, p1}, Lcom/iflytek/cloud/msc/util/d;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "restype"

    .line 54
    invoke-static {v0, p0, p1}, Lcom/iflytek/cloud/msc/util/d;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "wakelist"

    .line 55
    invoke-static {v0, p0, p1}, Lcom/iflytek/cloud/msc/util/d;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "restime"

    .line 56
    invoke-static {v0, p0, p1}, Lcom/iflytek/cloud/msc/util/d;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object p0

    :cond_4
    :goto_1
    const-string p1, "cfg ivw resver unkown or unequal"

    .line 57
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 58
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method static synthetic b(Lcom/iflytek/cloud/a/d/d;)Lcom/iflytek/cloud/RequestListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/d/d;->d:Lcom/iflytek/cloud/RequestListener;

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 10
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    const/4 v1, 0x0

    .line 11
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIvwResInfo resPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/iflytek/msc/MSC;->QIVWGetResInfo([B[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "read ivw resoure error:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 14
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    const-string v3, "utf-8"

    invoke-direct {p1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1}, Lcom/iflytek/cloud/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 17
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    const-string p0, "get res info error"

    .line 18
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    return-object v1

    :catch_2
    const-string p0, "get res info error, unsatisfiedlinkerror"

    .line 19
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    return-object v1
.end method

.method public static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 6

    const-string v0, "restime"

    const-string v1, "unkown"

    const-string v2, "resver"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "appid"

    .line 4
    invoke-static {v1, p0, p1}, Lcom/iflytek/cloud/msc/util/d;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "resid"

    .line 5
    invoke-static {v1, p0, p1}, Lcom/iflytek/cloud/msc/util/d;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "restype"

    .line 6
    invoke-static {v1, p0, p1}, Lcom/iflytek/cloud/msc/util/d;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "wakelist"

    .line 7
    invoke-static {v1, p0, p1}, Lcom/iflytek/cloud/msc/util/d;->b(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v1, p0

    if-lez v0, :cond_3

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const-class v0, Lcom/iflytek/cloud/a/d/d;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {p0, v1}, Lcom/iflytek/cloud/a/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p0, v1}, Lcom/iflytek/cloud/a/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 4
    :cond_1
    :try_start_2
    invoke-static {p1, v1}, Lcom/iflytek/cloud/a/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    monitor-exit v0

    return-object p0

    .line 5
    :cond_2
    :try_start_3
    invoke-static {p0, p1}, Lcom/iflytek/cloud/a/d/d;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I
    .locals 1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/d;->e:Lcom/iflytek/cloud/msc/util/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/msc/util/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0x4e2c

    return p1
.end method

.method public a(Lorg/json/JSONObject;Lcom/iflytek/cloud/RequestListener;)I
    .locals 3

    if-nez p1, :cond_0

    const/16 p1, 0x4e2e

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iput-object p2, p0, Lcom/iflytek/cloud/a/d/d;->d:Lcom/iflytek/cloud/RequestListener;

    .line 3
    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "header"

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/d;->b:Landroid/content/Context;

    new-instance v2, Lcom/iflytek/cloud/b/a;

    invoke-direct {v2}, Lcom/iflytek/cloud/b/a;-><init>()V

    invoke-static {v1, v2}, Lcom/iflytek/cloud/b/c;->c(Landroid/content/Context;Lcom/iflytek/cloud/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "info"

    .line 5
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "post data:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/e;->b([B)[B

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/d;->c:Lcom/iflytek/cloud/msc/util/i;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/msc/util/i;->a(I)V

    .line 9
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/d;->c:Lcom/iflytek/cloud/msc/util/i;

    sget-object v0, Lcom/iflytek/cloud/a/d/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/iflytek/cloud/msc/util/i;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 10
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/d;->c:Lcom/iflytek/cloud/msc/util/i;

    iget-object p2, p0, Lcom/iflytek/cloud/a/d/d;->f:Lcom/iflytek/cloud/msc/util/i$a;

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/msc/util/i;->a(Lcom/iflytek/cloud/msc/util/i$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x4e23

    return p1
.end method

.method public a()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/d;->c:Lcom/iflytek/cloud/msc/util/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/iflytek/cloud/msc/util/i;->a()V

    .line 16
    iput-object v1, p0, Lcom/iflytek/cloud/a/d/d;->c:Lcom/iflytek/cloud/msc/util/i;

    .line 17
    :cond_0
    iput-object v1, p0, Lcom/iflytek/cloud/a/d/d;->d:Lcom/iflytek/cloud/RequestListener;

    return-void
.end method
