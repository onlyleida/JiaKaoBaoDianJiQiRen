.class public Lcom/amap/api/mapcore/util/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "land"

    const-string v1, "water"

    const-string v2, "green"

    const-string v3, "building"

    const-string v4, "highway"

    const-string v5, "arterial"

    const-string v6, "local"

    const-string v7, "railway"

    const-string v8, "subway"

    const-string v9, "boundary"

    const-string v10, "poilabel"

    const-string v11, "districtlable"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/o2;->a:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "land"

    const-string v2, "edu"

    const-string v3, "public"

    const-string v4, "traffic"

    const-string v5, "scenicSpot"

    const-string v6, "culture"

    const-string v7, "health"

    const-string v8, "sports"

    const-string v9, "business"

    const-string v10, "parkingLot"

    const-string v11, "subway"

    .line 2
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "water"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "green"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "buildings"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "highWay"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ringRoad"

    const-string v2, "nationalRoad"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v3, "provincialRoad"

    const-string v4, "secondaryRoad"

    const-string v5, "levelThreeRoad"

    const-string v6, "levelFourRoad"

    const-string v7, "roadsBeingBuilt"

    const-string v8, "overPass"

    const-string v9, "underPass"

    const-string v10, "other"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "railway"

    const-string v2, "highSpeedRailway"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "subwayline"

    const-string v2, "subwayBeingBuilt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "China"

    const-string v2, "foreign"

    const-string v3, "provincial"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "guideBoards"

    const-string v2, "pois"

    const-string v3, "aois"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v3, "continent"

    const-string v4, "country"

    const-string v5, "province"

    const-string v6, "city"

    const-string v7, "district"

    const-string v8, "town"

    const-string v9, "village"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/amap/api/mapcore/util/o2;->b:[[Ljava/lang/String;

    const-string v3, "regions"

    const-string v4, "water"

    const-string v5, "regions"

    const-string v6, "buildings"

    const-string v7, "roads"

    const-string v8, "roads"

    const-string v9, "roads"

    const-string v10, "roads"

    const-string v11, "roads"

    const-string v12, "borders"

    const-string v13, "labels"

    const-string v14, "labels"

    .line 3
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/o2;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 2
    :goto_0
    sget-object v3, Lcom/amap/api/mapcore/util/o2;->a:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 3
    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    .line 4
    sget-object p0, Lcom/amap/api/mapcore/util/o2;->b:[[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 2
    :goto_0
    sget-object v3, Lcom/amap/api/mapcore/util/o2;->a:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 3
    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    .line 4
    sget-object p0, Lcom/amap/api/mapcore/util/o2;->c:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_3
    return-object v1
.end method
