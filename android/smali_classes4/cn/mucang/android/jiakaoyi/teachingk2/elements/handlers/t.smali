.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;",
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
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/t;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;",
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
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    .line 2
    iget-object p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Equal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-ne p4, p5, :cond_2

    .line 3
    iget p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    if-nez p4, :cond_0

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    .line 4
    :cond_0
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-nez p1, :cond_1

    const/4 p6, 0x1

    :cond_1
    return p6

    .line 5
    :cond_2
    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->SmallThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p4, p5, :cond_4

    .line 6
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_3

    const/4 p6, 0x1

    :cond_3
    return p6

    .line 7
    :cond_4
    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->Between:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p4, p5, :cond_6

    .line 8
    iget p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speedMax:F

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_5

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_5

    const/4 p6, 0x1

    :cond_5
    return p6

    .line 9
    :cond_6
    sget-object p5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->OutOfRange:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p4, p5, :cond_9

    .line 10
    iget p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    int-to-float p2, p2

    cmpg-float p2, p3, p2

    if-ltz p2, :cond_7

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speedMax:F

    cmpl-float p1, p3, p1

    if-lez p1, :cond_8

    :cond_7
    const/4 p6, 0x1

    :cond_8
    return p6

    .line 11
    :cond_9
    iget p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    if-nez p4, :cond_a

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_a

    return v0

    .line 12
    :cond_a
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;->speed:I

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_b

    const/4 p6, 0x1

    :cond_b
    return p6
.end method
