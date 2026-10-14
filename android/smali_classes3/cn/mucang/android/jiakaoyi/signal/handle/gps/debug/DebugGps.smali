.class public final Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0008J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u001e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ(\u0010\"\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J \u0010%\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J0\u0010%\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\'2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;",
        "",
        "()V",
        "converter",
        "Lcn/mucang/android/jiakaoyi/signal/proj/Converter;",
        "initAngle",
        "",
        "initLatLng",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        "getInitLatLng",
        "()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
        "initLatLng$delegate",
        "Lkotlin/Lazy;",
        "lastAngel",
        "lastHeading",
        "",
        "lastLocation",
        "Landroid/location/Location;",
        "lastSpeed",
        "mainPos",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "offsetAngel",
        "changeInitPoint",
        "",
        "gps",
        "generateLocation",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/LocationModel;",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "curTime",
        "",
        "generateLocation2",
        "posInfo",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveBt3dPosInfo;",
        "nextLoc",
        "curSpeed",
        "curAngel",
        "nextLocation",
        "gear",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
        "signal_release"
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
.field private final a:Lkotlin/f;

.field private b:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field private c:Landroid/location/Location;

.field private d:F

.field private e:F

.field private f:F

.field private g:D

.field private final h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps$initLatLng$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps$initLatLng$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->a:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->d()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    const v0, 0x461c3c00    # 9999.0f

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->f:F

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method private final d()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->a:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method private final e(Lcn/mucang/android/jiakaoyi/signal/c/e;Landroid/location/Location;J)Landroid/location/Location;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    .line 1
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->f:F

    const/4 v4, 0x1

    const v5, 0x461c3c00    # 9999.0f

    cmpg-float v3, v3, v5

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 2
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->f:F

    .line 3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    float-to-double v5, v3

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->g:D

    .line 4
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->f:F

    sub-float/2addr v3, v5

    const/high16 v5, -0x3dfc0000    # -33.0f

    const/high16 v6, 0x42040000    # 33.0f

    cmpl-float v7, v3, v6

    if-lez v7, :cond_2

    const/high16 v3, 0x42040000    # 33.0f

    goto :goto_1

    :cond_2
    cmpg-float v6, v3, v5

    if-gez v6, :cond_3

    const/high16 v3, -0x3dfc0000    # -33.0f

    :cond_3
    :goto_1
    float-to-double v5, v3

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    sub-long v7, v1, v7

    .line 7
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v3, v9, :cond_4

    const/4 v4, -0x1

    :cond_4
    int-to-float v3, v4

    .line 8
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->e:F

    add-float/2addr v4, v9

    mul-float v3, v3, v4

    float-to-double v3, v3

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v9

    const-wide v9, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v3, v9

    const/16 v9, 0x64

    int-to-double v9, v9

    mul-double v3, v3, v9

    long-to-double v7, v7

    mul-double v3, v3, v7

    const/16 v7, 0x3e8

    int-to-double v7, v7

    div-double/2addr v3, v7

    .line 9
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v7

    .line 10
    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 12
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 13
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-direct {v8, v9, v10, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    invoke-interface {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 14
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    const v15, 0x40666666    # 3.6f

    const-string v9, "gps"

    cmpg-double v16, v1, v7

    if-gez v16, :cond_5

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    mul-double v11, v11, v3

    add-double/2addr v5, v11

    iget-wide v7, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v3, v3, v13

    add-double/2addr v7, v3

    invoke-direct {v1, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 16
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    .line 17
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v9}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 18
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 19
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 20
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    div-float/2addr v1, v15

    invoke-virtual {v2, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 21
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->g:D

    double-to-float v1, v3

    invoke-virtual {v2, v1}, Landroid/location/Location;->setBearing(F)V

    move-wide/from16 v7, p3

    .line 22
    invoke-virtual {v2, v7, v8}, Landroid/location/Location;->setTime(J)V

    return-object v2

    :cond_5
    move-wide/from16 v7, p3

    const-wide v1, 0x4070100000000000L    # 257.0

    .line 23
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    const-wide/16 v5, 0x0

    .line 24
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    neg-double v5, v5

    div-double/2addr v3, v1

    add-double/2addr v5, v3

    .line 25
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    move-wide/from16 v16, v13

    iget-wide v13, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v13, v1

    invoke-direct {v3, v7, v8, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 26
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v13, v13, v18

    add-double/2addr v7, v13

    iget-wide v13, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    add-double/2addr v13, v1

    invoke-direct {v4, v7, v8, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object v1, v9

    move-object v9, v4

    move-wide/from16 v13, v16

    .line 27
    invoke-virtual/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    .line 29
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 30
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 31
    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v3, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 32
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    div-float/2addr v1, v15

    invoke-virtual {v3, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 33
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-virtual {v3, v1}, Landroid/location/Location;->setBearing(F)V

    move-wide/from16 v1, p3

    .line 34
    invoke-virtual {v3, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 35
    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->g:D

    return-object v3
.end method

.method private final f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/location/Location;FFJ)Landroid/location/Location;
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    move-wide/from16 v2, p5

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 2
    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->e:F

    add-float v6, p3, v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v8

    const-wide v8, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v6, v8

    const/16 v8, 0x64

    int-to-double v8, v8

    mul-double v6, v6, v8

    long-to-double v4, v4

    mul-double v6, v6, v4

    const/16 v4, 0x3e8

    int-to-double v4, v4

    div-double/2addr v6, v4

    .line 3
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    invoke-interface {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    float-to-double v8, v1

    .line 4
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 5
    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->d:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-double v9, v5

    .line 6
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v5, v11

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v8, v13

    add-float/2addr v5, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v8, v9

    float-to-double v9, v5

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v5, v8

    .line 7
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object/from16 v9, p1

    if-ne v9, v8, :cond_0

    float-to-double v8, v5

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v8, v10

    double-to-float v5, v8

    .line 8
    :cond_0
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v5, v13

    float-to-double v13, v5

    mul-double v13, v13, v6

    add-double/2addr v9, v13

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    float-to-double v11, v11

    mul-double v6, v6, v11

    add-double/2addr v4, v6

    invoke-direct {v8, v9, v10, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 9
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v4, v8}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v4

    .line 10
    new-instance v5, Landroid/location/Location;

    const-string v6, "gps"

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 11
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 12
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    const v4, 0x40666666    # 3.6f

    div-float v4, p3, v4

    .line 13
    invoke-virtual {v5, v4}, Landroid/location/Location;->setSpeed(F)V

    .line 14
    invoke-virtual {v5, v1}, Landroid/location/Location;->setBearing(F)V

    .line 15
    invoke-virtual {v5, v2, v3}, Landroid/location/Location;->setTime(J)V

    return-object v5
.end method


# virtual methods
.method public final declared-synchronized a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "gps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->c:Landroid/location/Location;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->c:Landroid/location/Location;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 3
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->c:Landroid/location/Location;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 4
    :goto_2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->d()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->d()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcn/mucang/android/jiakaoyi/signal/c/e;J)Lcn/mucang/android/jiakaoyi/signal/center/model/b;
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v8, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->c:Landroid/location/Location;

    if-nez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v3, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;Landroid/location/Location;J)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "gear"

    .line 6
    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move v4, v0

    move v5, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/location/Location;FFJ)Landroid/location/Location;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 7
    new-instance p1, Landroid/location/Location;

    const-string v1, "debugGps"

    invoke-direct {p1, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->d()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->d()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    const v1, 0x40666666    # 3.6f

    div-float v1, v0, v1

    .line 10
    invoke-virtual {p1, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 11
    invoke-virtual {p1, v8}, Landroid/location/Location;->setBearing(F)V

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setTime(J)V

    .line 13
    :cond_2
    iput v8, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->d:F

    .line 14
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->c:Landroid/location/Location;

    .line 15
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->e:F

    .line 16
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;-><init>()V

    .line 17
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {p3, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 18
    iput p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    .line 19
    iput v8, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;Lcn/mucang/android/jiakaoyi/signal/c/e;J)Lcn/mucang/android/jiakaoyi/signal/center/model/b;
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "posInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;->b:F

    float-to-double v2, v1

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;->c:F

    float-to-double v4, v1

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;->d:F

    float-to-double v6, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    .line 2
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 3
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/h;->e:F

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    cmpg-double v9, v3, v6

    if-nez v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpg-double v4, v2, v6

    if-nez v4, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v4, p1

    invoke-direct {v2, v3, v4, v5, v8}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->main:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, p2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    :cond_2
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    float-to-double v2, p1

    invoke-direct {p2, v0, v2, v3, v8}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->b:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p2

    .line 10
    new-instance v0, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 11
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 12
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    const p2, 0x40666666    # 3.6f

    div-float/2addr v1, p2

    .line 13
    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 14
    invoke-virtual {v0, p1}, Landroid/location/Location;->setBearing(F)V

    .line 15
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setTime(J)V

    .line 16
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->d:F

    .line 17
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->c:Landroid/location/Location;

    .line 18
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/DebugGps;->e:F

    .line 19
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;-><init>()V

    .line 20
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {p3, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    const p3, 0x3f4ccccd    # 0.8f

    .line 21
    iput p3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    .line 22
    iput p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
