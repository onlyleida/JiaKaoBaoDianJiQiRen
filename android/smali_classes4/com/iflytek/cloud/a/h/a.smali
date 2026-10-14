.class public Lcom/iflytek/cloud/a/h/a;
.super Lcom/iflytek/cloud/a/f/a;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/cloud/a/h/d;

.field private e:Lcom/iflytek/cloud/a/h/b;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private final l:Lorg/json/JSONObject;

.field private m:Lorg/json/JSONArray;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    .line 4
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    .line 5
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/a;->f:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lcom/iflytek/cloud/a/h/a;->g:I

    .line 7
    iput p3, p0, Lcom/iflytek/cloud/a/h/a;->h:I

    .line 8
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/h/a;->i:Z

    .line 9
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/h/a;->j:Z

    .line 10
    iput p3, p0, Lcom/iflytek/cloud/a/h/a;->k:I

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/h/a;->l:Lorg/json/JSONObject;

    .line 12
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/a;->m:Lorg/json/JSONArray;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/iflytek/cloud/a/h/a;->n:I

    const/16 v0, 0x64

    .line 14
    iput v0, p0, Lcom/iflytek/cloud/a/h/a;->o:I

    .line 15
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/a;->p:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/iflytek/cloud/a/h/a;->q:I

    .line 17
    new-instance p1, Lcom/iflytek/cloud/a/h/d;

    invoke-direct {p1}, Lcom/iflytek/cloud/a/h/d;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/h/a;->f:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    return-void
.end method

