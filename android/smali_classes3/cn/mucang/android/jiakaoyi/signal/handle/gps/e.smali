.class public Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private final g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private i:Lcn/mucang/android/jiakaoyi/signal/i/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->a:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->b:D

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->c:D

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->d:D

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Landroid/location/Location;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    .line 2
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->i:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->c:D

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->b:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    .line 6
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->i:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 7
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->e:D

    .line 10
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    float-to-double v2, v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->f:D

    .line 11
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->c:D

    .line 12
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->b:D

    .line 13
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->a:J

    return-object v1

    .line 14
    :cond_1
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->c:D

    .line 15
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->b:D

    return-object v1

    .line 16
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 17
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-double v4, v4

    .line 18
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v6

    .line 19
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    float-to-double v7, v7

    .line 20
    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->f:D

    sub-double v9, v7, v9

    double-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v9, v9, v10

    invoke-static {v9}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v9

    float-to-double v9, v9

    .line 21
    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->a:J

    sub-long v11, v2, v11

    long-to-double v11, v11

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v11, v11, v13

    .line 22
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    move-wide v15, v7

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->c:D

    sub-double/2addr v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    move-wide/from16 v17, v2

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->b:D

    sub-double/2addr v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v7, v2

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v13, v7, v2

    if-gez v13, :cond_3

    .line 23
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->d:D

    add-double/2addr v2, v4

    mul-double v11, v11, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v11, v11, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, v2

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v11, v2

    .line 24
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->e:D

    add-double/2addr v2, v9

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->e:D

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v11

    .line 26
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->e:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v11, v11, v6

    .line 27
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v8, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v8, v2

    iput-wide v8, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 28
    iget-wide v2, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v2, v11

    iput-wide v2, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    goto :goto_0

    .line 29
    :cond_3
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->i:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 30
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->e:D

    .line 31
    :goto_0
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->c:D

    .line 32
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->b:D

    .line 33
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->d:D

    move-wide/from16 v2, v17

    .line 34
    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->a:J

    move-wide v2, v15

    .line 35
    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->f:D

    .line 36
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 37
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->i:Lcn/mucang/android/jiakaoyi/signal/i/a;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    .line 38
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 39
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    .line 40
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 41
    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v3, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 42
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->e:D

    double-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/location/Location;->setBearing(F)V

    return-object v3
.end method
