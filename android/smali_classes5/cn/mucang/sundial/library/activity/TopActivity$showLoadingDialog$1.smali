.class final Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/TopActivity;->showLoadingDialog(Ljava/lang/String;Z)V
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
.field final synthetic $cancelable:Z

.field final synthetic $notice:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/TopActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/TopActivity;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    iput-boolean p2, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->$cancelable:Z

    iput-object p3, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->$notice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->access$getLoadingDialog$p(Lcn/mucang/sundial/library/activity/TopActivity;)Lcn/mucang/sundial/library/widget/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->access$getLoadingDialog$p(Lcn/mucang/sundial/library/activity/TopActivity;)Lcn/mucang/sundial/library/widget/LoadingDialog;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    new-instance v1, Lcn/mucang/sundial/library/widget/LoadingDialog;

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-direct {v1, v2}, Lcn/mucang/sundial/library/widget/LoadingDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/activity/TopActivity;->access$setLoadingDialog$p(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/library/widget/LoadingDialog;)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->access$getLoadingDialog$p(Lcn/mucang/sundial/library/activity/TopActivity;)Lcn/mucang/sundial/library/widget/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->$cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    :cond_3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->access$getLoadingDialog$p(Lcn/mucang/sundial/library/activity/TopActivity;)Lcn/mucang/sundial/library/widget/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;->$notice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/widget/LoadingDialog;->showLoading(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
