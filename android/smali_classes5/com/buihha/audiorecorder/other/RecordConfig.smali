.class public Lcom/buihha/audiorecorder/other/RecordConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;
    }
.end annotation


# instance fields
.field private channelConfig:I

.field private encodingConfig:I

.field private format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

.field private recordDir:Ljava/lang/String;

.field private sampleRate:I

.field private saveToFile:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->MP3:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    iput-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const/16 v0, 0x10

    .line 3
    iput v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->channelConfig:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->encodingConfig:I

    const/16 v0, 0x3e80

    .line 5
    iput v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->sampleRate:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->saveToFile:Z

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "%s/Record/"

    .line 9
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->recordDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;)V
    .locals 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->MP3:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    iput-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const/16 v0, 0x10

    .line 12
    iput v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->channelConfig:I

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->encodingConfig:I

    const/16 v0, 0x3e80

    .line 14
    iput v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->sampleRate:I

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->saveToFile:Z

    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "%s/Record/"

    .line 18
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->recordDir:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    return-void
.end method

.method public constructor <init>(Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;III)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->MP3:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    iput-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const/16 v0, 0x10

    .line 22
    iput v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->channelConfig:I

    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->encodingConfig:I

    const/16 v0, 0x3e80

    .line 24
    iput v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->sampleRate:I

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->saveToFile:Z

    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "%s/Record/"

    .line 28
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->recordDir:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    .line 30
    iput p2, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->channelConfig:I

    .line 31
    iput p3, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->encodingConfig:I

    .line 32
    iput p4, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->sampleRate:I

    return-void
.end method

.method public static getDefaultConfig()Lcom/buihha/audiorecorder/other/RecordConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/buihha/audiorecorder/other/RecordConfig;

    invoke-direct {v0}, Lcom/buihha/audiorecorder/other/RecordConfig;-><init>()V

    const/16 v1, 0x3e80

    .line 2
    iput v1, v0, Lcom/buihha/audiorecorder/other/RecordConfig;->sampleRate:I

    const/16 v1, 0x10

    .line 3
    iput v1, v0, Lcom/buihha/audiorecorder/other/RecordConfig;->channelConfig:I

    .line 4
    sget-object v1, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->MP3:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    iput-object v1, v0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const/4 v1, 0x2

    .line 5
    iput v1, v0, Lcom/buihha/audiorecorder/other/RecordConfig;->encodingConfig:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/buihha/audiorecorder/other/RecordConfig;->saveToFile:Z

    return-object v0
.end method


# virtual methods
.method public getChannelConfig()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->channelConfig:I

    return v0
.end method

.method public getChannelCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->channelConfig:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getEncoding()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    sget-object v1, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->MP3:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const/16 v2, 0x10

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->encodingConfig:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getEncodingConfig()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    sget-object v1, Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;->MP3:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->encodingConfig:I

    return v0
.end method

.method public getFormat()Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    return-object v0
.end method

.method public getRealEncoding()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->encodingConfig:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0x10

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->recordDir:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->sampleRate:I

    return v0
.end method

.method public isSaveToFile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->saveToFile:Z

    return v0
.end method

.method public setChannelConfig(I)Lcom/buihha/audiorecorder/other/RecordConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->channelConfig:I

    return-object p0
.end method

.method public setEncodingConfig(I)Lcom/buihha/audiorecorder/other/RecordConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->encodingConfig:I

    return-object p0
.end method

.method public setFormat(Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;)Lcom/buihha/audiorecorder/other/RecordConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    return-object p0
.end method

.method public setRecordDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->recordDir:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)Lcom/buihha/audiorecorder/other/RecordConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->sampleRate:I

    return-object p0
.end method

.method public setSaveToFile(Z)Lcom/buihha/audiorecorder/other/RecordConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->saveToFile:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->format:Lcom/buihha/audiorecorder/other/RecordConfig$RecordFormat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/buihha/audiorecorder/other/RecordConfig;->sampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/buihha/audiorecorder/other/RecordConfig;->getEncoding()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/buihha/audiorecorder/other/RecordConfig;->getChannelCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "\u5f55\u5236\u683c\u5f0f\uff1a %s,\u91c7\u6837\u7387\uff1a%sHz,\u4f4d\u5bbd\uff1a%s bit,\u58f0\u9053\u6570\uff1a%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
