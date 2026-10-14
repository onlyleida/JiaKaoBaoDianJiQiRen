.class final Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->uploadImage(Ljava/io/File;)V
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
.field final synthetic $file:Ljava/io/File;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    const-string v0, "\u63d2\u5165\u4e00\u4e2a\u4e0a\u4f20\u7167\u7247\u4efb\u52a1"

    .line 1
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$createPhotoRecord(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object v0

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->savePhotoRecord(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {v1}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$getUploadMode$p(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)I

    move-result v1

    sget-object v2, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TMP_SAVE_LOCAL:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->valueOf()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "\u4e3b\u52a8\u89e6\u53d1\u4e0a\u4f20"

    .line 5
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {v1, v0}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$uploadImage(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    sget v1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->SUCCESS:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->handleUploadImageResult$default(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;ILjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4f20\u56fe\u7247\u9519\u8bef\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    const-string v0, "\u4e0a\u4f20\u56fe\u7247\u9519\u8bef"

    .line 11
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$takePhotoFail(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)V

    :goto_0
    return-void
.end method
