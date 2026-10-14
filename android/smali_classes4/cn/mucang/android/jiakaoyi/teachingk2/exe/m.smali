.class Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">(TC;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "*>;>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/d0;->b(Ljava/lang/Class;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-interface {p5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    .line 5
    invoke-interface/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "*>;>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 3
    iget-boolean v3, v5, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, p0

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 4
    invoke-direct/range {v4 .. v11}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/m;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    return v0
.end method
