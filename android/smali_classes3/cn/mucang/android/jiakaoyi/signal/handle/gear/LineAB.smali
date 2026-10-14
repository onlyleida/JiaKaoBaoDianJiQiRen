.class public Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:F

.field public b:F

.field public isVertical:Z

.field public x:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->isVertical:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->x:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->isVertical:Z

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->x:F

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->x:F

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->isVertical:Z

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->isVertical:Z

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->x:F

    .line 12
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->a:F

    .line 13
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->b:F

    .line 14
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->isVertical:Z

    return-void
.end method

.method public static area(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 11

    .line 4
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v0, v2

    .line 5
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide p2, p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v2, p2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr p2, v4

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, p2, v4

    if-gez v6, :cond_0

    return-wide v4

    .line 7
    :cond_0
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    mul-double v4, v0, v2

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v10, v4, v6

    if-ltz v10, :cond_1

    mul-double p2, p2, p0

    mul-double p2, p2, v8

    return-wide p2

    :cond_1
    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    div-double/2addr v0, p2

    mul-double v0, v0, p0

    mul-double v0, v0, v8

    return-wide v0
.end method

.method public static calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v6, v1

    .line 3
    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v6, v8

    double-to-float v1, v6

    float-to-double v6, v3

    .line 4
    iget-wide v10, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v6, v10

    double-to-float v3, v6

    float-to-double v4, v4

    mul-double v10, v10, v8

    add-double/2addr v4, v10

    double-to-float v4, v4

    float-to-double v5, v2

    mul-double v8, v8, v8

    add-double/2addr v5, v8

    double-to-float v2, v5

    goto :goto_0

    :cond_0
    mul-float p0, v1, v1

    int-to-float v0, v0

    div-float/2addr p0, v0

    sub-float/2addr p0, v2

    .line 5
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v5, v2

    const-wide v7, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v2, v5, v7

    if-gez v2, :cond_1

    .line 6
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    div-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;-><init>(F)V

    return-object p0

    :cond_1
    mul-float v2, v3, v1

    div-float/2addr v2, v0

    sub-float/2addr v2, v4

    div-float/2addr v2, p0

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    div-float/2addr v3, v0

    .line 7
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    invoke-direct {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;-><init>(FF)V

    return-object p0
.end method


# virtual methods
.method public area(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v1

    invoke-virtual {p0, v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v2

    invoke-virtual {p0, v4}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 3
    invoke-static {p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->area(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    return-wide p1
.end method

.method public distance(FF)F
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->isVertical:Z

    if-eqz v0, :cond_0

    .line 2
    iget p2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->x:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    .line 3
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->a:F

    neg-float v0, v0

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->b:F

    neg-float v1, v1

    mul-float v2, v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-double v4, v2

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float v0, v0, p1

    mul-float p2, p2, v3

    add-float/2addr v0, p2

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method public getY(F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->isVertical:Z

    if-eqz v0, :cond_0

    return p1

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->a:F

    mul-float v0, v0, p1

    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->b:F

    add-float/2addr v0, p1

    return v0
.end method
