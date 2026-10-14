.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/l;->a:J

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/l;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;",
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

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 2
    iget p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->direction:I

    sget-object p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget p6, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p4, p6, :cond_0

    if-ne p3, p5, :cond_2

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    .line 3
    :cond_0
    sget-object p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget p6, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    if-ne p4, p6, :cond_1

    if-ne p3, p5, :cond_2

    goto :goto_0

    .line 4
    :cond_1
    sget-object p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iget p6, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->direction:I

    if-ne p4, p6, :cond_2

    if-ne p3, p5, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_1
    const-wide/16 p4, 0x0

    if-eqz p3, :cond_5

    .line 5
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/l;->a:J

    cmp-long p6, v2, p4

    if-nez p6, :cond_3

    .line 6
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-wide p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/l;->a:J

    .line 7
    :cond_3
    iget p4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->duration:I

    if-lez p4, :cond_6

    .line 8
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/l;->a:J

    sub-long/2addr p2, p4

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;->duration:I

    int-to-long p4, p1

    cmp-long p1, p2, p4

    if-ltz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 9
    :cond_5
    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/l;->a:J

    :cond_6
    return p3
.end method
