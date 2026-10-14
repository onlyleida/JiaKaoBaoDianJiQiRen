.class public Lcn/mucang/android/jiakaoyi/framework/tts/h/a;
.super Lcn/mucang/android/jiakaoyi/framework/e/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/e/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRequestConfig()Lcn/mucang/android/core/api/request/e/c;
    .locals 8

    .line 1
    new-instance v7, Lcn/mucang/android/core/api/request/e/c;

    const-wide/16 v1, 0xbb8

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0xbb8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/core/api/request/e/c;-><init>(JJJ)V

    return-object v7
.end method

.method public m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Lcn/mucang/android/core/api/exception/HttpException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->m:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->e()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getSpeedArray()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getSpeedArray()[I

    move-result-object v2

    aget v1, v2, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x32

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/api/open/voice/get-voice.htm?key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&person="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getVoiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&speed="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&pitch=50&text="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/n;->httpGet(Ljava/lang/String;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    const-class p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;

    return-object p1
.end method

.method public n(Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->m:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->e()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getSpeedArray()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getSpeedArray()[I

    move-result-object v2

    aget v1, v2, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x32

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/api/open/voice/add-voice.htm?key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;->key:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&fileName="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&person="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getVoiceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&speed="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&pitch=50&text="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p2, p1}, Lcn/mucang/android/core/api/a;->httpPost(Ljava/lang/String;Ljava/io/File;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    .line 8
    const-class p2, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;

    invoke-virtual {p1, p2}, Lcn/mucang/android/core/api/ApiResponse;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;

    return-object p1
.end method
