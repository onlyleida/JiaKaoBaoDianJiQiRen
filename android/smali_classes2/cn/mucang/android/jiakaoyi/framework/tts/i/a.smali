.class public Lcn/mucang/android/jiakaoyi/framework/tts/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ".aac"

    .line 4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->d(Lcn/mucang/android/jiakaoyi/framework/utils/s;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Lcn/mucang/android/jiakaoyi/framework/h/b;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/t;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->url:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->filePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/i/a$a;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/i/a$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->d(Lcn/mucang/android/jiakaoyi/framework/utils/s;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->filePath:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v3
.end method
