.class public final Lcn/mucang/jiakaoyi/uilib/login/face/t/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0018\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\nH\u0002R2\u0010\u0005\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u0007 \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u0007\u0018\u00010\u00060\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R2\u0010\r\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u000e0\u000e \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u000e0\u000e\u0018\u00010\u00060\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u0011\u001a&\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u0007 \u0008*\u0012\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u0007\u0018\u00010\u00060\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/face/check/BlurCheck;",
        "",
        "listener",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;",
        "(Lcn/mucang/jiakaoyi/uilib/login/face/FaceCheckListener;)V",
        "blurLimit",
        "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;",
        "",
        "kotlin.jvm.PlatformType",
        "blurMat",
        "Lorg/opencv/core/Mat;",
        "blurStatistic",
        "Lcn/mucang/jiakaoyi/uilib/login/face/check/BlurCheck$Statistic;",
        "enableLimitBlur",
        "",
        "grayRect",
        "Lorg/opencv/core/Rect;",
        "nightBlurLimit",
        "nightBlurStatistic",
        "intercept",
        "isNight",
        "pos",
        "dst",
        "landmark",
        "Lcn/mucang/jiakaoyi/uilib/login/face/LandmarkEntity;",
        "release",
        "",
        "testSaveImg",
        "value",
        "Statistic",
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

.field private b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lorg/opencv/core/Rect;

.field private d:Lorg/opencv/core/Mat;

.field private e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

