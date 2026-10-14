.class final Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$loadQrCode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;->loadQrCode()V
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
.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$loadQrCode$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/account/m/b;->f:Lcn/mucang/android/account/m/b$a;

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b$a;->a()Lcn/mucang/android/account/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/m/b;->b()Lcn/mucang/android/account/qrcode/model/QrCodeModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/account/qrcode/model/QrCodeModel;->getProtocolUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$loadQrCode$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/sundial/library/R$dimen;->rpx_380:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/sundial/library/util/QRCodeUtil;->createQRCodeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "QRCodeUtil.createQRCodeB\u2026      ) ?: return@execute"

    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/logic/SafeRunnable;

    iget-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$loadQrCode$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic;

    invoke-virtual {v2}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getActivity()Landroidx/fragment/app/d;

    move-result-object v2

    new-instance v3, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$loadQrCode$1$1;

    invoke-direct {v3, p0, v0}, Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$loadQrCode$1$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/logic/ScanLoginLogic$loadQrCode$1;Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2, v3}, Lcn/mucang/sundial/library/sdk/coach/logic/SafeRunnable;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
