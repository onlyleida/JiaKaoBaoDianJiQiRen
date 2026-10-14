.class final Lcn/mucang/sundial/library/activity/FaceCheckActivity$initData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/FaceCheckActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initData$2;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initData$2;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$getUploadPhotoId$p(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;->photoId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initData$2;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initData$2;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    iget v1, p1, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;->code:I

    iget-object p1, p1, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;->message:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$handleUploadImageResult(Lcn/mucang/sundial/library/activity/FaceCheckActivity;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity$initData$2;->onChanged(Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;)V

    return-void
.end method
