.class final Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil;->studentSilenceLogout(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $callBack:Lcn/mucang/sundial/library/SundialCallBack;

.field final synthetic $photoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$2;->$photoPath:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$2;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$2;->$photoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u8ba1\u65f6\u5b66\u5458\u7167\u7247\u4e0d\u5b58\u5728"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {v1, v3, v2, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    const-string v1, "-Sundial \u8ba1\u65f6\u5b66\u5458\u7167\u7247\u4e0d\u5b58\u5728"

    .line 3
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$2;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    invoke-interface {v1, v0}, Lcn/mucang/sundial/library/SundialCallBack;->onResult(Z)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    const-string v2, "SundialManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    move-object v4, v2

    const-wide/16 v11, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getClassroomId()J

    move-result-wide v2

    move-wide v5, v2

    goto :goto_1

    :cond_2
    move-wide v5, v11

    .line 8
    :goto_1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v3

    .line 9
    sget-object v2, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TERMINAL_TAKE:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->valueOf()I

    move-result v7

    .line 10
    sget-object v2, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v8

    .line 11
    iget-object v9, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$2;->$photoPath:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    const-string v10, "MucangConfig.getContext()"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcn/mucang/sundial/library/R$dimen;->tt__text_size_water:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 13
    invoke-virtual/range {v3 .. v10}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->createPhotoRecord(Ljava/lang/String;JIILjava/lang/String;I)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object v2

    .line 14
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->savePhotoRecord(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    .line 15
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadPhotoByClassroom(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    const-string v2, "-Sundial \u4e0a\u4f20\u7167\u7247"

    .line 16
    invoke-static {v2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v2

    const-string v3, "lastStudentInfo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v11, v12}, Lcn/mucang/sundial/android/SundialManager;->studentLogout(Ljava/lang/String;J)Z

    move-result v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Sundial \u5b66\u5458\u7b7e\u9000\u6d88\u606f\u53d1\u9001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v1, "\u6210\u529f"

    goto :goto_2

    :cond_3
    const-string v1, "\u5931\u8d25"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Sundial \u5b66\u5458\u9759\u9ed8\u7b7e\u9000\u5931\u8d25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$2;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    invoke-interface {v1, v0}, Lcn/mucang/sundial/library/SundialCallBack;->onResult(Z)V

    :goto_3
    return-void
.end method
