.class final Lcn/mucang/sundial/library/activity/FaceCheckActivity$onCreateView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/FaceCheckActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
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

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$onCreateView$2;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "\u70b9\u51fb\u91cd\u65b0\u62cd\u7167\u6309\u94ae"

    .line 1
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$onCreateView$2;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->previewImg:Landroid/widget/ImageView;

    const-string v0, "binding.previewImg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$onCreateView$2;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityFaceCheckBinding;->imageErrorLayout:Landroid/widget/LinearLayout;

    const-string v1, "binding.imageErrorLayout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$onCreateView$2;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$cancelCountDown(Lcn/mucang/sundial/library/activity/FaceCheckActivity;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/FaceCheckActivity$onCreateView$2;->this$0:Lcn/mucang/sundial/library/activity/FaceCheckActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcn/mucang/sundial/library/activity/FaceCheckActivity;->access$startCountDown(Lcn/mucang/sundial/library/activity/FaceCheckActivity;I)V

    .line 8
    new-instance p1, Lcn/mucang/sundial/library/activity/FaceCheckActivity$onCreateView$2$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/activity/FaceCheckActivity$onCreateView$2$1;-><init>(Lcn/mucang/sundial/library/activity/FaceCheckActivity$onCreateView$2;)V

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
