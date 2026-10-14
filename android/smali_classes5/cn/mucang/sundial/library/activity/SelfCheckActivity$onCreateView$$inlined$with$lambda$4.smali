.class final Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$$inlined$with$lambda$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/SelfCheckActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "cn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$1$5",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$$inlined$with$lambda$4;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$$inlined$with$lambda$4;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getRelaunchApp$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$setRelaunchApp$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;I)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$$inlined$with$lambda$4;->this$0:Lcn/mucang/sundial/library/activity/SelfCheckActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/SelfCheckActivity;->access$getRelaunchApp$p(Lcn/mucang/sundial/library/activity/SelfCheckActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const-string p1, "\u518d\u70b9\u4e00\u6b21\u91cd\u542fAPP"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/blankj/utilcode/util/a;->o(Z)V

    .line 5
    :goto_0
    new-instance p1, Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$$inlined$with$lambda$4$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$$inlined$with$lambda$4$1;-><init>(Lcn/mucang/sundial/library/activity/SelfCheckActivity$onCreateView$$inlined$with$lambda$4;)V

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
