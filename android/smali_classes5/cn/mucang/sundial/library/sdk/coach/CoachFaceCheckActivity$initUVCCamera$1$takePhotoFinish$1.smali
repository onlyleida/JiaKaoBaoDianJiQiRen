.class final Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->takePhotoFinish(Ljava/io/File;)V
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

.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iput-object p2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->$file:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$setImageFile$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/io/File;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getBinding$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->previewImg:Landroid/widget/ImageView;

    const-string v1, "binding.previewImg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/d;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->$file:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 9
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 10
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iget-object v1, v1, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getBinding$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->previewImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 11
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$showCompleteLayout(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$startCountDownUpload(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V

    .line 13
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$setStartTime$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const-string v1, "\u62cd\u7167\u5931\u8d25"

    const/4 v2, 0x0

    .line 14
    invoke-static {v1, v2, v0, v2}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1$takePhotoFinish$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$showErrorLayout(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    :goto_0
    return-void
.end method
