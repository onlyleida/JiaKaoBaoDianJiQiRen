.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;",
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
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/h;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;",
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
    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->rect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    .line 3
    new-instance p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p3, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point4:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p3, p5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p3

    .line 4
    new-instance p5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p5, p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p6, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->point3:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p5, p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p5

    .line 5
    iget-object p6, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p6, p3, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iget-object p6, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-static {p6, p3, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 8
    iget-object p6, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p6, p3, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    invoke-static {p2, p3, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    .line 10
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    .line 11
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectPositionVariable;->position:I

    const-wide/high16 p5, 0x4024000000000000L    # 10.0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    add-double v3, p2, p5

    cmpg-double p1, v0, v3

    if-gez p1, :cond_0

    add-double/2addr v0, p5

    cmpg-double p1, p2, v0

    if-gez p1, :cond_0

    const/4 p4, 0x1

    :cond_0
    return p4

    :cond_1
    if-ne p1, v2, :cond_3

    add-double/2addr p2, p5

    cmpl-double p1, v0, p2

    if-ltz p1, :cond_2

    const/4 p4, 0x1

    :cond_2
    return p4

    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    add-double/2addr v0, p5

    cmpl-double p1, p2, v0

    if-ltz p1, :cond_4

    const/4 p4, 0x1

    :cond_4
    return p4
.end method
