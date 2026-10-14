.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;",
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
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;",
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
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    .line 3
    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->BigThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-ne p4, p5, :cond_1

    .line 4
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->distance:F

    float-to-double p4, p1

    cmpl-double p1, p2, p4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    return p6

    .line 5
    :cond_1
    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Equal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p4, p5, :cond_3

    .line 6
    iget p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->distance:F

    float-to-double p4, p4

    sub-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->accuracy:F

    float-to-double p4, p1

    cmpg-double p1, p2, p4

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p6, 0x0

    :goto_1
    return p6

    .line 7
    :cond_3
    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->SmallThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p4, p5, :cond_5

    .line 8
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->distance:F

    float-to-double p4, p1

    cmpg-double p1, p2, p4

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p6, 0x0

    :goto_2
    return p6

    .line 9
    :cond_5
    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Between:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p4, p5, :cond_7

    .line 10
    iget p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->distanceMax:F

    float-to-double p4, p4

    cmpg-double v1, p2, p4

    if-gtz v1, :cond_6

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->distance:F

    float-to-double p4, p1

    cmpl-double p1, p2, p4

    if-ltz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 p6, 0x0

    :goto_3
    return p6

    .line 11
    :cond_7
    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->OutOfRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p4, p5, :cond_a

    .line 12
    iget p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->distance:F

    float-to-double p4, p4

    cmpg-double v1, p2, p4

    if-ltz v1, :cond_9

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;->distanceMax:F

    float-to-double p4, p1

    cmpl-double p1, p2, p4

    if-lez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 p6, 0x0

    :cond_9
    :goto_4
    return p6

    :cond_a
    return v0
.end method
