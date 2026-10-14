.class public Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:Z

.field private final h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final i:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field private final j:Lcn/mucang/android/jiakaoyi/signal/i/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->a:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->b:D

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->c:D

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->d:D

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->g:Z

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->j:Lcn/mucang/android/jiakaoyi/signal/i/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->j:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->set(Landroid/location/Location;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->j:Lcn/mucang/android/jiakaoyi/signal/i/a;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->d:D

    const-wide v3, 0x3fc999999999999aL    # 0.2

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    const-wide v3, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->e:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    .line 4
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->e:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    .line 5
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v6, v3

    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 6
    iget-wide v3, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v3, v1

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object v0
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->j:Lcn/mucang/android/jiakaoyi/signal/i/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    .line 3
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide v5, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    return-object v2

    .line 4
    :cond_1
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 5
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->g:Z

    if-nez v4, :cond_3

    .line 6
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->c:D

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    iget-wide v11, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->b:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    cmpl-double v4, v7, v5

    if-lez v4, :cond_2

    .line 7
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->set(Landroid/location/Location;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 8
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->j:Lcn/mucang/android/jiakaoyi/signal/i/a;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v4, v2

    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->e:D

    .line 11
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    float-to-double v4, v2

    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->f:D

    .line 12
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->c:D

    .line 13
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->b:D

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->g:Z

    return-object v3

    .line 15
    :cond_2
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->c:D

    .line 16
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->b:D

    return-object v2

    .line 17
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 18
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-double v6, v2

    .line 19
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->set(Landroid/location/Location;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 20
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    float-to-double v8, v2

    .line 21
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->f:D

    sub-double v10, v8, v10

    double-to-float v2, v10

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    float-to-double v10, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v12

    .line 22
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->a:J

    sub-long v14, v4, v14

    long-to-double v14, v14

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v14, v14, v16

    .line 23
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->c:D

    sub-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    move-wide/from16 v18, v8

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->b:D

    sub-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v12, v8

    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v12, v8

    if-gez v2, :cond_5

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_4

    const-wide v8, 0x3fe999999999999aL    # 0.8

    .line 24
    iget-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->d:D

    add-double/2addr v12, v6

    mul-double v14, v14, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v12

    const-wide v12, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v14, v12

    mul-double v14, v14, v8

    .line 25
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->e:D

    add-double/2addr v8, v10

    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->e:D

    .line 26
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v14

    .line 27
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->e:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v14, v14, v10

    .line 28
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v10, v8

    iput-wide v10, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 29
    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v8, v14

    iput-wide v8, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    goto :goto_0

    .line 30
    :cond_4
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 31
    :cond_5
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->j:Lcn/mucang/android/jiakaoyi/signal/i/a;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v2, v8}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 32
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v8, v2

    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->e:D

    .line 33
    :goto_0
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->c:D

    .line 34
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->b:D

    .line 35
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->d:D

    .line 36
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->a:J

    move-wide/from16 v1, v18

    .line 37
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->f:D

    .line 38
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/m;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v3
.end method
