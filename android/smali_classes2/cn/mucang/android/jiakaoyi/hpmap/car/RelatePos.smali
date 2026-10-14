.class public Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public distance:D

.field public theta:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->distance:D

    .line 4
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->theta:D

    return-void
.end method


# virtual methods
.method public get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p4

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->distance:D

    mul-double v3, v3, p4

    iget-wide p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->theta:D

    add-double/2addr p4, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double v3, v3, p4

    add-double p4, v1, v3

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->distance:D

    mul-double v3, v3, p6

    iget-wide p6, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->theta:D

    add-double/2addr p2, p6

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double v3, v3, p2

    add-double p6, v1, v3

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-object p1, v0

    move-wide p2, p4

    move-wide p4, p6

    move-wide p6, v1

    invoke-direct/range {p1 .. p7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object v0
.end method

.method public getWithBack(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 10

    .line 1
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->distance:D

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->theta:D

    add-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->distance:D

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->theta:D

    add-double/2addr v0, v8

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v6, v6, v0

    add-double/2addr v4, v6

    invoke-direct {p2, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object p2
.end method

.method public getWithFront(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 10

    .line 1
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->distance:D

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->theta:D

    add-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->distance:D

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->theta:D

    add-double/2addr v0, v8

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v6, v6, v0

    add-double/2addr v4, v6

    invoke-direct {p1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object p1
.end method
