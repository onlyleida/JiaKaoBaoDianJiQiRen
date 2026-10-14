.class public Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;,
        Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/i;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;

.field private final d:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

.field private f:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;>;"
        }
    .end annotation
.end field

.field private g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

.field private final h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->f:Ljava/lang/ref/Reference;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 6
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->e:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 7
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;-><init>()V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;

    .line 8
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/exe/i;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/i;-><init>()V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/i;

    .line 9
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    invoke-direct {p3, p5, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;-><init>(ILjava/util/Set;Ljava/util/List;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    .line 10
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->q(Ljava/util/List;)V

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->b()Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;

    move-result-object v0

    invoke-virtual {v0, v15, v14, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/c;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 2
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 3
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->b:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->f:Ljava/lang/ref/Reference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    :goto_0
    if-ne v0, v13, :cond_2

    .line 5
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    if-nez v0, :cond_3

    .line 6
    :cond_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;-><init>()V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    .line 7
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->j()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->f:Ljava/lang/ref/Reference;

    .line 9
    :cond_3
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)Ljava/util/Map;

    move-result-object v0

    .line 10
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->d(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)Ljava/util/Map;

    move-result-object v1

    .line 11
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->e(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)Ljava/util/Map;

    move-result-object v2

    .line 12
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j()I

    move-result v3

    .line 13
    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->f(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 14
    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->f(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->f(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->f(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-static {v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->g(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;I)I

    .line 18
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v4, :cond_5

    .line 21
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v12, v4

    if-nez v6, :cond_6

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v0

    goto :goto_1

    :cond_6
    move-object/from16 v16, v6

    :goto_1
    if-nez v5, :cond_7

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v0

    goto :goto_2

    :cond_7
    move-object/from16 v17, v5

    .line 27
    :goto_2
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 28
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 29
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    iget v2, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-virtual {v0, v15, v14, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->i(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 30
    :cond_8
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    invoke-static {v6, v13, v14, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/l;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 31
    :cond_9
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-static {v12, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->d(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    .line 32
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->s(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    .line 33
    :cond_a
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->preIds:Ljava/util/List;

    .line 35
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    invoke-static {v12, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->d(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 38
    :cond_c
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->exclusiveIds:Ljava/util/List;

    .line 39
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    invoke-static {v12, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->d(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :cond_e
    if-eqz v1, :cond_f

    goto/16 :goto_3

    .line 42
    :cond_f
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->g:Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$b;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {v7, v6, v0, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->c(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/util/SparseArray;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    .line 43
    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;

    iget-object v10, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object v4, v12

    move-object/from16 v12, p3

    move-object/from16 v13, v16

    move-object v14, v6

    move-object v15, v0

    invoke-virtual/range {v8 .. v15}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v0

    .line 44
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move-object v8, v6

    move-object/from16 v6, v17

    .line 45
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->s(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Ljava/util/Map;)V

    .line 46
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/e;

    invoke-direct {v0, v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_10
    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move-object v12, v4

    goto/16 :goto_3

    :cond_11
    :goto_4
    return-void
.end method

.method private c(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/util/SparseArray;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->r(Landroid/util/SparseArray;Ljava/util/List;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    .line 5
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopVariables:Ljava/util/List;

    invoke-direct {p0, p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->r(Landroid/util/SparseArray;Ljava/util/List;)V

    .line 6
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->r(Landroid/util/SparseArray;Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 9
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    if-eqz v1, :cond_2

    .line 10
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/i;

    invoke-virtual {v0, v1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/LineTipModel;->addPoints(Lcn/mucang/android/jiakaoyi/teachingk2/exe/i;Landroid/util/SparseArray;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private static d(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;TT;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;

    .line 3
    iput-object p1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;->tm:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->d:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic g(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->e:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method

.method private synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->e:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method

.method private synthetic m(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->e:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method

.method private synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->e:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method

.method private q(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    iget v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 5
    iput v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    .line 6
    iget v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_1

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_0

    .line 10
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/exe/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/d;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 13
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 14
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 17
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u5f00\u59cb\u5206\u6790\u5b50\u6b65\u9aa4:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " , step:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, -0x1

    goto :goto_2

    :cond_3
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 19
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v12, 0x0

    move-object v13, v12

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 21
    invoke-virtual {v14}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v16

    if-eqz v16, :cond_4

    move-object/from16 v13, v16

    .line 22
    :cond_4
    invoke-virtual {v14}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_6

    .line 23
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;

    .line 24
    iget-object v15, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v18

    const-wide/high16 v20, 0x4039000000000000L    # 25.0

    cmpg-double v15, v18, v20

    if-gez v15, :cond_6

    .line 25
    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;->tmList:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, -0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_5
    if-nez v15, :cond_8

    .line 26
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;

    new-instance v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v15, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v6, v15, v14, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$a;)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_6
    const/4 v3, 0x0

    const/4 v6, -0x1

    goto :goto_3

    .line 27
    :cond_9
    invoke-static {v11}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_19

    if-eqz v13, :cond_19

    iget-object v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x2

    if-ge v3, v6, :cond_a

    goto/16 :goto_d

    .line 28
    :cond_a
    iget-object v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x5

    if-le v3, v9, :cond_10

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v9, 0x3

    if-ne v4, v3, :cond_b

    if-eq v10, v6, :cond_c

    if-eq v10, v9, :cond_c

    const/4 v12, 0x4

    if-eq v10, v12, :cond_c

    :cond_b
    sget-object v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v4, v12, :cond_10

    if-eq v10, v6, :cond_c

    if-ne v10, v9, :cond_10

    :cond_c
    if-ne v4, v3, :cond_d

    if-eq v10, v9, :cond_e

    .line 29
    :cond_d
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v4, v3, :cond_f

    if-ne v10, v9, :cond_f

    :cond_e
    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    .line 30
    :goto_7
    iget-object v6, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {v6, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR;->d(Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/wheelr/RuntimeWheelAndR$WheelAndR;

    .line 31
    :cond_10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;

    const/4 v10, 0x0

    .line 33
    :goto_8
    iget-object v11, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_13

    .line 34
    iget-object v11, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v9, v11, v12, v1, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->z(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 35
    iget-object v11, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v9, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->l(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    const-wide/high16 v15, 0x4079000000000000L    # 400.0

    cmpg-double v18, v11, v15

    if-gez v18, :cond_12

    goto :goto_9

    :cond_12
    move v10, v14

    goto :goto_8

    :cond_13
    const/4 v10, -0x1

    :goto_9
    const/4 v11, -0x1

    if-ne v10, v11, :cond_15

    .line 36
    iget-object v10, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v10, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    iget-object v10, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v11, v16, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-virtual {v10, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v10

    cmpl-double v16, v14, v10

    if-lez v16, :cond_14

    .line 37
    iget-object v10, v13, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_14
    const/4 v10, 0x0

    goto :goto_a

    :cond_15
    const/4 v12, 0x0

    const/16 v17, 0x1

    .line 38
    :goto_a
    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor$DependencyInfo;->tmList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 39
    iput v10, v11, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    .line 40
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    const/4 v12, 0x0

    .line 41
    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/exe/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/exe/f;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 42
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 45
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v10

    if-nez v10, :cond_17

    goto :goto_c

    .line 46
    :cond_17
    iget-object v11, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v13, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v13, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->normalIndex:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 47
    :cond_18
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_19
    :goto_d
    const/4 v3, 0x0

    const/4 v6, -0x1

    goto/16 :goto_1

    .line 48
    :cond_1a
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 49
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->d:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private r(Landroid/util/SparseArray;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 3
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/a;

    if-eqz v1, :cond_2

    .line 4
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/a;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/a;->convertCoordinate(Landroid/util/SparseArray;)V

    .line 5
    :cond_2
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/b;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/b;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/h0/b;->wheelConvert()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private s(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "*>;>;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p6

    .line 1
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v9, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v9, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->errors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;

    .line 3
    invoke-static {v10, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->d(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 4
    :cond_2
    iget v1, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->checkType:I

    if-nez v1, :cond_5

    .line 5
    iget-object v1, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopVariables:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;

    iget-object v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopVariables:Ljava/util/List;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6
    :cond_3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;

    iget-object v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v1

    .line 7
    invoke-interface {v10, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 8
    iget-boolean v2, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->isRightCheck:Z

    if-nez v2, :cond_4

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/exe/b;

    invoke-direct {v1, p0, v9, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_4
    if-nez v1, :cond_c

    .line 10
    iget-boolean v1, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->isRightCheck:Z

    if-eqz v1, :cond_c

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/exe/g;

    invoke-direct {v1, p0, v9, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 12
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;

    iget-object v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopVariables:Ljava/util/List;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    invoke-interface {v10, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-boolean v1, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->isRightCheck:Z

    if-eqz v1, :cond_6

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/exe/c;

    invoke-direct {v1, p0, v9, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    .line 16
    :cond_7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;

    iget-object v3, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->h:Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 17
    iget-boolean v2, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->isRightCheck:Z

    if-nez v2, :cond_b

    .line 18
    iget-object v1, v13, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 19
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;

    if-eqz v3, :cond_9

    move-object/from16 v3, p5

    .line 20
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;

    if-eqz v2, :cond_8

    .line 21
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/s;->b()V

    goto :goto_1

    :cond_9
    move-object/from16 v3, p5

    goto :goto_1

    :cond_a
    move-object/from16 v3, p5

    .line 22
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/exe/h;

    invoke-direct {v1, p0, v9, v13}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v3, p5

    if-eqz v1, :cond_1

    .line 23
    invoke-interface {v10, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    :goto_2
    move-object/from16 v3, p5

    goto/16 :goto_0

    :cond_d
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "TT;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "TT;*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    return-void
.end method

.method public synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->e(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->i(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method

.method public synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->k(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method

.method public synthetic n(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->m(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method

.method public synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;->o(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;)V

    return-void
.end method
