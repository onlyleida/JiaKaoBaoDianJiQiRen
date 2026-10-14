.class public Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public relateBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

.field public relateFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 6

    .line 2
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    return-void
.end method


# virtual methods
.method public get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->relateFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->relateBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 8

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->relateFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->relateBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->relateBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    if-eqz v2, :cond_1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    return-object p2

    .line 7
    :cond_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->relateFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    if-eqz v2, :cond_3

    move-object v3, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;->get(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    return-object p2

    :cond_4
    if-nez p2, :cond_5

    return-object v1

    .line 9
    :cond_5
    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V
    .locals 7

    .line 1
    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    sub-double/2addr v0, p4

    invoke-direct {v4, v5, v6, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;-><init>(DD)V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->relateFront:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    sub-double/2addr v2, p4

    invoke-direct {p1, p2, p3, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;-><init>(DD)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/car/CarPoint;->relateBack:Lcn/mucang/android/jiakaoyi/hpmap/car/RelatePos;

    return-void
.end method
