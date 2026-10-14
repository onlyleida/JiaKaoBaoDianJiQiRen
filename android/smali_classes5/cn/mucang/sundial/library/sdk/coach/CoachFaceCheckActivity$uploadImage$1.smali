.class final Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadImage(Ljava/io/File;)V
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

.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    iput-object p2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$createPhotoRecord(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$isLogin(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$isLogout(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->savePhotoRecord(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getUploadMode$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)I

    move-result v1

    sget-object v2, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TMP_SAVE_LOCAL:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->valueOf()I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v1, "\u4e3b\u52a8\u89e6\u53d1\u4e0a\u4f20"

    .line 5
    invoke-static {v1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v1, v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$uploadImage(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    sget v1, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->SUCCESS:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->handleUploadImageResult$default(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;ILjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 9
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    .line 10
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getCheckMode$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)I

    move-result v0

    sget-object v1, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_OUT:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 11
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getPersonMode$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/util/GlobalData;->incrementSignOutErrorCount(I)V

    :cond_2
    const-string v0, "\u4e0a\u4f20\u56fe\u7247\u9519\u8bef"

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$showErrorLayout(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    :goto_0
    return-void
.end method
