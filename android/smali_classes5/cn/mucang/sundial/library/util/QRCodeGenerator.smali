.class public final Lcn/mucang/sundial/library/util/QRCodeGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/p/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ+\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/sundial/library/util/QRCodeGenerator;",
        "Lf/a/a/a/p/b;",
        "",
        "url",
        "",
        "width",
        "height",
        "Landroid/graphics/Bitmap;",
        "createQRImage",
        "(Ljava/lang/String;II)Landroid/graphics/Bitmap;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createQRImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 3
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcn/mucang/sundial/library/util/QRCodeWriterCompat;

    invoke-direct {v1}, Lcn/mucang/sundial/library/util/QRCodeWriterCompat;-><init>()V

    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 8
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v2, v1

    move-object v3, p1

    move v5, p2

    move v6, p3

    .line 9
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/sundial/library/util/QRCodeWriterCompat;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    mul-int v2, p2, p3

    .line 10
    new-array v4, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_2

    .line 11
    invoke-virtual {p1, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1

    mul-int v6, v3, p2

    add-int/2addr v6, v5

    const/high16 v7, -0x1000000

    .line 12
    aput v7, v4, v6

    goto :goto_2

    :cond_1
    mul-int v6, v3, p2

    add-int/2addr v6, v5

    const/4 v7, -0x1

    .line 13
    aput v7, v4, v6

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move v6, p2

    move v9, p2

    move v10, p3

    .line 15
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 16
    invoke-virtual {v1}, Lcn/mucang/sundial/library/util/QRCodeWriterCompat;->getLeftPadding()I

    move-result v2

    .line 17
    invoke-virtual {v1}, Lcn/mucang/sundial/library/util/QRCodeWriterCompat;->getTopPadding()I

    move-result v3

    .line 18
    invoke-virtual {v1}, Lcn/mucang/sundial/library/util/QRCodeWriterCompat;->getLeftPadding()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr p2, v4

    .line 19
    invoke-virtual {v1}, Lcn/mucang/sundial/library/util/QRCodeWriterCompat;->getTopPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    .line 20
    invoke-static {p1, v2, v3, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method
