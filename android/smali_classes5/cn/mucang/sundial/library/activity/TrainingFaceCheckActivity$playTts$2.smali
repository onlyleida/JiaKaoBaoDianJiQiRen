.class final Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$playTts$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->playTts(ZLjava/lang/Runnable;)V
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
.field final synthetic $isAgain:Z

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$playTts$2;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    iput-boolean p2, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$playTts$2;->$isAgain:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$playTts$2;->this$0:Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;

    iget-boolean v1, p0, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity$playTts$2;->$isAgain:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$getTakePhotoDelay$p(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;)I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;->access$startCountDown(Lcn/mucang/sundial/library/activity/TrainingFaceCheckActivity;I)V

    return-void
.end method
