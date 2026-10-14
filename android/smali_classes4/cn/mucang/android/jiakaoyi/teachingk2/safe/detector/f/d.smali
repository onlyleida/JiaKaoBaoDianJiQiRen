.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;->a:Ljava/util/Map;

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;)V
    .locals 0

    return-void
.end method

.method private static c(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            ")",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_8

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 5
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v7, v5, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v4, v6, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v4, v3, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 7
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p0

    .line 8
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    neg-double p1, p1

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    neg-double v0, v0

    invoke-virtual {v3, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide p0, 0x403ab851eb851eb9L    # 26.720000000000002

    .line 10
    iget-wide v0, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/16 v4, 0x0

    const-wide v6, -0x3fc547ae147ae147L    # -26.720000000000002

    cmpl-double p2, v0, v4

    if-lez p2, :cond_5

    .line 11
    iget-wide v0, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpg-double p2, v0, v6

    if-gez p2, :cond_3

    .line 12
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_LEFT_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object p0

    :cond_3
    cmpl-double p2, v0, p0

    if-lez p2, :cond_4

    .line 13
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_RIGHT_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object p0

    .line 14
    :cond_4
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_FRONT:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object p0

    .line 15
    :cond_5
    iget-wide v0, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpg-double p2, v0, v6

    if-gez p2, :cond_6

    .line 16
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_LEFT_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object p0

    :cond_6
    cmpl-double p2, v0, p0

    if-lez p2, :cond_7

    .line 17
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_RIGHT_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object p0

    .line 18
    :cond_7
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->DESC_BACK:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    return-object p0

    :cond_8
    return-object v3
.end method

.method private d(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;)V

    .line 5
    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->b:Ljava/util/List;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->c:Ljava/util/List;

    invoke-static {v1, v2, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;->c(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;->Trigger:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$Type;

    if-ne p1, p2, :cond_3

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;->d(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
