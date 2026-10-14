.class public Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/c$a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

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
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/mapcollect/c/j;",
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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    .line 7
    iput p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;",
            ">;"
        }
    .end annotation

    const-string v0, "TAG"

    .line 1
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v3, "K2_"

    const-string v4, ""

    .line 4
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 7
    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    if-nez v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cn.mucang.android.jiakaoyi.examk2.rule."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_Event"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v6, 0x0

    .line 11
    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x2

    if-ge v9, v7, :cond_2

    aget-object v11, v4, v9

    .line 12
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 13
    array-length v12, v12

    if-ne v12, v10, :cond_1

    move-object v6, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    new-array v4, v10, [Ljava/lang/Object;

    .line 14
    iget-object v7, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    aput-object v7, v4, v8

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;

    .line 15
    invoke-virtual {v4, v8}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setPlayScore(Z)V

    .line 16
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:deduct = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , Constructor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u56fa\u5b9a\u4e8b\u4ef6\u6263\u5206\u9879\u6784\u9020\u5931\u8d25:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method

.method private b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
            ">(",
            "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;
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
    .locals 11

    .line 1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->g()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_0

    .line 4
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;)V

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 7
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/b;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/b;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/b;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/b;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;)V

    .line 8
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 9
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    :cond_0
    return-object v0

    .line 10
    :cond_1
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_2

    .line 11
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;)V

    .line 13
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 14
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/b;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/b;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/b;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/b;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;)V

    .line 15
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 16
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 17
    :cond_2
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_3

    .line 18
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    .line 19
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->i:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/j;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;)V

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->i:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 21
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/o;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/o;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/j;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/n;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/n;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/j;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/j;Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;)V

    .line 22
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 23
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 24
    :cond_3
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_4

    .line 25
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    .line 26
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->e:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;)V

    .line 27
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/b;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->e:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 28
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/a;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/b;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/a;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/b;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/b;Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;)V

    .line 29
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 30
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 31
    :cond_4
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_5

    .line 32
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;

    .line 33
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->g:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/g;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;)V

    .line 34
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/h;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->g:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/h;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 35
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/j;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/j;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/g;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/i;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/i;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/g;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/g;Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;)V

    .line 36
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 37
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 38
    :cond_5
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_6

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result p3

    if-nez p3, :cond_6

    .line 39
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    .line 40
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->h:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;)V

    .line 41
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->h:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 42
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/k;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/k;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/j;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/j;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;)V

    .line 43
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 44
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 45
    :cond_6
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_7

    .line 46
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;

    .line 47
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/f;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->j:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/f;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;)V

    .line 48
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/g;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->j:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/g;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 49
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/i;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/i;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/f;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/h;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/h;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/f;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/quka/K2_QuKa_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/quka/K2_QuKa_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/f;Lcn/mucang/android/jiakaoyi/examk2/config/K2QuKaConfig;)V

    .line 50
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 52
    :cond_7
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_XiaCheJianCha:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_8

    .line 53
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2XiaCheJianChaConfig;

    .line 54
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/m;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/examk2/b/m;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2XiaCheJianChaConfig;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/l;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/examk2/e/l;-><init>()V

    const/4 v5, 0x0

    new-instance p3, Lcn/mucang/android/jiakaoyi/examk2/rule/xiachejiancha/K2_XiaCheJianCha_Step1;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/xiachejiancha/K2_XiaCheJianCha_Step1;-><init>()V

    .line 55
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 56
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 57
    :cond_8
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_9

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    .line 58
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;

    .line 59
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->k:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;)V

    .line 60
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/h;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/h;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/g;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/g;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/qidianquyu/K2_QiDianQuYu_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/qidianquyu/K2_QiDianQuYu_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/QiDianChecker;Lcn/mucang/android/jiakaoyi/examk2/config/K2QiDianQuYuConfig;)V

    .line 61
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 62
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 63
    :cond_9
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_a

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->l:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a

    .line 64
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;

    .line 65
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/i;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->l:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/i;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;)V

    .line 66
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->l:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 67
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/n;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/n;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/i;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/m;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/m;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/i;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/zhailudiaotou/K2_ZhaiLuDiaoTou_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/i;Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhaiLuDiaoTouConfig;)V

    .line 68
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 69
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 70
    :cond_a
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_b

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->m:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    .line 71
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;

    .line 72
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->m:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/e;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;)V

    .line 73
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/f;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->m:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/f;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 74
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/f;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/f;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/e;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/e;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/e;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/e;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/jinjiqingkuang/K2_JinJiQingKuang_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/e;Lcn/mucang/android/jiakaoyi/examk2/config/K2JinJiQingKuangConfig;)V

    .line 75
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 76
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 77
    :cond_b
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_c

    .line 78
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;

    .line 79
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/d;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->n:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/d;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;)V

    .line 80
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->n:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 81
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/e;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/e;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/d;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/d;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/d;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/d;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/shihualumian/K2_ShiHuaLuMian_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/d;Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;)V

    .line 82
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 83
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 84
    :cond_c
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_d

    .line 85
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    .line 86
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->o:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/h;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;)V

    .line 87
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->o:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 88
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/l;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/l;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/h;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/k;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/k;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/h;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/h;Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;)V

    .line 89
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 90
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 91
    :cond_d
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_e

    .line 92
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->stepConfig:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;

    .line 93
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/collision/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->q:Ljava/util/List;

    invoke-direct {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/c;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;)V

    .line 94
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/d;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->q:Ljava/util/List;

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Set;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c:Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachingProcessor;-><init>(Ljava/util/List;Ljava/util/Set;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/teachingk2/exe/k;I)V

    invoke-direct {v2, v3, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/d;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 95
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/b/c;

    invoke-direct {v3, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/b/c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/c;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/examk2/e/c;

    invoke-direct {v4, p3, v0}, Lcn/mucang/android/jiakaoyi/examk2/e/c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/c;)V

    const/4 v5, 0x0

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/rule/etc/K2_ETC_Step1;

    invoke-direct {v2, v0, p3}, Lcn/mucang/android/jiakaoyi/examk2/rule/etc/K2_ETC_Step1;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/c;Lcn/mucang/android/jiakaoyi/examk2/config/K2ETCConfig;)V

    .line 96
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 97
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/t0/d;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    :cond_e
    return-object v0
.end method
