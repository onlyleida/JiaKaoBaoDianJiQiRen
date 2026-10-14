.class public Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public altitude:D

.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 5
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 6
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 7

    .line 7
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DDD)V

    return-void
.end method

.method public static from(Landroid/location/Location;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 8

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DDD)V

    return-object v7
.end method

.method public static isValid(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x4056800000000000L    # 90.0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double p0, v1, v3

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static set(Landroid/location/Location;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(DDD)V

    return-void
.end method


# virtual methods
.method public angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v7, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 p1, 0x1

    .line 2
    aget p1, v0, p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 1
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v7, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 p1, 0x0

    .line 2
    aget p1, v0, p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public sameWith(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setGps(DDD)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 5
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 6
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    return-void
.end method

.method public setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 2
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    .line 3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gps{latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
