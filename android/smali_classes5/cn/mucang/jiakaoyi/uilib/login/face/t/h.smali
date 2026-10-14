.class public final Lcn/mucang/jiakaoyi/uilib/login/face/t/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0010\nJ \u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J \u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J&\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010#\u001a\u00020\tR\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0015j\u0008\u0012\u0004\u0012\u00020\u0008`\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006$"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/face/check/LightCheck;",
        "",
        "listener",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;",
        "limitPixel",
        "",
        "showBrightnessImg",
        "Lkotlin/Function1;",
        "Lorg/opencv/core/Mat;",
        "",
        "(Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;ILkotlin/jvm/functions/Function1;)V",
        "gray",
        "grayRect",
        "Lorg/opencv/core/Rect;",
        "highLightLimitRate",
        "getLimitPixel",
        "()I",
        "getListener",
        "()Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;",
        "lutLightMat",
        "matSplit",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getShowBrightnessImg",
        "()Lkotlin/jvm/functions/Function1;",
        "getAveragePixel",
        "",
        "pos",
        "dst",
        "landmark",
        "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;",
        "highLightRate",
        "intercept",
        "",
        "isNight",
        "release",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcn/mucang/jiakaoyi/uilib/login/face/j;

.field private final b:I

.field private final c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lorg/opencv/core/Mat;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/opencv/core/Rect;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/opencv/core/Mat;

.field private g:Lorg/opencv/core/Mat;

