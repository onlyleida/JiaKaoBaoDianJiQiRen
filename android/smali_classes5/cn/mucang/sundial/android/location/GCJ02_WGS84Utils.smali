.class public Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;
    }
.end annotation


# static fields
.field public static a:D = 6378245.0

.field public static ee:D = 0.006693421622965943

.field public static pi:D = 3.141592653589793


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gcj02_To_Wgs84(DD)Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;

    invoke-direct {v0}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;-><init>()V

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->transform(DD)Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;

    move-result-object v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double p2, p2, v2

    .line 3
    iget-wide v4, v1, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->longitude:D

    sub-double/2addr p2, v4

    mul-double p0, p0, v2

    .line 4
    iget-wide v2, v1, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->latitude:D

    sub-double/2addr p0, v2

    .line 5
    iget-boolean v1, v1, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->china:Z

    iput-boolean v1, v0, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->china:Z

    .line 6
    iput-wide p0, v0, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->latitude:D

    .line 7
    iput-wide p2, v0, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->longitude:D

    return-object v0
.end method

.method private static isOutOfChina(DD)Z
    .locals 4

    const/4 v0, 0x1

    const-wide v1, 0x4052004189374bc7L    # 72.004

    cmpg-double v3, p2, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide p2, 0x3fea89a027525461L    # 0.8293

    cmpg-double v1, p0, p2

    if-ltz v1, :cond_2

    const-wide p2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v1, p0, p2

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static transform(DD)Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;
    .locals 23

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    .line 1
    new-instance v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;

    invoke-direct {v4}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;-><init>()V

    .line 2
    invoke-static/range {p0 .. p3}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->isOutOfChina(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 3
    iput-boolean v5, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->china:Z

    .line 4
    iput-wide v0, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->latitude:D

    .line 5
    iput-wide v2, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->longitude:D

    return-object v4

    :cond_0
    const-wide v5, 0x405a400000000000L    # 105.0

    sub-double v5, v2, v5

    const-wide v7, 0x4041800000000000L    # 35.0

    sub-double v7, v0, v7

    .line 6
    invoke-static {v5, v6, v7, v8}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->transformLat(DD)D

    move-result-wide v9

    .line 7
    invoke-static {v5, v6, v7, v8}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->transformLon(DD)D

    move-result-wide v5

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double v11, v0, v7

    .line 8
    sget-wide v13, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v11, v11, v13

    .line 9
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 10
    sget-wide v15, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->ee:D

    mul-double v15, v15, v13

    mul-double v15, v15, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v15, v13, v15

    .line 11
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    mul-double v9, v9, v7

    .line 12
    sget-wide v19, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->a:D

    sget-wide v21, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->ee:D

    sub-double v13, v13, v21

    mul-double v13, v13, v19

    mul-double v15, v15, v17

    div-double/2addr v13, v15

    sget-wide v15, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v13, v13, v15

    div-double/2addr v9, v13

    mul-double v5, v5, v7

    div-double v19, v19, v17

    .line 13
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v19, v19, v7

    sget-wide v7, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v19, v19, v7

    div-double v5, v5, v19

    add-double/2addr v0, v9

    add-double/2addr v2, v5

    const/4 v5, 0x1

    .line 14
    iput-boolean v5, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->china:Z

    .line 15
    iput-wide v0, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->latitude:D

    .line 16
    iput-wide v2, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->longitude:D

    return-object v4
.end method

.method private static transformLat(DD)D
    .locals 12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p0, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p2, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p2, v8

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p0

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double p0, p0, v8

    .line 2
    sget-wide v8, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double p0, p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double p0, p0, v8

    sget-wide v10, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v2, v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    .line 3
    sget-wide p0, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v8

    div-double v2, p2, v6

    sget-wide v8, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    div-double p0, p2, p0

    .line 4
    sget-wide v2, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double p0, p0, v2

    sget-wide v2, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double p2, p2, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    return-wide v4
.end method

.method private static transformLon(DD)D
    .locals 12

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p2, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p0, v6

    mul-double v10, v8, p0

    add-double/2addr v2, v10

    mul-double v8, v8, p2

    add-double/2addr v2, v8

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4018000000000000L    # 6.0

    mul-double p2, p2, p0

    .line 2
    sget-wide v6, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double p2, p2, v6

    mul-double v8, p0, v4

    sget-wide v10, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr p2, v8

    mul-double p2, p2, v4

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    .line 3
    sget-wide p2, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    div-double v6, p0, v8

    sget-wide v10, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double v6, v6, v10

    add-double/2addr p2, v6

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4028000000000000L    # 12.0

    div-double p2, p0, p2

    .line 4
    sget-wide v6, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide v6, 0x4062c00000000000L    # 150.0

    mul-double p2, p2, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v6

    sget-wide v6, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double p0, p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    add-double/2addr p2, p0

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public static wgs84_To_Gcj02(DD)Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;
    .locals 23

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    .line 1
    new-instance v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;

    invoke-direct {v4}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;-><init>()V

    .line 2
    invoke-static/range {p0 .. p3}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->isOutOfChina(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 3
    iput-boolean v5, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->china:Z

    .line 4
    iput-wide v0, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->latitude:D

    .line 5
    iput-wide v2, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->longitude:D

    goto :goto_0

    :cond_0
    const-wide v5, 0x405a400000000000L    # 105.0

    sub-double v5, v2, v5

    const-wide v7, 0x4041800000000000L    # 35.0

    sub-double v7, v0, v7

    .line 6
    invoke-static {v5, v6, v7, v8}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->transformLat(DD)D

    move-result-wide v9

    .line 7
    invoke-static {v5, v6, v7, v8}, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->transformLon(DD)D

    move-result-wide v5

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double v11, v0, v7

    .line 8
    sget-wide v13, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v11, v11, v13

    .line 9
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 10
    sget-wide v15, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->ee:D

    mul-double v15, v15, v13

    mul-double v15, v15, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v15, v13, v15

    .line 11
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    mul-double v9, v9, v7

    .line 12
    sget-wide v19, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->a:D

    sget-wide v21, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->ee:D

    sub-double v13, v13, v21

    mul-double v13, v13, v19

    mul-double v15, v15, v17

    div-double/2addr v13, v15

    sget-wide v15, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v13, v13, v15

    div-double/2addr v9, v13

    mul-double v5, v5, v7

    div-double v19, v19, v17

    .line 13
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v19, v19, v7

    sget-wide v7, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;->pi:D

    mul-double v19, v19, v7

    div-double v5, v5, v19

    add-double/2addr v0, v9

    add-double/2addr v2, v5

    const/4 v5, 0x1

    .line 14
    iput-boolean v5, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->china:Z

    .line 15
    iput-wide v0, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->latitude:D

    .line 16
    iput-wide v2, v4, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->longitude:D

    :goto_0
    return-object v4
.end method
