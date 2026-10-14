.class public final Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;->a:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;->b:I

    return-void
.end method

.method private d(Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/j;III)Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/b;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/j;->a()Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/d;->e()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/d;->d()I

    move-result v1

    mul-int/lit8 p4, p4, 0x2

    add-int v2, v0, p4

    add-int/2addr p4, v1

    .line 4
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 6
    div-int v2, p2, v2

    div-int p4, p3, p4

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    mul-int v2, v0, p4

    sub-int v2, p2, v2

    .line 7
    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;->a:I

    mul-int v2, v1, p4

    sub-int v2, p3, v2

    .line 8
    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;->b:I

    .line 9
    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/b;

    invoke-direct {v2, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/b;-><init>(II)V

    .line 10
    iget p2, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;->b:I

    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 11
    iget v4, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;->a:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    .line 12
    invoke-virtual {p1, v5, v3}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/d;->b(II)B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 13
    invoke-virtual {v2, v4, p2, p4, p4}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/b;->e(IIII)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, p4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/2addr p2, p4

    goto :goto_0

    :cond_2
    return-object v2

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/BarcodeFormat;IILjava/util/Map;)Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/EncodeHintType;",
            "*>;)",
            "Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/WriterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/BarcodeFormat;->QR_CODE:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_3

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    .line 3
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->L:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    const/4 v0, 0x4

    if-eqz p5, :cond_1

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/EncodeHintType;->ERROR_CORRECTION:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    move-result-object p2

    .line 6
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/EncodeHintType;->MARGIN:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    :cond_1
    invoke-static {p1, p2, p5}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/e;->n(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;Ljava/util/Map;)Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/j;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p3, p4, v0}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;->d(Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/j;III)Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/b;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Requested dimensions are too small: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode QR_CODE, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/k;->b:I

    return v0
.end method
