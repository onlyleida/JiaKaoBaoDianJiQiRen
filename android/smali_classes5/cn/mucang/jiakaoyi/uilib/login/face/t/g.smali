.class public final Lcn/mucang/jiakaoyi/uilib/login/face/t/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0008j\u0008\u0012\u0004\u0012\u00020\u0004`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/face/check/GrayCheck;",
        "",
        "()V",
        "grayMat",
        "Lorg/opencv/core/Mat;",
        "grayRect",
        "Lorg/opencv/core/Rect;",
        "matSplit",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "temp",
        "intercept",
        "",
        "pos",
        "dst",
        "landmark",
        "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;",
        "release",
        "",
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
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/opencv/core/Mat;

.field private c:Lorg/opencv/core/Rect;

.field private d:Lorg/opencv/core/Mat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->b:Lorg/opencv/core/Mat;

    .line 4
    new-instance v0, Lorg/opencv/core/Rect;

    invoke-direct {v0}, Lorg/opencv/core/Rect;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->c:Lorg/opencv/core/Rect;

    .line 5
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->d:Lorg/opencv/core/Mat;

    return-void
.end method

.method private static final b(D)V
    .locals 0

    double-to-int p0, p0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "\u7070\u5ea6\u56fe"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(D)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->b(D)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)Z
    .locals 6

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landmark"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->f()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/opencv/core/Rect;->x:I

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->c:Lorg/opencv/core/Rect;

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
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p3}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->h()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iget p1, p1, Lorg/opencv/core/Rect;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Lorg/opencv/core/Rect;->y:I

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->c:Lorg/opencv/core/Rect;

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

    iget-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->width()I

    move-result v0

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->height()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a(Lorg/opencv/core/Rect;II)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p2, p1}, Lorg/opencv/core/Mat;->submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->d:Lorg/opencv/core/Mat;

    const/4 v0, 0x6

    invoke-static {p1, p2, v0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 8
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 9
    new-instance p2, Lorg/opencv/core/Mat;

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->size()Lorg/opencv/core/Size;

    move-result-object v0

    sget v1, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {p2, v0, v1}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Size;I)V

    .line 10
    new-instance v0, Lorg/opencv/core/Scalar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Scalar;-><init>(D)V

    invoke-static {p2, v0, p2}, Lorg/opencv/core/Core;->multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->a:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/opencv/core/Core;->split(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v3, v0, 0x1

    .line 13
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Mat;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/opencv/core/Mat;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->b:Lorg/opencv/core/Mat;

    invoke-static {v0, v4, v5}, Lorg/opencv/core/Core;->absdiff(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->b:Lorg/opencv/core/Mat;

    invoke-static {v0, p2, p2}, Lorg/opencv/core/Core;->add(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V

    if-lt v3, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    invoke-static {p2}, Lorg/opencv/core/Core;->mean(Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;

    move-result-object p1

    iget-object p1, p1, Lorg/opencv/core/Scalar;->val:[D

    const-string v0, "mean(grayscaleResult).`val`"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lkotlin/collections/k;->z([DI)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 16
    :goto_2
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->release()V

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    cmpg-double v0, v1, p1

    if-gez v0, :cond_4

    .line 17
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    const/16 p2, 0xbb8

    new-instance p3, Lcn/mucang/jiakaoyi/uilib/login/face/t/c;

    invoke-direct {p3, v1, v2}, Lcn/mucang/jiakaoyi/uilib/login/face/t/c;-><init>(D)V

    const-string v0, "gsrValue"

    invoke-virtual {p1, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    return p3
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->b:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/g;->d:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return-void
.end method
