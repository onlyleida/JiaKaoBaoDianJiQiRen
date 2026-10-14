.class public Lcn/mucang/android/jiakaoyi/exam/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;II",
            "Lcn/mucang/android/jiakaoyi/k3collect/j0/a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;

    invoke-direct {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;-><init>(Ljava/util/List;II)V

    .line 2
    invoke-static {v0, p4}, Lcn/mucang/android/jiakaoyi/exam/a/b;->d(Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hasData:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/a/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/a/a;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->converter:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->converter:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->xy:Ljava/lang/String;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/trace/upload/c;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/c;-><init>()V

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/s/j;->k(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/c;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v1, "Trace"

    const-string v2, "\u5730\u56fe check \u63a5\u53e3\u51fa\u9519\u6216\u5730\u56fe\u4e0d\u5b58\u5728"

    .line 6
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->renderModels:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;

    .line 9
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 10
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-static {v0, v1, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto :goto_0

    .line 14
    :cond_2
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    if-eqz v3, :cond_3

    .line 15
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 17
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget v4, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/b;->d:I

    invoke-static {v0, v1, v4, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto :goto_0

    .line 20
    :cond_3
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    if-eqz v3, :cond_4

    .line 21
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    .line 22
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 23
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-static {v0, v1, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto :goto_0

    .line 28
    :cond_4
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    if-eqz v3, :cond_6

    .line 29
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    .line 30
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 31
    :goto_1
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 32
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 33
    :cond_5
    iget v4, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    invoke-static {v0, v1, v4, v3, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto/16 :goto_0

    .line 34
    :cond_6
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    if-eqz v3, :cond_7

    .line 35
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    .line 36
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 37
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-static {v0, v1, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto/16 :goto_0

    .line 40
    :cond_7
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    if-eqz v3, :cond_9

    .line 41
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    .line 42
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    .line 43
    :goto_2
    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 44
    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 45
    :cond_8
    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-static {v0, v1, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto/16 :goto_0

    .line 46
    :cond_9
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    if-eqz v3, :cond_a

    .line 47
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    .line 48
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 49
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-static {v0, v1, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto/16 :goto_0

    .line 51
    :cond_a
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    if-eqz v3, :cond_c

    .line 52
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    .line 53
    iget-boolean v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->r:Z

    if-eqz v5, :cond_b

    .line 54
    new-instance v5, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->p:Ljava/util/List;

    iget v7, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-direct {v5, v6, v7, v4}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;-><init>(Ljava/util/List;II)V

    .line 55
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->q:Ljava/util/List;

    invoke-virtual {v5, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 56
    invoke-static {v5, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->d(Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    .line 57
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 58
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 59
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-static {v0, v1, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto/16 :goto_0

    .line 64
    :cond_c
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    if-eqz v3, :cond_e

    .line 65
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    .line 66
    iget-boolean v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->k:Z

    if-eqz v5, :cond_d

    .line 67
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->i:Ljava/util/List;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-static {v0, v5, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto/16 :goto_0

    .line 68
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-static {v0, v1, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto/16 :goto_0

    .line 72
    :cond_e
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    if-eqz v3, :cond_f

    .line 73
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    .line 74
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 75
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    invoke-static {v0, v1, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->a(Ljava/util/List;Ljava/util/List;IILcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    goto/16 :goto_0

    .line 78
    :cond_f
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    if-eqz v3, :cond_1

    .line 79
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    .line 80
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    iget v6, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget v7, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->n:I

    invoke-direct {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;-><init>(Ljava/util/List;II)V

    .line 82
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceSiteItemModel;->setAssistPoints(Ljava/util/List;)V

    .line 83
    invoke-static {v4, v2}, Lcn/mucang/android/jiakaoyi/exam/a/b;->d(Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V

    .line 84
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    :cond_10
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p:Landroidx/lifecycle/z;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    iget v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashInterval:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n(D)F

    move-result v5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v6, p1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashLength:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/engine/trace/site/TraceLineModel;->setStyle(IIZFI)V

    return-void
.end method
