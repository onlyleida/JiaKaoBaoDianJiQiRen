.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;",
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
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/z;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;",
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
    sget-object p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/z$a;->a:[I

    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->wheel:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    const/4 p5, 0x2

    if-eq p3, p5, :cond_2

    const/4 p5, 0x3

    if-eq p3, p5, :cond_1

    const/4 p5, 0x4

    if-eq p3, p5, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 5
    :cond_2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_0
    const/4 p3, 0x0

    if-nez p2, :cond_4

    return p3

    .line 7
    :cond_4
    iget-object p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->startPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->endPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p2, p5, p6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p5

    .line 8
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->BigThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p2, v0, :cond_6

    .line 9
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->distance:F

    float-to-double p1, p1

    cmpl-double v0, p5, p1

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_1
    return p4

    .line 10
    :cond_6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Equal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p2, v0, :cond_8

    .line 11
    iget p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->distance:F

    float-to-double v0, p2

    sub-double/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p5

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->accuracy:F

    float-to-double p1, p1

    cmpg-double v0, p5, p1

    if-gtz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 p4, 0x0

    :goto_2
    return p4

    .line 12
    :cond_8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->SmallThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p2, v0, :cond_a

    .line 13
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->distance:F

    float-to-double p1, p1

    cmpg-double v0, p5, p1

    if-gez v0, :cond_9

    goto :goto_3

    :cond_9
    const/4 p4, 0x0

    :goto_3
    return p4

    .line 14
    :cond_a
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Between:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p2, v0, :cond_c

    .line 15
    iget p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->distanceMax:F

    float-to-double v0, p2

    cmpg-double p2, p5, v0

    if-gtz p2, :cond_b

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->distance:F

    float-to-double p1, p1

    cmpl-double v0, p5, p1

    if-ltz v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 p4, 0x0

    :goto_4
    return p4

    .line 16
    :cond_c
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->OutOfRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p2, v0, :cond_f

    .line 17
    iget p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->distance:F

    float-to-double v0, p2

    cmpg-double p2, p5, v0

    if-ltz p2, :cond_e

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDistanceToLineVariable;->distanceMax:F

    float-to-double p1, p1

    cmpl-double v0, p5, p1

    if-lez v0, :cond_d

    goto :goto_5

    :cond_d
    const/4 p4, 0x0

    :cond_e
    :goto_5
    return p4

    :cond_f
    return p3
.end method
