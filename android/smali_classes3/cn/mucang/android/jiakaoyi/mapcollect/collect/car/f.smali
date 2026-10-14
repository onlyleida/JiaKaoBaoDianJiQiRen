.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/i/a;

.field private final b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;D)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/i/b;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/i/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p2, p2, v4

    invoke-direct {v1, v2, v3, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {v0, p1, v1, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;

    return-void
.end method


# virtual methods
.method a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/CarSrcData;->mainPosDegree:D

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;D)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 4
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 5
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    return-object p1
.end method
