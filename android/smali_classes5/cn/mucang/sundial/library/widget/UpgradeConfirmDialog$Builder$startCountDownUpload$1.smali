.class public final Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$startCountDownUpload$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder;->startCountDownUpload(ILcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0017\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$startCountDownUpload$1",
        "Landroid/os/CountDownTimer;",
        "Lkotlin/v;",
        "onFinish",
        "()V",
        "",
        "millisUntilFinished",
        "onTick",
        "(J)V",
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
.field final synthetic $delay:I

.field final synthetic $viewBinding:Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;IJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$startCountDownUpload$1;->$viewBinding:Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;

    iput p2, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$startCountDownUpload$1;->$delay:I

    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "10s\u5012\u8ba1\u65f6\u5b8c\u5f00\u59cb\u5347\u7ea7"

    .line 1
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$startCountDownUpload$1;->$viewBinding:Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;->ok:Landroid/widget/TextView;

    const-string v1, "viewBinding.ok"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\u786e\u5b9a (0s)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$startCountDownUpload$1;->$viewBinding:Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;->ok:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    return-void
.end method

.method public onTick(J)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/UpgradeConfirmDialog$Builder$startCountDownUpload$1;->$viewBinding:Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtDialogUpgradeComfirmBinding;->ok:Landroid/widget/TextView;

    const-string v1, "viewBinding.ok"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u5b9a ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    int-to-long v2, v2

    add-long/2addr p1, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
