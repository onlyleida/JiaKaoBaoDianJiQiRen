.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final b:D

.field private final c:D


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->b:D

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->c:D

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 13

    .line 1
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v0, v3

    .line 2
    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v3, v5

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->c:D

    mul-double v7, v0, v5

    iget-wide v9, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->b:D

    mul-double v11, v3, v9

    add-double/2addr v7, v11

    neg-double v0, v0

    mul-double v0, v0, v9

    mul-double v3, v3, v5

    add-double/2addr v0, v3

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    div-double v10, v3, v5

    move-object v5, v2

    move-wide v6, v7

    move-wide v8, v0

    invoke-direct/range {v5 .. v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    .line 4
    iget-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v3

    iput-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 5
    iget-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v3

    iput-wide v0, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    return-object v2
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 14

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->c:D

    mul-double v4, v0, v2

    iget-wide v8, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v10, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->b:D

    mul-double v12, v8, v10

    sub-double/2addr v4, v12

    mul-double v0, v0, v10

    mul-double v8, v8, v2

    add-double/2addr v8, v0

    iget-wide v10, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-object v0, v7

    move-wide v1, v4

    move-wide v3, v8

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/car/f$a;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method
