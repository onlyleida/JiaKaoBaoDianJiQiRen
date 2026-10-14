.class public Lcn/mucang/sundial/library/activity/TopActivity;
.super Landroidx/appcompat/app/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\r\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u000bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/TopActivity;",
        "Landroidx/appcompat/app/d;",
        "",
        "notice",
        "Lkotlin/v;",
        "showLoadingDialog",
        "(Ljava/lang/String;)V",
        "",
        "cancelable",
        "(Ljava/lang/String;Z)V",
        "hideLoadingDialog",
        "()V",
        "onPause",
        "Lcn/mucang/sundial/library/widget/LoadingDialog;",
        "loadingDialog",
        "Lcn/mucang/sundial/library/widget/LoadingDialog;",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private loadingDialog:Lcn/mucang/sundial/library/widget/LoadingDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLoadingDialog$p(Lcn/mucang/sundial/library/activity/TopActivity;)Lcn/mucang/sundial/library/widget/LoadingDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/TopActivity;->loadingDialog:Lcn/mucang/sundial/library/widget/LoadingDialog;

    return-object p0
.end method

.method public static final synthetic access$setLoadingDialog$p(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/library/widget/LoadingDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/TopActivity;->loadingDialog:Lcn/mucang/sundial/library/widget/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final hideLoadingDialog()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/activity/TopActivity$hideLoadingDialog$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/TopActivity$hideLoadingDialog$1;-><init>(Lcn/mucang/sundial/library/activity/TopActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/TopActivity;->loadingDialog:Lcn/mucang/sundial/library/widget/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final showLoadingDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/sundial/library/activity/TopActivity;->showLoadingDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method public final showLoadingDialog(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;

    invoke-direct {v0, p0, p2, p1}, Lcn/mucang/sundial/library/activity/TopActivity$showLoadingDialog$1;-><init>(Lcn/mucang/sundial/library/activity/TopActivity;ZLjava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method