.field private g:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/face/j;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->a:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "key_face_enable_limit_blur"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d(Ljava/lang/String;Ljava/lang/Boolean;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 3
    new-instance p1, Lorg/opencv/core/Rect;

    invoke-direct {p1}, Lorg/opencv/core/Rect;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->c:Lorg/opencv/core/Rect;

    .line 4
    new-instance p1, Lorg/opencv/core/Mat;

    invoke-direct {p1}, Lorg/opencv/core/Mat;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->d:Lorg/opencv/core/Mat;

    .line 5
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter;->B:Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;->a()I

    move-result v0

    const-string v1, "key_face_limit_blur"

    .line 6
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 7
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    const-string v2, "blurLimit"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "\u5f69\u8272"

    invoke-direct {v1, v0, v2}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/utils/r0;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->f:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    .line 8
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/login/face/FaceLoginPresenter$a;->a()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f19999a    # 0.6f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const-string v0, "key_face_limit_blur_night"

    .line 9
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->g:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 10
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    const-string v1, "nightBlurLimit"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\u7ea2\u5916\u7070\u8272"

    invoke-direct {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/utils/r0;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->h:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    return-void
.end method

.method private static final b(Lcn/mucang/jiakaoyi/uilib/login/face/t/f;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->a:Lcn/mucang/jiakaoyi/uilib/login/face/j;

    invoke-interface {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/j;->d(I)V

    return-void
.end method

.method private static final c(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "\u7167\u7247\u6a21\u7cca\uff0c\u4e22\u5f03, isNight:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Z)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->c(Z)V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/jiakaoyi/uilib/login/face/t/f;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->b(Lcn/mucang/jiakaoyi/uilib/login/face/t/f;I)V

    return-void
.end method

.method private final g(ILorg/opencv/core/Mat;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(ZLorg/opencv/core/Rect;Lorg/opencv/core/Mat;Lcn/mucang/jiakaoyi/uilib/login/face/q;)Z
    .locals 11

    const-string v0, "pos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landmark"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->f()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, p2, Lorg/opencv/core/Rect;->x:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/opencv/core/Rect;->x:I

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->g()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->f()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lorg/opencv/core/Rect;->width:I

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->h()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iget p2, p2, Lorg/opencv/core/Rect;->y:I

    sub-int/2addr v2, p2

    iput v2, v0, Lorg/opencv/core/Rect;->y:I

    .line 5
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->e()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/login/face/q;->h()Landroid/graphics/PointF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p4

    float-to-int p4, v0

    iput p4, p2, Lorg/opencv/core/Rect;->height:I

    .line 6
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a:Lcn/mucang/jiakaoyi/uilib/login/face/s;

    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p3}, Lorg/opencv/core/Mat;->width()I

    move-result v0

    invoke-virtual {p3}, Lorg/opencv/core/Mat;->height()I

    move-result v2

    invoke-virtual {p2, p4, v0, v2}, Lcn/mucang/jiakaoyi/uilib/login/face/s;->a(Lorg/opencv/core/Rect;II)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 7
    :cond_1
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->c:Lorg/opencv/core/Rect;

    invoke-virtual {p3, p2}, Lorg/opencv/core/Mat;->submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;

    move-result-object p2

    .line 8
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->d:Lorg/opencv/core/Mat;

    const/4 v0, 0x6

    invoke-static {p2, p4, v0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 9
    new-instance p2, Lorg/opencv/core/MatOfDouble;

    invoke-direct {p2}, Lorg/opencv/core/MatOfDouble;-><init>()V

    .line 10
    new-instance p4, Lorg/opencv/core/MatOfDouble;

    invoke-direct {p4}, Lorg/opencv/core/MatOfDouble;-><init>()V

    .line 11
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->d:Lorg/opencv/core/Mat;

    const/4 v4, -0x1

    const/4 v5, 0x3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    move-object v2, v3

    invoke-static/range {v2 .. v10}, Lorg/opencv/imgproc/Imgproc;->Laplacian(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IIDDI)V

    .line 12
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->d:Lorg/opencv/core/Mat;

    invoke-static {v0, p2, p4}, Lorg/opencv/core/Core;->meanStdDev(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfDouble;)V

    .line 13
    invoke-virtual {p4, v1, v1}, Lorg/opencv/core/Mat;->get(II)[D

    move-result-object v0

    aget-wide v2, v0, v1

    double-to-int v0, v2

    .line 14
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->release()V

    .line 15
    invoke-virtual {p4}, Lorg/opencv/core/Mat;->release()V

    .line 16
    new-instance p2, Lcn/mucang/jiakaoyi/uilib/login/face/t/b;

    invoke-direct {p2, p0, v0}, Lcn/mucang/jiakaoyi/uilib/login/face/t/b;-><init>(Lcn/mucang/jiakaoyi/uilib/login/face/t/f;I)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 17
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->h:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->a()[I

    move-result-object p4

    invoke-static {v0, v1}, Lkotlin/a0/d;->b(II)I

    move-result v2

    .line 18
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->h:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->a()[I

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Lkotlin/a0/d;->e(II)I

    move-result v2

    aget v3, p4, v2

    add-int/2addr v3, p2

    .line 19
    aput v3, p4, v2

    .line 20
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->g:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p4

    const-string v2, "nightBlurLimit.get()"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    if-ge v0, p4, :cond_2

    const/4 v1, 0x1

    .line 21
    :cond_2
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->h:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    invoke-virtual {p2, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->b(Z)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->f:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    invoke-virtual {p4}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->a()[I

    move-result-object p4

    invoke-static {v0, v1}, Lkotlin/a0/d;->b(II)I

    move-result v2

    .line 23
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->f:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->a()[I

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Lkotlin/a0/d;->e(II)I

    move-result v2

    aget v3, p4, v2

    add-int/2addr v3, p2

    .line 24
    aput v3, p4, v2

    .line 25
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->e:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p4

    const-string v2, "blurLimit.get()"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    if-ge v0, p4, :cond_4

    const/4 v1, 0x1

    .line 26
    :cond_4
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->f:Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;

    invoke-virtual {p2, v1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f$a;->b(Z)V

    .line 27
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cacBlurVar:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", isNight:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "www"

    invoke-static {p4, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    .line 28
    invoke-direct {p0, v0, p3}, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->g(ILorg/opencv/core/Mat;)V

    .line 29
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    const/16 p3, 0xbb8

    new-instance p4, Lcn/mucang/jiakaoyi/uilib/login/face/t/a;

    invoke-direct {p4, p1}, Lcn/mucang/jiakaoyi/uilib/login/face/t/a;-><init>(Z)V

    const-string p1, "calBlur"

    invoke-virtual {p2, p1, p3, p4}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    :cond_5
    return v1
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/face/t/f;->d:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return-void
.end method
