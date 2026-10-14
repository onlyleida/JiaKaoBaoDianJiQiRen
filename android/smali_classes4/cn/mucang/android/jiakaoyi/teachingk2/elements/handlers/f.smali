.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/f;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    .line 2
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p3, p4, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p3

    .line 3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p5, p6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p5

    .line 4
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->BigThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    .line 5
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

    float-to-double v3, p1

    cmpl-double p2, p3, v3

    if-lez p2, :cond_0

    float-to-double p1, p1

    cmpl-double p3, p5, p1

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 6
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Equal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p2, v0, :cond_4

    .line 7
    iget p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

    float-to-double v3, p2

    sub-double/2addr p3, v3

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    iget p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->accuracy:F

    float-to-double v3, p4

    cmpg-double p4, p2, v3

    if-lez p4, :cond_3

    iget p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

    float-to-double p2, p2

    sub-double/2addr p5, p2

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->accuracy:F

    float-to-double p4, p1

    cmpg-double p1, p2, p4

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1

    .line 8
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->SmallThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p2, v0, :cond_7

    .line 9
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

    float-to-double v3, p1

    cmpg-double p2, p3, v3

    if-ltz p2, :cond_6

    float-to-double p1, p1

    cmpg-double p3, p5, p1

    if-gez p3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1

    .line 10
    :cond_7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Between:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p2, v0, :cond_9

    .line 11
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 12
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    .line 13
    iget p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

    float-to-double p4, p4

    cmpl-double p6, p2, p4

    if-ltz p6, :cond_8

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distanceMax:F

    float-to-double p1, p1

    cmpg-double p3, v3, p1

    if-gtz p3, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 14
    :cond_9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->OutOfRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p2, v0, :cond_c

    add-double/2addr p3, p5

    const-wide/high16 p5, 0x3fe0000000000000L    # 0.5

    mul-double p3, p3, p5

    .line 15
    iget p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distance:F

    float-to-double p5, p2

    cmpg-double p2, p3, p5

    if-ltz p2, :cond_b

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;->distanceMax:F

    float-to-double p1, p1

    cmpl-double p5, p3, p1

    if-lez p5, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_4
    return v1

    :cond_c
    return v2
.end method
