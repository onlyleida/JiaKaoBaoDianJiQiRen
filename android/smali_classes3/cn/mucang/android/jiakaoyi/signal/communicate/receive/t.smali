.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# static fields
.field private static j:F = 100000.0f

.field private static k:F = 100000.0f

.field private static l:F = 100000.0f

.field private static m:F = -1.0f

.field private static final n:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;


# instance fields
.field public final a:Landroid/location/Location;

.field public final b:F

.field public c:F

.field public final d:I

.field public e:I

.field public final f:I

.field public final g:F

.field public final h:F

.field public i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->n:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    return-void
.end method

.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->e:I

    .line 3
    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->i:B

    .line 4
    new-instance v2, Landroid/location/Location;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->a:Landroid/location/Location;

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v3

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->i()F

    move-result v4

    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->h:F

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->h()D

    move-result-wide v5

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0x4e

    if-ne v7, v9, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 9
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->h()D

    move-result-wide v9

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v11

    const/16 v12, 0x45

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 11
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float v12, v12, v13

    const v13, 0x3f03b29a

    mul-float v12, v12, v13

    const v13, 0x40666666    # 3.6f

    mul-float v12, v12, v13

    .line 12
    sget-object v13, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->n:Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;

    invoke-virtual {v13, v12, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/c;->a(FF)F

    move-result v4

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    move-result v12

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    .line 16
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v13

    iput v13, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->f:I

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v13

    iput v13, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->d:I

    int-to-long v13, v3

    .line 22
    invoke-virtual {v2, v13, v14}, Landroid/location/Location;->setTime(J)V

    if-eqz v7, :cond_2

    .line 23
    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    goto :goto_2

    :cond_2
    neg-double v13, v5

    .line 24
    invoke-virtual {v2, v13, v14}, Landroid/location/Location;->setLatitude(D)V

    :goto_2
    if-eqz v11, :cond_3

    .line 25
    invoke-virtual {v2, v9, v10}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_3

    :cond_3
    neg-double v13, v9

    .line 26
    invoke-virtual {v2, v13, v14}, Landroid/location/Location;->setLongitude(D)V

    :goto_3
    const/4 v3, 0x0

    .line 27
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->i()F

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->i()F

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->i()F

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->i()F

    move-result v14

    float-to-double v14, v14

    .line 31
    invoke-virtual {v2, v14, v15}, Landroid/location/Location;->setAltitude(D)V

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->e:I

    .line 33
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v2

    iget v14, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->e:I

    invoke-virtual {v2, v14}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->e(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_0
    const/4 v7, 0x0

    :catchall_1
    const/4 v11, 0x0

    :catchall_2
    const/4 v13, 0x0

    :catchall_3
    :goto_4
    const/4 v2, 0x0

    :goto_5
    const/4 v14, 0x6

    if-ge v2, v14, :cond_5

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 36
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v2

    if-ne v2, v8, :cond_6

    const-string v2, "\u56fa\u4ef65\u79d2\u6ca1\u6709\u6536\u5230rtcm\u6570\u636e"

    .line 38
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->q(Ljava/lang/Object;)V

    .line 39
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->e()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v2

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->b()Z

    move-result v8

    const-wide/16 v15, 0x0

    if-eqz v8, :cond_a

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v8

    iput-byte v8, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->i:B

    const/4 v1, 0x5

    if-ne v8, v1, :cond_a

    .line 42
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/c;->e()D

    move-result-wide v17

    cmpl-double v1, v17, v15

    if-eqz v1, :cond_a

    .line 43
    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->k:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v14, v1

    const-wide v19, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v1, v14, v19

    if-lez v1, :cond_7

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v14, v1

    cmpl-double v1, v14, v19

    if-lez v1, :cond_7

    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->k:F

    sub-float/2addr v1, v11

    .line 44
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v14, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v14

    if-ltz v1, :cond_a

    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->j:F

    int-to-float v15, v12

    sub-float/2addr v1, v15

    .line 45
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v16, 0x41200000    # 10.0f

    cmpl-float v1, v1, v16

    if-gtz v1, :cond_a

    sub-float v1, v11, v15

    .line 46
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v14

    if-gez v1, :cond_7

    goto :goto_7

    :cond_7
    float-to-double v14, v4

    const-wide/high16 v19, 0x3fd0000000000000L    # 0.25

    cmpl-double v1, v14, v19

    if-lez v1, :cond_9

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u6ca1\u6709\u5b9a\u5411\u89e3,readHeading="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ",bearing="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",lastBearing="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->j:F

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ",speed="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    .line 48
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v1, :cond_8

    const/16 v1, 0xb4

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    int-to-double v1, v1

    add-double v1, v17, v1

    double-to-float v1, v1

    int-to-float v2, v12

    add-float/2addr v2, v1

    .line 49
    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->b(F)F

    move-result v11

    sput v11, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->l:F

    goto :goto_7

    .line 50
    :cond_9
    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->l:F

    const v2, 0x47c35000    # 100000.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpl-double v16, v1, v14

    if-lez v16, :cond_a

    .line 51
    sget v11, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->l:F

    .line 52
    :cond_a
    :goto_7
    iput v7, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->b:F

    .line 53
    iput v13, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->g:F

    .line 54
    invoke-direct {v0, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->b(F)F

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->c:F

    .line 55
    sput v11, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->k:F

    .line 56
    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->m:F

    cmpl-float v2, v1, v3

    if-lez v2, :cond_b

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->h:F

    sub-float/2addr v2, v1

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_b

    const v1, 0x47c35000    # 100000.0f

    .line 57
    sput v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->j:F

    .line 58
    :cond_b
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->a:Landroid/location/Location;

    int-to-float v2, v12

    invoke-direct {v0, v1, v4, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->a(Landroid/location/Location;FF)V

    .line 59
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->h:F

    sput v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->m:F

    .line 60
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v1

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->d:I

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->o(I)V

    .line 61
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v1

    iget-byte v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->i:B

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->m(I)V

    .line 62
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v1

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->f:I

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->p(I)V

    .line 63
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v1

    float-to-double v2, v7

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->n(D)V

    const-wide/16 v1, 0x0

    cmpl-double v3, v5, v1

    if-eqz v3, :cond_c

    cmpl-double v3, v9, v1

    if-nez v3, :cond_d

    .line 64
    :cond_c
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->f()Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/gps/GpsAnalysis;->d()V

    :cond_d
    return-void
.end method

.method private a(Landroid/location/Location;FF)V
    .locals 2

    const v0, 0x40666666    # 3.6f

    div-float v0, p2, v0

    .line 1
    invoke-virtual {p1, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 2
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->b(F)F

    move-result p3

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->j:F

    const v1, 0x47c35000    # 100000.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    sub-float p2, p3, v0

    .line 4
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->b(F)F

    move-result p2

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 5
    sget p2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->j:F

    invoke-virtual {p1, p2}, Landroid/location/Location;->setBearing(F)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1, p3}, Landroid/location/Location;->setBearing(F)V

    .line 7
    sput p3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/t;->j:F

    return-void
.end method

.method private b(F)F
    .locals 2

    :goto_0
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    sub-float/2addr p1, v1

    goto :goto_1

    :cond_1
    return p1
.end method
