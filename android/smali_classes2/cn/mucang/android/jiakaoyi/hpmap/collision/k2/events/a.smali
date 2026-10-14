.class public Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public d:F

.field public e:F

.field public final f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final g:F

.field public final h:F

.field public final i:Z

.field public final j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>(ZZLcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->a:Z

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->b:Z

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const v1, 0x47c35000    # 100000.0f

    if-nez p3, :cond_1

    .line 5
    iput v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->d:F

    .line 6
    iput v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->e:F

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->g:F

    .line 11
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->h:F

    .line 12
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->i:Z

    goto :goto_1

    .line 13
    :cond_1
    instance-of v2, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;

    if-eqz v2, :cond_2

    .line 14
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;

    .line 15
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->C()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->y()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->x()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->D()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->g:F

    .line 19
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->z()D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->h:F

    .line 20
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->E()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->i:Z

    goto :goto_1

    .line 21
    :cond_2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->g:F

    .line 22
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->h:F

    .line 23
    iput v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->d:F

    .line 24
    iput v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->e:F

    .line 25
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 27
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->i:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_0

    .line 2
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->b(FF)[F

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v3

    invoke-virtual {p1, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->b(FF)[F

    move-result-object v1

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v3, 0x0

    aget v4, v0, v3

    float-to-double v4, v4

    const/4 v6, 0x1

    aget v0, v0, v6

    float-to-double v7, v0

    invoke-direct {v2, v4, v5, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget v3, v1, v3

    float-to-double v3, v3

    aget v1, v1, v6

    float-to-double v5, v1

    invoke-direct {v0, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentRotateDegrees()D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->d:F

    sub-float/2addr p1, v0

    .line 6
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->e:F

    goto :goto_0

    :cond_0
    const p1, 0x47c35000    # 100000.0f

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->d:F

    .line 8
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/a;->e:F

    :goto_0
    return-void
.end method
