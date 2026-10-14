.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/b0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;-><init>(Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/b0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/b0/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;",
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
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/b0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)D

    move-result-wide p2

    const/4 p4, 0x0

    const-wide/16 p5, 0x0

    cmpl-double v0, p2, p5

    if-lez v0, :cond_2

    .line 2
    iget-object p5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    sget-object p6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->SmallThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    const/4 v0, 0x1

    if-ne p5, p6, :cond_1

    .line 3
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;->distance:F

    float-to-double p5, p1

    cmpg-double p1, p2, p5

    if-gez p1, :cond_0

    const/4 p4, 0x1

    :cond_0
    return p4

    .line 4
    :cond_1
    sget-object p6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->BigThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne p5, p6, :cond_2

    .line 5
    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;->distance:F

    float-to-double p5, p1

    cmpl-double p1, p2, p5

    if-lez p1, :cond_2

    const/4 p4, 0x1

    :cond_2
    return p4
.end method
