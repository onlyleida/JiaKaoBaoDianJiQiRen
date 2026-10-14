.class public Lcn/mucang/android/jiakaoyi/signal/utils/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:D = 1.5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/util/List;IID)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/utils/j/b;",
            ">;IID)V"
        }
    .end annotation

    if-ge p1, p2, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    :goto_0
    if-ge v3, p2, :cond_1

    .line 1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    move v2, v3

    move-wide v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v3, v0, p3

    if-ltz v3, :cond_2

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;->a:Z

    .line 4
    invoke-static {p0, p1, v2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->a(Ljava/util/List;IID)V

    .line 5
    invoke-static {p0, v2, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->a(Ljava/util/List;IID)V

    :cond_2
    return-void
.end method

.method public static b(Ljava/util/List;Landroid/util/SparseArray;IID)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;IID)V"
        }
    .end annotation

    if-ge p2, p3, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x1

    const/4 v8, 0x0

    :goto_0
    const-string v2, "DPUtil"

    if-ge v3, p3, :cond_1

    .line 1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compression: curDist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-double v2, v4, v0

    if-lez v2, :cond_0

    move v8, v3

    move-wide v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "compression: ===================== "

    .line 3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-double v2, v0, p4

    if-ltz v2, :cond_2

    .line 4
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-virtual {p1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v8

    move-wide v6, p4

    .line 6
    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->b(Ljava/util/List;Landroid/util/SparseArray;IID)V

    move v4, v8

    move v5, p3

    .line 7
    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->b(Ljava/util/List;Landroid/util/SparseArray;IID)V

    :cond_2
    return-void
.end method

.method public static c(Ljava/util/List;Ljava/lang/Double;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/utils/j/b;",
            ">;",
            "Ljava/lang/Double;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/utils/j/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;->a:Z

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;

    iput-boolean v2, v1, Lcn/mucang/android/jiakaoyi/signal/utils/j/b;->a:Z

    if-nez p1, :cond_0

    .line 3
    sget-wide v3, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double v2, v2, v4

    .line 6
    invoke-static {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->a(Ljava/util/List;IID)V

    return-object p0
.end method

.method public static d(Ljava/util/List;Ljava/lang/Double;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/lang/Double;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    const/4 v8, 0x0

    .line 3
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p1, :cond_0

    .line 4
    sget-wide v1, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_0
    const/4 v3, 0x0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double v5, v5, v1

    move-object v1, p0

    move-object v2, v7

    .line 7
    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->b(Ljava/util/List;Landroid/util/SparseArray;IID)V

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v7, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-ge v8, p0, :cond_1

    .line 10
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v3, v5

    .line 2
    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v5, v7

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v11, v7, v9

    if-gez v11, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v11, v7, v9

    if-gez v11, :cond_0

    mul-double v3, v3, v3

    mul-double v5, v5, v5

    add-double/2addr v3, v5

    return-wide v3

    .line 4
    :cond_0
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v11, v7, v9

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v13, v9, v13

    mul-double v11, v11, v13

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v15, v13, v0

    move-wide/from16 v17, v13

    iget-wide v13, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v13, v0, v13

    mul-double v15, v15, v13

    add-double/2addr v11, v15

    mul-double v13, v3, v3

    mul-double v15, v5, v5

    add-double/2addr v13, v15

    div-double/2addr v11, v13

    mul-double v3, v3, v11

    add-double/2addr v9, v3

    mul-double v11, v11, v5

    add-double/2addr v0, v11

    sub-double/2addr v9, v7

    sub-double v0, v0, v17

    mul-double v9, v9, v9

    mul-double v0, v0, v0

    add-double/2addr v9, v0

    return-wide v9
.end method
