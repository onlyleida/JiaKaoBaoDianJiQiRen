.class final Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder$setContent$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;->setContent(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;
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
        "cn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder$$special$$inlined$run$lambda$2",
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
.field final synthetic $callBack$inlined:Lcn/mucang/sundial/library/widget/DialogCallBack;

.field final synthetic $content$inlined:Ljava/lang/String;

.field final synthetic $this_apply$inlined:Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder$setContent$$inlined$apply$lambda$2;->$this_apply$inlined:Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;

    iput-object p2, p0, Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder$setContent$$inlined$apply$lambda$2;->$content$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder$setContent$$inlined$apply$lambda$2;->$callBack$inlined:Lcn/mucang/sundial/library/widget/DialogCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder$setContent$$inlined$apply$lambda$2;->$this_apply$inlined:Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder;->getDialog()Lcn/mucang/sundial/library/widget/BlankDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/g;->dismiss()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/TakePhotoConfirmDialog$Builder$setContent$$inlined$apply$lambda$2;->$callBack$inlined:Lcn/mucang/sundial/library/widget/DialogCallBack;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcn/mucang/sundial/library/widget/DialogCallBack;->onSelect(I)V

    :cond_1
    return-void
.end method
