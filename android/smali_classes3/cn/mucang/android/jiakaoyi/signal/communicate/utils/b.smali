.class public Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-float v0, p1, p2

    mul-float v1, p3, p4

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    mul-float v2, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v2, v3

    mul-float v2, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    float-to-double v5, v0

    float-to-double v7, v2

    .line 2
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v0, v5

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;->c:F

    mul-float v0, p1, p3

    mul-float v2, p4, p2

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    const v2, 0x3fc90e56    # 1.57075f

    .line 4
    invoke-static {v2, v0}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;->a:F

    goto :goto_0

    :cond_0
    float-to-double v5, v0

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v0, v5

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;->a:F

    :goto_0
    mul-float p1, p1, p4

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    mul-float p1, p1, v1

    mul-float p4, p4, p4

    add-float/2addr v3, p4

    mul-float v3, v3, v1

    sub-float/2addr v4, v3

    float-to-double p1, p1

    float-to-double p3, v4

    .line 6
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;->b:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EulerAngles{pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;->a:F

    float-to-double v1, v1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;->b:F

    float-to-double v1, v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;->c:F

    float-to-double v1, v1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
