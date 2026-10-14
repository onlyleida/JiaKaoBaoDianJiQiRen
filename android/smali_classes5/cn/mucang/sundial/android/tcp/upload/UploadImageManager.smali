.class public Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/upload/UploadImageManager$UploadImageManagerHolder;
    }
.end annotation


# static fields
.field private static final COMPRESS_MAX_SIZE_MAX:I = 0x64

.field public static final TAG:Ljava/lang/String; = "UploadImageManager"


# instance fields
.field private final classroomPhotoTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/PhotoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile initRequest:Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;

.field private volatile packetRequest:Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;

.field private volatile photoRecord:Lcn/mucang/sundial/android/db/entity/PhotoRecord;

.field private final timeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->classroomPhotoTaskList:Ljava/util/List;

    .line 4
    new-instance v0, Lcn/mucang/sundial/android/tcp/upload/b;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/android/tcp/upload/b;-><init>(Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->timeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/upload/UploadImageManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;-><init>()V

    return-void
.end method

.method static synthetic a(JLjava/io/File;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long p2, v0, p0

    if-gez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic b()V
    .locals 2

    :try_start_0
    const-string v0, "\u4e0a\u4f20\u7167\u7247\u8d85\u65f6"

    .line 1
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 2
    sget v0, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->ERROR:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private createFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, ".jpg"

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/sundial/android/tcp/utils/PictureUtil;->getPicDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createPhotoData(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    new-array p1, p3, [B

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_6

    const/16 p2, 0x500

    const/16 v0, 0x2d0

    .line 4
    invoke-static {p1, p2, v0, p3}, Lcn/mucang/sundial/android/tcp/utils/PictureUtil;->getZoomImageByMatrix(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    const-wide/16 v0, 0x70

    const/4 v2, 0x5

    .line 5
    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getIntParameter(JI)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-lt v0, v1, :cond_1

    if-le v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x6

    :cond_2
    mul-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0x64

    .line 6
    invoke-static {p2, v0}, Lcn/mucang/sundial/android/tcp/utils/PictureUtil;->compressStream(Landroid/graphics/Bitmap;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    if-eq p2, p1, :cond_3

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "_compressed"

    .line 9
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->createFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/sundial/android/tcp/utils/PictureUtil;->savePic(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_0

    :cond_5
    new-array p1, p3, [B

    :goto_0
    return-object p1

    :cond_6
    new-array p1, p3, [B

    return-object p1
.end method

.method private deleteOldData()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/sundial/android/tcp/utils/PictureUtil;->getPicDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Lcn/mucang/sundial/android/tcp/upload/c;

    invoke-direct {v3, v0, v1}, Lcn/mucang/sundial/android/tcp/upload/c;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager$UploadImageManagerHolder;->access$100()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v0

    return-object v0
.end method

.method private initializeRequest(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->hasConnection()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5\uff0c\u53d6\u6d88\u7167\u7247\u4e0a\u4f20"

    .line 2
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    return v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->deleteOldData()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u4e0a\u4f20\u7167\u7247\uff0cphotoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;->setPhotoId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getUserCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getEventType()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->createPhotoData(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8
    array-length v3, v2

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;->setPhotoData([B)V

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/mucang/sundial/android/SundialManager;->createRawMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->g(Ljava/util/Collection;)I

    move-result v3

    .line 11
    iput-object v1, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->packetRequest:Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;

    .line 12
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;

    invoke-direct {v1}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setPhotoId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getUserCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setUserCode(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getUploadMode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setUploadMode(I)V

    .line 16
    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setCameraChannel(I)V

    const/4 v0, 0x4

    .line 17
    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setImageSize(I)V

    .line 18
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getEventType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setEventType(I)V

    .line 19
    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setTotalCount(I)V

    .line 20
    array-length v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setPhotoDataSize(J)V

    .line 21
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getClassroomId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setClassroomId(J)V

    .line 22
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getGnssData()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData()Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->encode()[B

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_3
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 26
    :goto_0
    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setGnssData([B)V

    const/16 v0, 0x64

    .line 27
    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;->setFaceDetection(I)V

    .line 28
    iput-object v1, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->initRequest:Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;

    .line 29
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->photoRecord:Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u56fe\u7247\u4e0a\u4f20\u521d\u59cb\u5316\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->timeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x61a8

    invoke-static {p1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 32
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/sundial/android/SundialManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method private watermark(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-static {v0, p2, p3, p4}, Lcn/mucang/sundial/android/tcp/utils/BitmapUtil;->drawTextToBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string p3, "_watermark"

    .line 5
    invoke-direct {p0, p3}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->createFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-static {p2, p3}, Lcn/mucang/sundial/android/tcp/utils/PictureUtil;->savePic(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p4

    if-nez p4, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p3

    :catch_0
    move-exception p2

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u6253\u6c34\u5370\u5931\u8d25 "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method


# virtual methods
.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->b()V

    return-void
.end method

.method public createPhotoRecord(Ljava/lang/String;JIILjava/lang/String;I)Lcn/mucang/sundial/android/db/entity/PhotoRecord;
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->createPhotoRecord(Ljava/lang/String;JIILjava/lang/String;IJ)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object v0

    return-object v0
.end method

.method public createPhotoRecord(Ljava/lang/String;JIILjava/lang/String;IJ)Lcn/mucang/sundial/android/db/entity/PhotoRecord;
    .locals 3

    .line 2
    invoke-direct {p0, p6, p1, p5, p7}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->watermark(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p6

    .line 3
    new-instance p7, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    invoke-direct {p7}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x3e8

    div-long v1, p8, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setPhotoId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p7, p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setUserCode(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p7, p2, p3}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setClassroomId(J)V

    .line 7
    invoke-virtual {p7, p4}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setUploadMode(I)V

    .line 8
    invoke-virtual {p7, p5}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setEventType(I)V

    .line 9
    invoke-virtual {p7, p6}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setPath(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p7, p8, p9}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setRecordTime(J)V

    .line 11
    invoke-static {p8, p9}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->getGNSSData(J)Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->encode()[B

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/data/gnss/GNSSData;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setGnssData(Ljava/lang/String;)V

    return-object p7
.end method

.method public declared-synchronized getPackageRequest()Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->packetRequest:Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPhotoRecord()Lcn/mucang/sundial/android/db/entity/PhotoRecord;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->photoRecord:Lcn/mucang/sundial/android/db/entity/PhotoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->packetRequest:Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->initRequest:Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_1
    iget-object v4, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->photoRecord:Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 4
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u662f\u5426\u95f2\u7f6e\u72b6\u6001: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 5
    :goto_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryPhotoRecord(JJ)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u67e5\u8be2\u7167\u7247\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/p0;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u81f3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcn/mucang/android/core/utils/p0;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getPhotoRecordByTime(JJ)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance p2, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;

    invoke-direct {p2}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getUploadStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "\u67e5\u8be2\u7ed3\u679c\u4e3a\u7a7a"

    .line 7
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-virtual {p2, p3}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->setFinished(Z)V

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 11
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p2, v0}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->setTotalCount(I)V

    .line 13
    invoke-virtual {p2, p3}, Lcn/mucang/sundial/android/tcp/message/training/send/ReportQueryPhotoResponse;->setPhotoList(Ljava/util/List;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u4e0a\u62a5\u7167\u7247\u67e5\u8be2\u7ed3\u679c\uff0c\u6570\u91cf\u4e3a\uff1a"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/SundialManager;->sendMessage(Lcn/mucang/sundial/android/tcp/message/SendMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public savePhotoRecord(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u5b58\u7167\u7247\u8bb0\u5f55\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->savePhotoRecord(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    return-void
.end method

.method public declared-synchronized startUploadNextPhoto()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->classroomPhotoTaskList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    monitor-exit p0

    return v2

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u81ea\u52a8\u4e0a\u4f20\u4e0b\u4e00\u5f20\u7167\u7247\uff0cphotoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->initializeRequest(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uploadComplete(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->timeOutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->initRequest:Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoStartRequest;

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->packetRequest:Lcn/mucang/sundial/android/tcp/message/training/send/UploadPhotoPacketRequest;

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->photoRecord:Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0a\u4f20\u7167\u7247 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->SUCCESS:I

    if-ne p1, v3, :cond_0

    const-string v3, "\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string v3, "\u5931\u8d25"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0cphotoId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->com(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 8
    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->photoRecord:Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    .line 9
    sget v0, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->SUCCESS:I

    if-ne p1, v0, :cond_2

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->setPhotoRecordUploaded(Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->classroomPhotoTaskList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->startUploadNextPhoto()Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->classroomPhotoTaskList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    .line 15
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    sget v1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->ERROR:I

    const-string v2, ""

    invoke-virtual {p2}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 16
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized uploadPhoto(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "\u4e0a\u4f20\u7167\u7247"

    .line 6
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    sget v1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->TASK_BUSY:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-direct {v0, v1, p1}, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->initializeRequest(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    sget v1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->ERROR:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-direct {v0, v1, p1}, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized uploadPhoto(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getPhotoRecord(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lcn/mucang/sundial/android/tcp/upload/EventType;->PLATFORM_QUERY:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {p2}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setEventType(I)V

    .line 3
    sget-object p2, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->PLATFORM_QUERY:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-virtual {p2}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->valueOf()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->setUploadMode(I)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadPhoto(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized uploadPhotoByClassroom(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4f20\u540c\u4e00\u8bfe\u5802\u7167\u7247\u96c6\u5408\uff0c\u8bfe\u5802ID\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getClassroomId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    sget v1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->TASK_BUSY:I

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getClassroomId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getPhotoRecordByClassroom(J)Ljava/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->classroomPhotoTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->classroomPhotoTaskList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {p0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->startUploadNextPhoto()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->classroomPhotoTaskList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    .line 14
    new-instance v1, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    sget v2, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->ERROR:I

    const-string v3, ""

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/mucang/sundial/android/eventbus/LiveBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 15
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
