.class public Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field public code:I

.field public content:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public kemu:I

.field public key:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;->code:I

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;->content:Ljava/lang/String;

    .line 5
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;->filePath:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->a()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;->kemu:I

    .line 7
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;->key:Ljava/lang/String;

    .line 8
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;->fileSize:J

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string p3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;->time:Ljava/lang/String;

    return-void
.end method
