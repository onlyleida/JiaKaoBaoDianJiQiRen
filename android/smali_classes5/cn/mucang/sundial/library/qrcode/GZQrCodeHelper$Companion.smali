.class public final Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\u00020\u00088\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\nR\u0016\u0010\u000c\u001a\u00020\u00088\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\nR\u0016\u0010\r\u001a\u00020\u00088\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\nR\u0016\u0010\u000e\u001a\u00020\u00088\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\nR\u0016\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;",
        "",
        "Lkotlin/v;",
        "doInit",
        "()V",
        "Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;",
        "getInstance",
        "()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;",
        "",
        "MAX_RETRY_NUM",
        "I",
        "SCAN_RESULT_CANCEL",
        "SCAN_RESULT_LOGIN_SUCCESS",
        "SCAN_RESULT_SCAN_SUCCESS",
        "SCAN_RESULT_TIMEOUT",
        "SCAN_RESULT_WAITING",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInit()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$Companion;->getInstance()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    return-void
.end method

.method public final getInstance()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;->INSTANCE:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;->getQrCodeHelper()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    move-result-object v0

    return-object v0
.end method
