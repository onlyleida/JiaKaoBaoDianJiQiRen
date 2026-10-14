.class final Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic $studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

.field final synthetic $uploadPhotoId:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;Lcn/mucang/sundial/android/db/entity/StudentInfo;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;->this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    iput-object p2, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;->$studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    iput-object p3, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;->$uploadPhotoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;->$studentInfo:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v2, v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long v3, v0, v3

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v1

    .line 4
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TERMINAL_TAKE:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->valueOf()I

    move-result v5

    .line 5
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v6

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;->this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    iget-object v7, v0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$photoPath:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v8, "MucangConfig.getContext()"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcn/mucang/sundial/library/R$dimen;->tt__text_size_water:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 8
    invoke-virtual/range {v1 .. v8}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->createPhotoRecord(Ljava/lang/String;JIILjava/lang/String;I)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;->$uploadPhotoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v2, "photoTask"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "photoTask.photoId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->savePhotoRecord(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    .line 11
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadPhotoByClassroom(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    const-string v0, "-Sundial \u4e0a\u4f20\u7167\u7247"

    .line 12
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-Sundial \u5b66\u5458\u9759\u9ed8\u7167\u7247\u4e0a\u4f20\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1$3;->this$0:Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogin$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/mucang/sundial/library/SundialCallBack;->onResult(Z)V

    :goto_1
    return-void
.end method
