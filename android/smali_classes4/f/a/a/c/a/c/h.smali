.class public Lf/a/a/c/a/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/c$a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

.field private final b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/mapcollect/c/h;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    .line 3
    iput-object p2, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 4
    iput-object p3, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 5
    iput-object p4, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    .line 7
    iput p6, p0, Lf/a/a/c/a/c/h;->f:I

    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public createStep(Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 8

    .line 1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 2
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_0

    .line 3
    new-instance p2, Lf/a/a/c/a/b/a;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->e:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/a;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 4
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/a;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/a;-><init>(Lf/a/a/c/a/b/a;)V

    new-instance v4, Lf/a/a/c/a/f/a;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/a;-><init>(Lf/a/a/c/a/b/a;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/a;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/a;-><init>(Lf/a/a/c/a/b/a;)V

    .line 5
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 6
    :cond_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ChunHuaLu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_1

    .line 7
    new-instance p2, Lf/a/a/c/a/b/b;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->u:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 8
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/b;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/b;-><init>(Lf/a/a/c/a/b/b;)V

    new-instance v4, Lf/a/a/c/a/f/b;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/b;-><init>(Lf/a/a/c/a/b/b;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/b;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/b;-><init>(Lf/a/a/c/a/b/b;)V

    .line 9
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 10
    :cond_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_DanBian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_2

    .line 11
    new-instance p2, Lf/a/a/c/a/b/c;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->n:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/c;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 12
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/c;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/c;-><init>(Lf/a/a/c/a/b/c;)V

    new-instance v4, Lf/a/a/c/a/f/c;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/c;-><init>(Lf/a/a/c/a/b/c;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/c;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/c;-><init>(Lf/a/a/c/a/b/c;)V

    .line 13
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 14
    :cond_2
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_GaoSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_3

    .line 15
    new-instance p2, Lf/a/a/c/a/b/d;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->t:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/d;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 16
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/d;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/d;-><init>(Lf/a/a/c/a/b/d;)V

    new-instance v4, Lf/a/a/c/a/f/d;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/d;-><init>(Lf/a/a/c/a/b/d;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/d;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/d;-><init>(Lf/a/a/c/a/b/d;)V

    .line 17
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 18
    :cond_3
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_4

    .line 19
    new-instance p2, Lf/a/a/c/a/b/e;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->l:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/e;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 20
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/e;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/e;-><init>(Lf/a/a/c/a/b/e;)V

    new-instance v4, Lf/a/a/c/a/f/e;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/e;-><init>(Lf/a/a/c/a/b/e;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/e;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/e;-><init>(Lf/a/a/c/a/b/e;)V

    .line 21
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 22
    :cond_4
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_5

    .line 23
    new-instance p2, Lf/a/a/c/a/b/f;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->k:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/f;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 24
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/f;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/f;-><init>(Lf/a/a/c/a/b/f;)V

    new-instance v4, Lf/a/a/c/a/f/f;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/f;-><init>(Lf/a/a/c/a/b/f;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/f;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/f;-><init>(Lf/a/a/c/a/b/f;)V

    .line 25
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 26
    :cond_5
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_QiFu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_6

    .line 27
    new-instance p2, Lf/a/a/c/a/b/g;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->r:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/g;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 28
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/g;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/g;-><init>(Lf/a/a/c/a/b/g;)V

    new-instance v4, Lf/a/a/c/a/f/g;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/g;-><init>(Lf/a/a/c/a/b/g;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/g;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/g;-><init>(Lf/a/a/c/a/b/g;)V

    .line 29
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 30
    :cond_6
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_7

    .line 31
    new-instance p2, Lf/a/a/c/a/b/h;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->f:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/h;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 32
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/h;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/h;-><init>(Lf/a/a/c/a/b/h;)V

    new-instance v4, Lf/a/a/c/a/f/h;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/h;-><init>(Lf/a/a/c/a/b/h;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/h;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/h;-><init>(Lf/a/a/c/a/b/h;)V

    .line 33
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 34
    :cond_7
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_8

    .line 35
    new-instance p2, Lf/a/a/c/a/b/j;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->g:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/j;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 36
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/j;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/j;-><init>(Lf/a/a/c/a/b/j;)V

    new-instance v4, Lf/a/a/c/a/f/j;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/j;-><init>(Lf/a/a/c/a/b/j;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/j;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/j;-><init>(Lf/a/a/c/a/b/j;)V

    .line 37
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 38
    :cond_8
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShanLu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_9

    .line 39
    new-instance p2, Lf/a/a/c/a/b/i;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->s:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/i;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 40
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/i;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/i;-><init>(Lf/a/a/c/a/b/i;)V

    new-instance v4, Lf/a/a/c/a/f/i;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/i;-><init>(Lf/a/a/c/a/b/i;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/i;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/i;-><init>(Lf/a/a/c/a/b/i;)V

    .line 41
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 42
    :cond_9
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_a

    .line 43
    new-instance p2, Lf/a/a/c/a/b/k;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->m:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/k;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 44
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/k;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/k;-><init>(Lf/a/a/c/a/b/k;)V

    new-instance v4, Lf/a/a/c/a/f/k;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/k;-><init>(Lf/a/a/c/a/b/k;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/k;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/k;-><init>(Lf/a/a/c/a/b/k;)V

    .line 45
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 46
    :cond_a
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_XianKuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_b

    .line 47
    new-instance p2, Lf/a/a/c/a/b/l;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->o:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/l;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 48
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/l;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/l;-><init>(Lf/a/a/c/a/b/l;)V

    new-instance v4, Lf/a/a/c/a/f/l;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/l;-><init>(Lf/a/a/c/a/b/l;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/l;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/l;-><init>(Lf/a/a/c/a/b/l;)V

    .line 49
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 50
    :cond_b
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_c

    .line 51
    new-instance p2, Lf/a/a/c/a/b/m;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->j:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/m;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 52
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/m;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/m;-><init>(Lf/a/a/c/a/b/m;)V

    new-instance v4, Lf/a/a/c/a/f/m;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/m;-><init>(Lf/a/a/c/a/b/m;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/m;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/m;-><init>(Lf/a/a/c/a/b/m;)V

    .line 53
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 54
    :cond_c
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhangAi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_d

    .line 55
    new-instance p2, Lf/a/a/c/a/b/n;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->p:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/n;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 56
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/n;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/n;-><init>(Lf/a/a/c/a/b/n;)V

    new-instance v4, Lf/a/a/c/a/f/n;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/n;-><init>(Lf/a/a/c/a/b/n;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/n;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/n;-><init>(Lf/a/a/c/a/b/n;)V

    .line 57
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 58
    :cond_d
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_e

    .line 59
    new-instance p2, Lf/a/a/c/a/b/o;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->h:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/o;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 60
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/o;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/o;-><init>(Lf/a/a/c/a/b/o;)V

    new-instance v4, Lf/a/a/c/a/f/o;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/o;-><init>(Lf/a/a/c/a/b/o;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/o;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/o;-><init>(Lf/a/a/c/a/b/o;)V

    .line 61
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    .line 62
    :cond_e
    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p2, :cond_f

    .line 63
    new-instance p2, Lf/a/a/c/a/b/p;

    iget-object p3, p0, Lf/a/a/c/a/c/h;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/h;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/h;->q:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, p0, Lf/a/a/c/a/c/h;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lf/a/a/c/a/c/h;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v6, p0, Lf/a/a/c/a/c/h;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v7, p0, Lf/a/a/c/a/c/h;->f:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {p2, p3, v0}, Lf/a/a/c/a/b/p;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    .line 64
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lf/a/a/c/a/e/p;

    invoke-direct {v3, p2}, Lf/a/a/c/a/e/p;-><init>(Lf/a/a/c/a/b/p;)V

    new-instance v4, Lf/a/a/c/a/f/p;

    invoke-direct {v4, p2}, Lf/a/a/c/a/f/p;-><init>(Lf/a/a/c/a/b/p;)V

    const/4 v5, 0x0

    new-instance v0, Lf/a/a/c/a/d/p;

    invoke-direct {v0, p2}, Lf/a/a/c/a/d/p;-><init>(Lf/a/a/c/a/b/p;)V

    .line 65
    invoke-direct {p0, v0}, Lf/a/a/c/a/c/h;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method