.method private a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/iflytek/cloud/a/h/a;->o:I

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/iflytek/cloud/a/h/a;->g:I

    mul-int v2, v2, v0

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 10
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/h/a;->j:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->l:Lorg/json/JSONObject;

    iget v1, p0, Lcom/iflytek/cloud/a/h/a;->k:I

    const-string v2, "audio_len"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->m:Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 13
    iget-object v2, p0, Lcom/iflytek/cloud/a/h/a;->l:Lorg/json/JSONObject;

    const-string v3, "spell_info"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iput-object v1, p0, Lcom/iflytek/cloud/a/h/a;->m:Lorg/json/JSONArray;

    .line 15
    :cond_1
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    iget-object v4, p0, Lcom/iflytek/cloud/a/h/a;->f:Ljava/util/ArrayList;

    iget v6, p0, Lcom/iflytek/cloud/a/h/a;->h:I

    iget v7, p0, Lcom/iflytek/cloud/a/h/a;->g:I

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->l:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->l:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v1

    .line 17
    :goto_0
    invoke-interface/range {v3 .. v8}, Lcom/iflytek/cloud/a/h/b;->a(Ljava/util/ArrayList;IIILjava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/h/a;->f:Ljava/util/ArrayList;

    .line 19
    iget v0, p0, Lcom/iflytek/cloud/a/h/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/iflytek/cloud/a/h/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/h/a;->h:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/iflytek/cloud/a/h/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/h/a;->c:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "tts_spell_info"

    invoke-virtual {p1, v0, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iflytek/cloud/a/h/a;->i:Z

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    iget-boolean p2, p0, Lcom/iflytek/cloud/a/h/a;->j:Z

    const-string v0, "audio_info"

    invoke-virtual {p1, v0, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iflytek/cloud/a/h/a;->j:Z

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->start()V

    return-void

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x4e29

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method protected b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SDKSessionBegin"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1, p0}, Lcom/iflytek/cloud/a/h/d;->sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/a;->getTextEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/a;->getTextEncoding()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unicode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    const/4 v4, 0x2

    if-lt v2, v3, :cond_1

    .line 6
    array-length v2, v0

    new-array v2, v2, [B

    .line 7
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :goto_0
    array-length v3, v0

    div-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v3, 0x1

    .line 9
    aget-byte v6, v0, v3

    aput-byte v6, v2, v5

    .line 10
    aget-byte v5, v0, v5

    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/h/d;->a([B)V

    goto :goto_1

    .line 12
    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v4

    new-array v2, v2, [B

    .line 13
    array-length v3, v0

    sub-int/2addr v3, v4

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/h/d;->a([B)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/a/h/d;->a([B)V

    .line 16
    :goto_1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->d:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    const/4 v0, 0x5

    .line 17
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    .line 18
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->updateTimeoutMsg()V

    goto :goto_2

    .line 19
    :cond_3
    iget v2, p0, Lcom/iflytek/cloud/a/h/a;->q:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/iflytek/cloud/a/h/a;->q:I

    const/16 v4, 0x28

    if-gt v2, v4, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/16 v2, 0xf

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    :cond_4
    :goto_2
    return-void

    .line 22
    :cond_5
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1
.end method

.method protected c()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "GetNotifyResult"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/h/d;->d()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/h/d;->a()[B

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/a;->getSessionID()Ljava/lang/String;

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 5
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    if-eqz v3, :cond_6

    .line 6
    iget v3, p0, Lcom/iflytek/cloud/a/h/a;->k:I

    array-length v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/iflytek/cloud/a/h/a;->k:I

    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_0

    .line 8
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v3}, Lcom/iflytek/cloud/a/h/d;->b()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x2

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v3}, Lcom/iflytek/cloud/a/h/d;->b()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-gez v3, :cond_1

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get audio index value error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 11
    :cond_1
    iget-boolean v4, p0, Lcom/iflytek/cloud/a/h/a;->i:Z

    if-eqz v4, :cond_3

    .line 12
    iget-object v4, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v4}, Lcom/iflytek/cloud/a/h/d;->c()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 14
    iget-object v5, p0, Lcom/iflytek/cloud/a/h/a;->m:Lorg/json/JSONArray;

    if-nez v5, :cond_2

    .line 15
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iput-object v5, p0, Lcom/iflytek/cloud/a/h/a;->m:Lorg/json/JSONArray;

    .line 16
    :cond_2
    iget-object v5, p0, Lcom/iflytek/cloud/a/h/a;->m:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    :cond_3
    iget v4, p0, Lcom/iflytek/cloud/a/h/a;->n:I

    if-gez v4, :cond_4

    iget v4, p0, Lcom/iflytek/cloud/a/h/a;->g:I

    if-eqz v4, :cond_4

    if-eq v3, v4, :cond_4

    iget-object v4, p0, Lcom/iflytek/cloud/a/h/a;->f:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tts msc get audio beg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/iflytek/cloud/a/h/a;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/iflytek/cloud/a/h/a;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/iflytek/cloud/a/h/a;->a()V

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->updateTimeoutMsg()V

    .line 22
    iput v3, p0, Lcom/iflytek/cloud/a/h/a;->g:I

    .line 23
    iget-object v3, p0, Lcom/iflytek/cloud/a/h/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget v0, p0, Lcom/iflytek/cloud/a/h/a;->n:I

    if-ltz v0, :cond_5

    .line 25
    invoke-direct {p0}, Lcom/iflytek/cloud/a/h/a;->a()V

    .line 26
    :cond_5
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_2

    .line 27
    :cond_6
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/16 v3, 0xa

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_2

    :cond_7
    const-string v0, "tts msc get last audio"

    .line 28
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    if-eqz v0, :cond_b

    .line 30
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/h/a;->j:Z

    if-eqz v0, :cond_8

    .line 31
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->l:Lorg/json/JSONObject;

    iget v2, p0, Lcom/iflytek/cloud/a/h/a;->k:I

    const-string v3, "audio_len"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    :cond_8
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->m:Lorg/json/JSONArray;

    if-eqz v0, :cond_9

    .line 33
    iget-object v2, p0, Lcom/iflytek/cloud/a/h/a;->l:Lorg/json/JSONObject;

    const-string v3, "spell_info"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iput-object v1, p0, Lcom/iflytek/cloud/a/h/a;->m:Lorg/json/JSONArray;

    .line 35
    :cond_9
    iget-object v4, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    iget-object v5, p0, Lcom/iflytek/cloud/a/h/a;->f:Ljava/util/ArrayList;

    iget v6, p0, Lcom/iflytek/cloud/a/h/a;->o:I

    iget v7, p0, Lcom/iflytek/cloud/a/h/a;->h:I

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 37
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->l:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->l:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    :cond_a
    move-object v9, v1

    .line 38
    :goto_1
    invoke-interface/range {v4 .. v9}, Lcom/iflytek/cloud/a/h/b;->a(Ljava/util/ArrayList;IIILjava/lang/String;)V

    .line 39
    :cond_b
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    :goto_2
    return-void
.end method

.method public cancel(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/a/h/b;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    return-void
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/b;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/h/d;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/h/a;->p:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getTextEncoding()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "text_encoding"

    const-string v2, "unicode"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/h/d;->getIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/a/h/a;->a:I

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/h/d;->getIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/a/h/a;->b:I

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/a;->getSessionID()Ljava/lang/String;

    const-string v0, "SessionEndBegin"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    const-string v2, "user abort"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/h/d;->sessionEnd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/h/d;->sessionEnd(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QTts Error Code = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->d:Lcom/iflytek/cloud/a/h/d;

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/h/d;->sessionEnd(Ljava/lang/String;)V

    :goto_0
    const-string v0, "SessionEndEnd"

    .line 10
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    if-eqz v0, :cond_3

    .line 13
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_2

    const-string p1, "MscSynthesizer#onCancel"

    .line 14
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "MscSynthesizer#onEnd"

    .line 15
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/h/a;->e:Lcom/iflytek/cloud/a/h/b;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/a/h/b;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMsgProcess(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/a;->c()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/a;->b()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/h/a;->proc_Msg_Start()V

    :goto_0
    return-void
.end method

.method protected onParseParam()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/a/h/a;->n:I

    const-string v2, "tts_buffer_time"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/h/a;->n:I

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/a/h/a;->o:I

    const-string v2, "tts_proc_scale"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/h/a;->o:I

    .line 3
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->onParseParam()V

    return-void
.end method

.method protected proc_Msg_Start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts msg start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "engine_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v2, "net_check"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "cloud"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "distributed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/j;->a(Landroid/content/Context;)V

    .line 6
    :cond_1
    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    return-void
.end method
