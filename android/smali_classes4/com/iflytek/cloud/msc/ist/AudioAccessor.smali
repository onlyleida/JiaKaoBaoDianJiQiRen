.class public Lcom/iflytek/cloud/msc/ist/AudioAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;,
        Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;
    }
.end annotation


# static fields
.field private static final MAX_BUF_LEN:I = 0x500000

.field private static final MIN_OUTPUT_TIME:I = 0xbb8


# instance fields
.field private final DATA_LENGTH_OFFSET:I

.field private final FILE_FMT:Ljava/lang/String;

.field private final FILE_LENGTH_OFFSET:I

.field private final SIZE_OF_WAVE_HEADER:I

.field private mAccessFile:Ljava/io/RandomAccessFile;

.field private mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

.field private mAudioFile:Ljava/io/File;

.field private mBitsPerSample:S

.field private mBufLen:I

.field private mBuffer:[B

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mDataCount:I

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mFilePath:Ljava/lang/String;

.field private mFileSyncObj:Ljava/lang/Object;

.field private mFormat:S

.field private mLastFlushTime:J

.field private mNumChannels:S

.field private mOffset:I

.field private mSampleRate:I


# direct methods
.method protected constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFilePath:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mOffset:I

    const/high16 v2, 0x500000

    .line 5
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    new-array v2, v2, [B

    .line 6
    iput-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBuffer:[B

    .line 7
    iput v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    .line 8
    iput v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mDataCount:I

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mLastFlushTime:J

    .line 10
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    .line 11
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccessFile:Ljava/io/RandomAccessFile;

    .line 12
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    const-string v0, ".wav"

    .line 14
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->FILE_FMT:Ljava/lang/String;

    const/16 v0, 0x2c

    .line 15
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->SIZE_OF_WAVE_HEADER:I

    const/16 v0, 0x28

    .line 16
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->DATA_LENGTH_OFFSET:I

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->FILE_LENGTH_OFFSET:I

    const/4 v0, 0x1

    .line 18
    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mNumChannels:S

    .line 19
    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFormat:S

    const/16 v0, 0x10

    .line 20
    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBitsPerSample:S

    const/16 v0, 0x3e80

    .line 21
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mSampleRate:I

    .line 22
    sget-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->BUFFER:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFilePath:Ljava/lang/String;

    .line 25
    sget-object v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mOffset:I

    const/high16 v2, 0x500000

    .line 27
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    new-array v2, v2, [B

    .line 28
    iput-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBuffer:[B

    .line 29
    iput v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    .line 30
    iput v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mDataCount:I

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mLastFlushTime:J

    .line 32
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    .line 33
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccessFile:Ljava/io/RandomAccessFile;

    .line 34
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    const-string v0, ".wav"

    .line 36
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->FILE_FMT:Ljava/lang/String;

    const/16 v0, 0x2c

    .line 37
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->SIZE_OF_WAVE_HEADER:I

    const/16 v0, 0x28

    .line 38
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->DATA_LENGTH_OFFSET:I

    const/4 v0, 0x4

    .line 39
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->FILE_LENGTH_OFFSET:I

    const/4 v0, 0x1

    .line 40
    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mNumChannels:S

    .line 41
    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFormat:S

    const/16 v0, 0x10

    .line 42
    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBitsPerSample:S

    const/16 v0, 0x3e80

    .line 43
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mSampleRate:I

    .line 44
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFilePath:Ljava/lang/String;

    .line 45
    sget-object p1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->READ_ONLY:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    .line 46
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->initFile()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFilePath:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    const/4 v2, 0x0

    .line 50
    iput v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mOffset:I

    const/high16 v3, 0x500000

    .line 51
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    new-array v3, v3, [B

    .line 52
    iput-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBuffer:[B

    .line 53
    iput v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    .line 54
    iput v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mDataCount:I

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mLastFlushTime:J

    .line 56
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    .line 57
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccessFile:Ljava/io/RandomAccessFile;

    .line 58
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    const-string v0, ".wav"

    .line 60
    iput-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->FILE_FMT:Ljava/lang/String;

    const/16 v0, 0x2c

    .line 61
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->SIZE_OF_WAVE_HEADER:I

    const/16 v0, 0x28

    .line 62
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->DATA_LENGTH_OFFSET:I

    const/4 v0, 0x4

    .line 63
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->FILE_LENGTH_OFFSET:I

    const/4 v0, 0x1

    .line 64
    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mNumChannels:S

    .line 65
    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFormat:S

    const/16 v0, 0x10

    .line 66
    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBitsPerSample:S

    const/16 v0, 0x3e80

    .line 67
    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mSampleRate:I

    .line 68
    iput-object p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFilePath:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mSampleRate:I

    .line 70
    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    .line 71
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->initFile()V

    return-void
.end method

.method public static createBufferAccessor()Lcom/iflytek/cloud/msc/ist/AudioAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    invoke-direct {v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;-><init>()V

    return-object v0
.end method

.method public static createReadOnlyAccessor(Ljava/lang/String;)Lcom/iflytek/cloud/msc/ist/AudioAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWriteReadAccessor(Ljava/lang/String;I)Lcom/iflytek/cloud/msc/ist/AudioAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getFileLength()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileLength:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    int-to-long v0, v1

    return-wide v0
.end method

.method private initFile()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->BUFFER:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 4
    sget-object v2, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iget-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    if-ne v2, v3, :cond_a

    const-string v2, "/"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "/"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 7
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    const-string v2, ".wav"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".pcm"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "/"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_4
    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    .line 15
    new-instance v4, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "yyyyMMdd_HHmmss_SSS"

    :try_start_1
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".wav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    .line 19
    :goto_1
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".wav"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    goto :goto_1

    .line 22
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    .line 23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 24
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFile createNewFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccessFile:Ljava/io/RandomAccessFile;

    .line 27
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 28
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->initAudioFileHeader()V

    goto/16 :goto_2

    .line 29
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create new file \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_8
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is exists:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "create file path failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v1

    .line 34
    :cond_a
    sget-object v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->READ_ONLY:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    if-ne v1, v3, :cond_c

    .line 35
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 37
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccessFile:Ljava/io/RandomAccessFile;

    .line 38
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 39
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->readAudioInfo()V

    goto :goto_2

    .line 40
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File is not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_c
    :goto_2
    monitor-exit v0

    return-void

    .line 42
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File path is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isTimeToFlush()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mLastFlushTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private saveAudio()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "saveAudioData enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAudio write audio len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", file length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getFileLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    if-lez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    sub-int/2addr v1, v2

    .line 10
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBuffer:[B

    iget v4, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 12
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getFileLength()J

    move-result-wide v2

    long-to-int v3, v2

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3, v2, v1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeBytes(ILjava/nio/ByteBuffer;I)V

    .line 13
    iput v5, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    .line 14
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->updateAudioFileHeader()V

    .line 15
    :cond_0
    sget-object v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    if-ne v1, v2, :cond_1

    .line 16
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->isTimeToFlush()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "saveAudio flush to device."

    .line 17
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->flush()V

    .line 19
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "saveAudioData leave"

    .line 20
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AudioAccesser close enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    if-ne v1, v2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->saveAudio()V

    .line 5
    :cond_0
    sget-object v1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->BUFFER:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 8
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 9
    iput-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 12
    iput-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccessFile:Ljava/io/RandomAccessFile;

    .line 13
    :cond_2
    iput-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBuffer:[B

    .line 14
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 15
    iput-object v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "AudioAccesser close leave"

    .line 17
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mLastFlushTime:J

    .line 5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAudio([B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "getAudioData enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->BUFFER:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_3

    .line 3
    array-length v0, p1

    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getBufferLength()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBuffer:[B

    if-eqz v1, :cond_2

    .line 6
    iget v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    if-lez v2, :cond_1

    .line 7
    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    .line 9
    iput v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioData len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    move v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    goto/16 :goto_4

    .line 12
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Data array is null!"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const-string p1, "getAudioData buffer is null or length is error !"

    .line 14
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    if-eqz p1, :cond_9

    .line 15
    array-length v0, p1

    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getBufferLength()I

    move-result v1

    if-eq v0, v1, :cond_5

    goto/16 :goto_3

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_8

    .line 18
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getFileLength()J

    move-result-wide v1

    const-wide/16 v4, 0x2c

    cmp-long v6, v1, v4

    if-lez v6, :cond_7

    .line 19
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 20
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    .line 21
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getFileLength()J

    move-result-wide v4

    iget v6, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mOffset:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 22
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioData buffer len:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    if-lez v2, :cond_7

    .line 24
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    iget v4, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mOffset:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 25
    iget v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mOffset:I

    iget-object v4, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, v4}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->readBytes(ILjava/nio/ByteBuffer;)I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 26
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 28
    iget p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mOffset:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mOffset:I

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioData read len:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read audio length error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 v2, 0x0

    .line 31
    :goto_2
    monitor-exit v0

    goto :goto_4

    .line 32
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v1, "File is null!"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_9
    :goto_3
    const-string p1, "getAudioData buffer is null or length is not enough !"

    .line 34
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_4
    const-string p1, "getAudioData leave"

    .line 35
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    return v2
.end method

.method public getAudioInfo(Lcom/iflytek/cloud/msc/ist/AudioAccessor$AudioKeys;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$1;->$SwitchMap$com$iflytek$cloud$msc$ist$AudioAccessor$AudioKeys:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mSampleRate:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    iget-short p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBitsPerSample:S

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_2
    iget-short p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFormat:S

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_3
    iget-short p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mNumChannels:S

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getBufferLength()I
    .locals 1

    const/high16 v0, 0x500000

    return v0
.end method

.method public getCacheLeft()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    const/high16 v2, 0x280000

    sub-int/2addr v2, v1

    .line 3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDataLength()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mDataCount:I

    int-to-long v1, v1

    .line 3
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAudioFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected initAudioFileHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RIFF"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeBytes(I[B)V

    const/4 v0, 0x4

    const/16 v2, 0x2c

    .line 2
    invoke-virtual {p0, v0, v2}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeInt(II)V

    const-string v0, "WAVE"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeBytes(I[B)V

    const-string v0, "fmt "

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeBytes(I[B)V

    const/16 v0, 0x10

    .line 5
    invoke-virtual {p0, v0, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeInt(II)V

    .line 6
    iget-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFormat:S

    const/16 v3, 0x14

    invoke-virtual {p0, v3, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeShort(IS)V

    .line 7
    iget-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mNumChannels:S

    const/16 v3, 0x16

    invoke-virtual {p0, v3, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeShort(IS)V

    .line 8
    iget v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mSampleRate:I

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeInt(II)V

    .line 9
    iget-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mNumChannels:S

    iget v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mSampleRate:I

    mul-int v3, v3, v0

    iget-short v4, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBitsPerSample:S

    mul-int v3, v3, v4

    div-int/2addr v3, v2

    mul-int v0, v0, v4

    .line 10
    div-int/2addr v0, v2

    int-to-short v0, v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeAudioFileHeader NumChannels="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mNumChannels:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "SampleRate="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mSampleRate:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", transferRate="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", adjustValue="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bit="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBitsPerSample:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    const/16 v2, 0x1c

    .line 12
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeInt(II)V

    const/16 v2, 0x20

    .line 13
    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeShort(IS)V

    .line 14
    iget-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBitsPerSample:S

    const/16 v2, 0x22

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeShort(IS)V

    const-string v0, "data"

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v2, 0x24

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeBytes(I[B)V

    const/16 v0, 0x28

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeInt(II)V

    return-void
.end method

.method public declared-synchronized putAudio([BI)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "putAudio enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 2
    sget-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->BUFFER:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    add-int/2addr v0, p2

    const/high16 v2, 0x500000

    if-lt v2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Buffer is not enough ! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Buffer is not enough ! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->READ_ONLY:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    if-eq v0, v1, :cond_4

    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileSyncObj:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putAudio data len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBuffer:[B

    iget v3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    invoke-static {p1, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    .line 10
    iget p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mDataCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mDataCount:I

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "putAudio buf len="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBufLen:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 12
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 13
    :cond_2
    :goto_1
    sget-object p1, Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;->WRITE_READ:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    if-ne p1, p2, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->saveAudio()V

    :cond_3
    const-string p1, "putAudio leave"

    .line 15
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 16
    :cond_4
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current type is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 17
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current type is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mAccesserType:Lcom/iflytek/cloud/msc/ist/AudioAccessor$AccesserType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "data is null !"

    .line 18
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected readAudioInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->readBytes(ILjava/nio/ByteBuffer;)I

    .line 3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "RIFF"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x14

    .line 5
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->readShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFormat:S

    const/16 v0, 0x16

    .line 6
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->readShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mNumChannels:S

    const/16 v0, 0x18

    .line 7
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->readInt(I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mSampleRate:I

    const/16 v0, 0x22

    .line 8
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->readShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mBitsPerSample:S

    return-void
.end method

.method protected readBytes(ILjava/nio/ByteBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2
    iget-object p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method protected readInt(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    shl-int/lit8 p1, v1, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method protected readShort(I)S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    shl-int/lit8 p1, v1, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method protected updateAudioFileHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHeader File length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getDataLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mem file length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getDataLength()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeInt(II)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHeader data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getDataLength()J

    move-result-wide v1

    const-wide/16 v3, 0x2c

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->getDataLength()J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, -0x2c

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeInt(II)V

    return-void
.end method

.method protected writeBytes(ILjava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeBytes buffer len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 4
    iget-object p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeBytes writen len="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    return-void
.end method

.method protected writeBytes(ILjava/nio/ByteBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeBytes buffer len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget-object p3, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 9
    iget-object p1, p0, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeBytes writen len="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    return-void
.end method

.method protected writeBytes(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    array-length v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeBytes(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method protected writeInt(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeBytes(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method protected writeShort(IS)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/msc/ist/AudioAccessor;->writeBytes(ILjava/nio/ByteBuffer;)V

    return-void
.end method
