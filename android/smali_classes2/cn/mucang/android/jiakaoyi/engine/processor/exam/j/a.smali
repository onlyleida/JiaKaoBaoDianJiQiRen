.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;

.field private b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private d:F

.field private e:F

.field private final f:F

.field private final g:F

.field private final h:Landroid/location/Location;

.field private final i:D

.field private j:F


# direct methods
.method public constructor <init>(FFLandroid/location/Location;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;

    const v0, -0x368bdc00    # -1000000.0f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->f:F

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 v0, 0x42b20000    # 89.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->g:F

    .line 6
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->h:Landroid/location/Location;

    float-to-double p2, p2

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    float-to-double v0, p1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 8
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    div-double/2addr v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->i:D

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x429c0000    # 78.0f

    .line 9
    invoke-direct {p0, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;-><init>(FFLandroid/location/Location;)V

    return-void
.end method

.method private static a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v5

    .line 2
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v5, v7

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const/4 v9, 0x0

    const-wide v10, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v12, v7, v10

    if-gez v12, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v12, v7, v10

    if-gez v12, :cond_0

    return v9

    .line 4
    :cond_0
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v7, v10

    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v14, v10, v12

    mul-double v7, v7, v14

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v14, v0

    move-wide/from16 v16, v10

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v18, v0, v9

    mul-double v14, v14, v18

    add-double/2addr v7, v14

    mul-double v14, v3, v3

    mul-double v18, v5, v5

    add-double v14, v14, v18

    div-double/2addr v7, v14

    mul-double v3, v3, v7

    add-double v2, v16, v3

    mul-double v7, v7, v5

    add-double/2addr v7, v0

    sub-double v4, v16, v2

    sub-double/2addr v2, v12

    mul-double v4, v4, v2

    const-wide/16 v2, 0x0

    cmpl-double v6, v4, v2

    if-ltz v6, :cond_1

    sub-double/2addr v0, v7

    sub-double/2addr v7, v9

    mul-double v0, v0, v7

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    return v9
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->h:Landroid/location/Location;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;

    if-nez v0, :cond_2

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;->b(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;-><init>(Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    .line 6
    :cond_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_4

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->h:Landroid/location/Location;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->a(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    :cond_4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_5

    return v1

    .line 9
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    .line 10
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    .line 11
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_8

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/i;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    .line 13
    iput v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->j:F

    goto :goto_0

    .line 14
    :cond_7
    iput v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->j:F

    .line 15
    :cond_8
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->j:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_9

    .line 16
    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    .line 17
    :cond_9
    iget v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    const v3, -0x368bdc00    # -1000000.0f

    cmpl-float v5, v2, v3

    if-nez v5, :cond_a

    return v1

    .line 18
    :cond_a
    iget v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->d:F

    cmpl-float v3, v5, v3

    if-nez v3, :cond_b

    .line 19
    iput v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->d:F

    .line 20
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    .line 21
    :cond_b
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/high16 v3, 0x42340000    # 45.0f

    if-eqz v2, :cond_c

    .line 22
    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    .line 23
    iget v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    float-to-double v7, v2

    sub-double/2addr v7, v5

    double-to-float v2, v7

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 24
    iget p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->d:F

    .line 25
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return v1

    .line 26
    :cond_c
    iget v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    iget v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->d:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    .line 27
    iget p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->d:F

    .line 28
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return v1

    .line 29
    :cond_d
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 30
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    const/4 v7, 0x1

    if-eqz p2, :cond_f

    .line 31
    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->f:F

    float-to-double v8, p2

    cmpg-double p2, v2, v8

    if-gez p2, :cond_e

    :goto_2
    const/4 p2, 0x1

    goto :goto_3

    :cond_e
    const/4 p2, 0x0

    goto :goto_3

    .line 32
    :cond_f
    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->i:D

    cmpl-double p2, v2, v8

    if-lez p2, :cond_10

    .line 33
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return v1

    .line 34
    :cond_10
    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    float-to-double v8, p2

    sub-double v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v2, v2, v8

    .line 35
    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->f:F

    float-to-double v8, p2

    cmpg-double p2, v2, v8

    if-gez p2, :cond_e

    const-wide/16 v8, 0x0

    cmpl-double p2, v2, v8

    if-lez p2, :cond_e

    goto :goto_2

    :goto_3
    if-nez p2, :cond_11

    .line 36
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return v1

    .line 37
    :cond_11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->h:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result p2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    sub-float/2addr p2, v2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v2, p2

    .line 38
    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->g:F

    float-to-double v8, p2

    cmpg-double v10, v2, v8

    if-gtz v10, :cond_12

    const/4 p2, 0x1

    const/4 v2, 0x1

    goto :goto_4

    :cond_12
    mul-float p2, p2, v4

    float-to-double v8, p2

    cmpg-double p2, v2, v8

    if-gtz p2, :cond_13

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpg-double p2, v2, v8

    if-gez p2, :cond_13

    .line 39
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->j:F

    cmpl-float p2, p2, v2

    if-lez p2, :cond_13

    .line 40
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/l;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 41
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p2

    if-eqz p2, :cond_14

    const/4 v2, 0x2

    goto :goto_4

    :cond_13
    const/4 p2, 0x0

    :cond_14
    const/4 v2, 0x0

    .line 42
    :goto_4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p2, :cond_15

    .line 43
    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    float-to-double v3, p2

    sub-double v3, v5, v3

    double-to-float p2, v3

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v3, 0x42b40000    # 90.0f

    cmpg-float p2, p2, v3

    if-gez p2, :cond_15

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thresholdDegree "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->g:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; currentBearing "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->e:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; speed "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "; condition "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; current "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; targetPos "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 46
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; angleToTarget "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v7

    :cond_15
    return v1
.end method
