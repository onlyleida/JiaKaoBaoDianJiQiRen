.class final Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->run()V
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
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    const-string v1, "binding.invalidAppQrCode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->invalidAppQrCode:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->$bitmap:Landroid/graphics/Bitmap;

    const-string v1, "binding.qrCodeLayout"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->qrCodeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->appQrCode:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    .line 7
    new-instance v1, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1$1;-><init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/m/b;->h(Lcn/mucang/android/account/m/d/a;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;

    iget-object v0, v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$initQrCode$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentLoginBinding;->qrCodeLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