.field private h:I


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/j;ILkotlin/jvm/b/l;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/login/face/j;",
            "I",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lorg/opencv/core/Mat;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showBrightnessImg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->a:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->b:I

    .line 3
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->c:Lkotlin/jvm/b/l;

    .line 4
    new-instance p1, Lorg/opencv/core/Rect;

    invoke-direct {p1}, Lorg/opencv/core/Rect;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->e:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Lorg/opencv/core/Mat;

    const/4 p2, 0x1

    const/16 p3, 0x100

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lorg/opencv/core/Mat;-><init>(III)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->f:Lorg/opencv/core/Mat;

    .line 7
    new-instance p1, Lorg/opencv/core/Mat;

    invoke-direct {p1}, Lorg/opencv/core/Mat;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->g:Lorg/opencv/core/Mat;

    const/16 p1, 0x8

    .line 8
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->h:I

    new-array p1, p3, [B

    .line 9
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/login/face/i;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    const-wide v4, 0x3fcd70a3d70a3d71L    # 0.23

    const-wide/16 v6, 0x0

    const-wide v8, 0x3fd147ae147ae148L    # 0.27

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, Lcn/mucang/jiakaoyi/uilib/login/face/i;-><init>(DDDD)V

    const/4 p3, 0x0

    :goto_0
    add-int/lit8 v1, p3, 0x1

    int-to-float v2, p3

    const/16 v3, 0xff

    int-to-float v4, v3

    div-float/2addr v2, v4

    .line 10
    invoke-virtual {p2, v2}, Lcn/mucang/jiakaoyi/uilib/login/face/i;->b(F)F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    int-to-byte v2, v2

    .line 11
    aput-byte v2, p1, p3

    if-le v1, v3, :cond_0

    .line 12
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->f:Lorg/opencv/core/Mat;

    invoke-virtual {p2, v0, v0, p1}, Lorg/opencv/core/Mat;->put(II[B)I

    return-void

    :cond_0
    move p3, v1

    goto :goto_0
.end method

.method private final a(Lorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)D
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->f()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/opencv/core/Rect;->x:I

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->g()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->f()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lorg/opencv/core/Rect;->width:I

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->h()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iget p1, p1, Lorg/opencv/core/Rect;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Lorg/opencv/core/Rect;->y:I

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->e()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->h()Landroid/graphics/PointF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p3

    float-to-int p3, v0

    iput p3, p1, Lorg/opencv/core/Rect;->height:I

    .line 5
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a:Lcn/mucang/jiakaoyi/uilib/login/face/s;

    iget-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->width()I

    move-result v0

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->height()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a(Lorg/opencv/core/Rect;II)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    invoke-virtual {p2, p1}, Lorg/opencv/core/Mat;->submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->g:Lorg/opencv/core/Mat;

    const/4 p3, 0x7

    invoke-static {p1, p2, p3}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->g:Lorg/opencv/core/Mat;

    invoke-static {p1}, Lorg/opencv/core/Core;->mean(Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p1, Lorg/opencv/core/Scalar;->val:[D

    :goto_0
    if-eqz p2, :cond_3

    iget-object p2, p1, Lorg/opencv/core/Scalar;->val:[D

    const-string p3, "scalar.`val`"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p2

    const/4 p3, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    xor-int/2addr p2, p3

    if-eqz p2, :cond_3

    .line 10
    iget-object p1, p1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide p2, p1, v2

    return-wide p2

    :cond_3
    return-wide v0
.end method

.method private final c(Lorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)I
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->c()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->d()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->h()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2
    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->i()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->j()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->h()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 3
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    float-to-int v3, v0

    iget v4, p1, Lorg/opencv/core/Rect;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/opencv/core/Rect;->x:I

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 4
    iput v0, v2, Lorg/opencv/core/Rect;->width:I

    .line 5
    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->a()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iget p1, p1, Lorg/opencv/core/Rect;->y:I

    sub-int/2addr v0, p1

    iput v0, v2, Lorg/opencv/core/Rect;->y:I

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->e()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 7
    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->g()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->f()Landroid/graphics/PointF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p3

    float-to-int p3, v1

    add-int/2addr v0, p3

    .line 8
    iput v0, p1, Lorg/opencv/core/Rect;->height:I

    .line 9
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a:Lcn/mucang/jiakaoyi/uilib/login/face/s;

    iget-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->width()I

    move-result v0

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->height()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a(Lorg/opencv/core/Rect;II)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 10
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->d:Lorg/opencv/core/Rect;

    invoke-virtual {p2, p1}, Lorg/opencv/core/Mat;->submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->g:Lorg/opencv/core/Mat;

    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 12
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->g:Lorg/opencv/core/Mat;

    const-wide v3, 0x406cc00000000000L    # 230.0

    const-wide v5, 0x406fe00000000000L    # 255.0

    const/4 v7, 0x0

    move-object v1, v2

    invoke-static/range {v1 .. v7}, Lorg/opencv/imgproc/Imgproc;->threshold(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)D

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->g:Lorg/opencv/core/Mat;

    invoke-static {p1}, Lorg/opencv/core/Core;->sumElems(Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;

    move-result-object p1

    iget-object p1, p1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide p2, p1, p3

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->g:Lorg/opencv/core/Mat;

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->width()I

    move-result p1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->g:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->height()I

    move-result v0

    mul-int p1, p1, v0

    mul-int/lit16 p1, p1, 0xff

    int-to-double v0, p1

    div-double/2addr p2, v0

    const/16 p1, 0x64

    int-to-double v0, p1

    mul-double p2, p2, v0

    double-to-int p1, p2

    return p1
.end method

.method private static final e(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;Lkotlin/jvm/internal/Ref$DoubleRef;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$averagePixel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->b()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object p0

    iget-wide v0, p1, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    double-to-int p1, v0

    invoke-interface {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->h(I)V

    return-void
.end method

.method private static final f(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->b()Lcn/mucang/jiakaoyi/uilib/login/face/j;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->e(I)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;Lkotlin/jvm/internal/Ref$DoubleRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->e(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;Lkotlin/jvm/internal/Ref$DoubleRef;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->f(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;I)V

    return-void
.end method


# virtual methods
.method public final b()Lcn/mucang/jiakaoyi/uilib/login/face/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->a:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    return-object v0
.end method

.method public final d(ZLorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)Z
    .locals 7

    const-string v0, "pos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landmark"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    invoke-direct {p0, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->a(Lorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)D

    move-result-wide v1

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/login/face/t/d;

    invoke-direct {v1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/t/d;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;Lkotlin/jvm/internal/Ref$DoubleRef;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 3
    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->b:I

    int-to-double v3, v3

    const/4 v5, 0x1

    cmpg-double v6, v1, v3

    if-gez v6, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "averagePixel: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "  \u592a\u9ed1\u4e86\uff0c\u820d\u5f03"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    return v5

    :cond_0
    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->c(Lorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)I

    move-result p1

    .line 6
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/login/face/t/e;

    invoke-direct {p2, p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/e;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/t/h;I)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 7
    iget p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->h:I

    if-le p1, p2, :cond_1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "highLightRate: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  \u9ad8\u5149\u592a\u591a\u4e86"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    return v5

    .line 9
    :cond_1
    iget-wide p1, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    const/4 p4, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    const/16 p1, 0x53

    .line 10
    invoke-static {p3, p3, p1}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 11
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->e:Ljava/util/ArrayList;

    invoke-static {p3, p1}, Lorg/opencv/core/Core;->split(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/opencv/core/Mat;

    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->f:Lorg/opencv/core/Mat;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Mat;

    invoke-static {p1, p2, v0}, Lorg/opencv/core/Core;->LUT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->e:Ljava/util/ArrayList;

    invoke-static {p1, p3}, Lorg/opencv/core/Core;->merge(Ljava/util/List;Lorg/opencv/core/Mat;)V

    const/16 p1, 0x55

    .line 14
    invoke-static {p3, p3, p1}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->c:Lkotlin/jvm/b/l;

    invoke-interface {p1, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return p4
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->f:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/h;->g:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return-void
.end method
