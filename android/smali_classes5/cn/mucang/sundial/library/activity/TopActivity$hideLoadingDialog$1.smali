.class final Lcn/mucang/sundial/library/activity/TopActivity$hideLoadingDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/TopActivity;->hideLoadingDialog()V
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/TopActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/TopActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/TopActivity$hideLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$hideLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$hideLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity$hideLoadingDialog$1;->this$0:Lcn/mucang/sundial/library/activity/TopActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/TopActivity;->access$getLoadingDialog$p(Lcn/mucang/sundial/library/activity/TopActivity;)Lcn/mucang/sundial/library/widget/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
