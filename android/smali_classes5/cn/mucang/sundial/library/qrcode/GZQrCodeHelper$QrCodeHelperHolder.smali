.class final Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QrCodeHelperHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;",
        "",
        "Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;",
        "qrCodeHelper",
        "Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;",
        "getQrCodeHelper",
        "()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;

.field private static final qrCodeHelper:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;

    invoke-direct {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;->INSTANCE:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    invoke-direct {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;->qrCodeHelper:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    .line 3
    invoke-static {v0}, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;->access$init(Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getQrCodeHelper()Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper$QrCodeHelperHolder;->qrCodeHelper:Lcn/mucang/sundial/library/qrcode/GZQrCodeHelper;

    return-object v0
.end method
