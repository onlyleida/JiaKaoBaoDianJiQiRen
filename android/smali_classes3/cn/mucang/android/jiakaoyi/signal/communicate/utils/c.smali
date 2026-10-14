.class public Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->b:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->a:F

    return-void
.end method


# virtual methods
.method public a(FF)F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    long-to-float p2, v1

    const v1, 0x3a83126f    # 0.001f

    mul-float p2, p2, v1

    .line 2
    :cond_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->a:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    sub-float v0, p2, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->b:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 3
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->b:F

    goto :goto_0

    .line 4
    :cond_1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->b:F

    .line 5
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->a:F

    :goto_0
    return p1
.end method
