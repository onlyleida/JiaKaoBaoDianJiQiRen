.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;,
        Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;
    }
.end annotation


# static fields
.field public static final InvalidDistance:D = 9999.0

.field private static final itemCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->itemCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static angleIsToBig(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide p0

    mul-double v2, v2, p0

    div-double/2addr v0, v2

    const-wide p0, 0x3fd5e3a7daa4fca4L    # 0.34202

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static calDistance(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")D"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v6, v1, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v2, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v1, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->y(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    cmpg-double v7, v1, v4

    if-gez v7, :cond_0

    move-wide v4, v1

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpg-double v2, v0, v4

    if-gez v2, :cond_2

    move-wide v4, v0

    goto :goto_2

    :cond_3
    return-wide v4
.end method

.method public static calDistanceToLine(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;",
            ")D"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>()V

    .line 2
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->j(DD)V

    .line 3
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->j(DD)V

    const/high16 v1, 0x43960000    # 300.0f

    .line 4
    invoke-virtual {v0, v1, v1, v1, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->m(FFFF)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 6
    invoke-static {v3, p1, p2, v0, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->getDistanceToLine(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;)D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static clearCache()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->itemCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static createCalItem(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;

    mul-int/lit8 v5, v2, 0xa

    add-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$1;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;

    invoke-direct {v1, p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static getDistanceToLine(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/a;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;",
            ")D"
        }
    .end annotation

    const-wide v0, 0x40c3878000000000L    # 9999.0

    if-eqz p0, :cond_a

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->itemCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->createCalItem(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v5, v3

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;

    .line 7
    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v8, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;->vec:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p0, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->angleIsToBig(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;->FrontWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;

    if-ne p4, v8, :cond_4

    .line 9
    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;->subPath:Ljava/util/List;

    invoke-static {v7, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->calDistance(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpl-double v9, v3, v7

    if-lez v9, :cond_2

    move-wide v0, v7

    move-wide v3, v0

    goto :goto_0

    .line 10
    :cond_4
    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;->BackWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;

    if-ne p4, v8, :cond_5

    .line 11
    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;->subPath:Ljava/util/List;

    invoke-static {v7, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->calDistance(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2

    move-wide v0, v7

    move-wide v5, v0

    goto :goto_0

    .line 12
    :cond_5
    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;->Max:Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;

    if-eq p4, v8, :cond_6

    sget-object v9, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;->Min:Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$Mode;

    if-ne p4, v9, :cond_2

    .line 13
    :cond_6
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;->subPath:Ljava/util/List;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->calDistance(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpl-double v9, v3, v0

    if-lez v9, :cond_7

    move-wide v3, v0

    .line 14
    :cond_7
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance$CalItem;->subPath:Ljava/util/List;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/TingCheCarToLineDistance;->calDistance(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpl-double v7, v5, v0

    if-lez v7, :cond_8

    move-wide v5, v0

    :cond_8
    if-ne p4, v8, :cond_9

    .line 15
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_0

    .line 16
    :cond_9
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_a
    :goto_1
    return-wide v0
.end method
