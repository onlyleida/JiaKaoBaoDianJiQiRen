.class public final Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000]\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\"\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010,\u001a\u00020\u001a\u0012\u0006\u0010(\u001a\u00020\u001a\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010*\u001a\u0004\u0018\u00010)\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u000fR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010(\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u001cR\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010,\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010\u001c\u00a8\u0006/"
    }
    d2 = {
        "Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;",
        "",
        "Ljava/io/File;",
        "file",
        "Lkotlin/v;",
        "uploadImage",
        "(Ljava/io/File;)V",
        "Lcn/mucang/sundial/android/db/entity/PhotoRecord;",
        "photoRecord",
        "(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V",
        "",
        "path",
        "createPhotoRecord",
        "(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;",
        "releaseCamera",
        "()V",
        "checkCamera",
        "Ljava/lang/Runnable;",
        "onComplete",
        "playSound",
        "(Ljava/lang/Runnable;)V",
        "playTts",
        "takePicture",
        "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "coach",
        "Lcn/mucang/sundial/android/db/entity/CoachInfo;",
        "",
        "personMode",
        "I",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "cameraUtil",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "checkCameraTask",
        "Ljava/lang/Runnable;",
        "cn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1",
        "cameraResult",
        "Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "eventType",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "student",
        "Lcn/mucang/sundial/android/db/entity/StudentInfo;",
        "uploadMode",
        "<init>",
        "(Landroid/content/Context;IIILcn/mucang/sundial/android/db/entity/CoachInfo;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final cameraResult:Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1;

.field private cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

.field private final checkCameraTask:Ljava/lang/Runnable;

.field private final coach:Lcn/mucang/sundial/android/db/entity/CoachInfo;

.field private final context:Landroid/content/Context;

.field private final eventType:I

.field private final personMode:I

.field private final student:Lcn/mucang/sundial/android/db/entity/StudentInfo;

.field private final uploadMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcn/mucang/sundial/android/db/entity/CoachInfo;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->context:Landroid/content/Context;

    iput p2, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->personMode:I

    iput p3, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->uploadMode:I

    iput p4, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->eventType:I

    iput-object p5, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->coach:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    iput-object p6, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->student:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    .line 2
    new-instance p1, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$checkCameraTask$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$checkCameraTask$1;-><init>(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->checkCameraTask:Ljava/lang/Runnable;

    .line 3
    new-instance p1, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1;-><init>(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->cameraResult:Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1;

    return-void
.end method

.method public static final synthetic access$checkCamera(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->checkCamera()V

    return-void
.end method

.method public static final synthetic access$createPhotoRecord(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->createPhotoRecord(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCameraUtil$p(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;)Lcn/mucang/sundial/library/device/BaseCamera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    return-object p0
.end method

.method public static final synthetic access$getCheckCameraTask$p(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->checkCameraTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getUploadMode$p(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->uploadMode:I

    return p0
.end method

.method public static final synthetic access$playSound(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->playSound(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$releaseCamera(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->releaseCamera()V

    return-void
.end method

.method public static final synthetic access$setCameraUtil$p(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;Lcn/mucang/sundial/library/device/BaseCamera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    return-void
.end method

.method public static final synthetic access$uploadImage(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->uploadImage(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    return-void
.end method

.method public static final synthetic access$uploadImage(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->uploadImage(Ljava/io/File;)V

    return-void
.end method

.method private final checkCamera()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->cameraCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->releaseCamera()V

    :cond_2
    return-void
.end method

.method private final createPhotoRecord(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;
    .locals 13

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->personMode:I

    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, ""

    const-wide/16 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->coach:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v2, v0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->student:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    .line 4
    :cond_1
    iget v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->eventType:I

    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_TRAINING:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->student:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getClassroomId()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v3

    :goto_0
    cmp-long v5, v0, v3

    if-gtz v5, :cond_3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long v3, v0, v3

    .line 7
    iget-object v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->student:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3, v4}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setClassroomId(J)V

    goto :goto_1

    :cond_3
    move-wide v7, v0

    move-object v6, v2

    goto :goto_2

    :cond_4
    :goto_1
    move-object v6, v2

    move-wide v7, v3

    .line 8
    :goto_2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v5

    .line 9
    iget v9, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->uploadMode:I

    iget v10, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->eventType:I

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "MucangConfig.getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/sundial/library/R$dimen;->tt__text_size_water:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object v11, p1

    .line 10
    invoke-virtual/range {v5 .. v12}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->createPhotoRecord(Ljava/lang/String;JIILjava/lang/String;I)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object p1

    const-string v0, "UploadImageManager.getIn\u2026ext_size_water)\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final playSound(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->playTakePhotoVoice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->playTts(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final playTts(Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getTakePhotoDelay()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->context:Landroid/content/Context;

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_voice_take_pic:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Lcn/mucang/sundial/library/util/ConvertNum;

    invoke-direct {v4, v0}, Lcn/mucang/sundial/library/util/ConvertNum;-><init>(I)V

    invoke-virtual {v4}, Lcn/mucang/sundial/library/util/ConvertNum;->convert()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026vertNum(delay).convert())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1;

    invoke-direct {v2, p1, v0}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1;-><init>(Ljava/lang/Runnable;I)V

    invoke-static {v1, v2}, Lcn/mucang/sundial/library/tts/Tts;->speak(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V

    return-void
.end method

.method private final releaseCamera()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->pause()V

    .line 3
    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->setTakingPhoto(Z)V

    return-void
.end method

.method private final uploadImage(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V
    .locals 5

    .line 2
    iget v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->personMode:I

    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getClassroomId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadPhotoByClassroom(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadPhoto(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    :goto_0
    return-void
.end method

.method private final uploadImage(Ljava/io/File;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$uploadImage$1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$uploadImage$1;-><init>(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;Ljava/io/File;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final takePicture()V
    .locals 9

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->isTakingPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/sundial/library/util/ActivityUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ActivityUtil;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/ActivityUtil;->topActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/sundial/library/activity/BaseActivity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Lcn/mucang/sundial/library/activity/BaseActivity;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    const-string v3, "it.lifecycle"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 4
    sget-object v3, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {v3}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/library/device/SundialDevice;->allowGotoBackground()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v3, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->checkCameraTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-static {v3, v4, v5}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->releaseCamera()V

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/BaseActivity;->getDummyTexture()Landroid/view/TextureView;

    move-result-object v2

    :cond_4
    move-object v6, v2

    .line 8
    sget-object v3, Lcn/mucang/sundial/library/device/SundialDevice;->Companion:Lcn/mucang/sundial/library/device/SundialDevice$Companion;

    iget-object v4, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->context:Landroid/content/Context;

    iget-object v5, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->cameraResult:Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$cameraResult$1;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/sundial/library/device/SundialDevice$Companion;->createCameraUtil(Landroid/content/Context;Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    .line 10
    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->init()V

    .line 11
    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->open()V

    return-void
.end method
