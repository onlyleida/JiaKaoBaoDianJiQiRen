.class public Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->w:F

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    .line 5
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    .line 6
    iput p4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->z:F

    return-void
.end method

.method public static multiplication(Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;)Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->w:F

    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->w:F

    mul-float v1, v1, v2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    iget v3, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    mul-float v4, v2, v3

    sub-float/2addr v1, v4

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    iget v5, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    mul-float v6, v4, v5

    sub-float/2addr v1, v6

    iget v6, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->z:F

    iget v7, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->z:F

    mul-float v8, v6, v7

    sub-float/2addr v1, v8

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->w:F

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->w:F

    mul-float v3, v3, v1

    iget v8, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->w:F

    mul-float v2, v2, v8

    add-float/2addr v3, v2

    mul-float v2, v4, v7

    add-float/2addr v3, v2

    mul-float v2, v6, v5

    sub-float/2addr v3, v2

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    mul-float v5, v5, v1

    mul-float v4, v4, v8

    add-float/2addr v5, v4

    .line 4
    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    mul-float v3, v6, v2

    add-float/2addr v5, v3

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    mul-float v4, v3, v7

    sub-float/2addr v5, v4

    iput v5, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    mul-float v1, v1, v7

    mul-float v6, v6, v8

    add-float/2addr v1, v6

    .line 5
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    mul-float p0, p0, v2

    sub-float/2addr v1, p0

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->z:F

    return-object v0
.end method

.method public static vectorRotation([FLcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;)V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    const/4 v5, 0x2

    aget v6, p0, v5

    const/4 v7, 0x0

    invoke-direct {v0, v7, v2, v4, v6}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;-><init>(FFFF)V

    .line 2
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->multiplication(Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;)Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->inverse()Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->multiplication(Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;)Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;

    move-result-object p1

    .line 3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    aput v0, p0, v1

    .line 4
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    aput v0, p0, v3

    .line 5
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->z:F

    aput p1, p0, v5

    return-void
.end method


# virtual methods
.method public inverse()Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    mul-float v0, v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    .line 3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->z:F

    mul-float v0, v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->z:F

    return-object p0
.end method

.method public toEulerAngles()Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->w:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->z:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/b;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quaternion{w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/Quaternion;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
