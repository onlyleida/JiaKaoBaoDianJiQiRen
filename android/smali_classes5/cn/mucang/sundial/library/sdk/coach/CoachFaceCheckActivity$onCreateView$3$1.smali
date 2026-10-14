.class final Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3;

    iget-object v0, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3;->this$0:Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->access$getCameraUtil$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/device/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->takePhoto()V

    :cond_0
    return-void
.end method
