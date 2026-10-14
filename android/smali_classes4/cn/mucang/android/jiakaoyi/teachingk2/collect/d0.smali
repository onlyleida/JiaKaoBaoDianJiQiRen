.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/c$a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/c/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;
    .locals 2
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

    .line 1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;->deductConfig:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    .line 4
    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/a;->a(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;
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
    .locals 9

    .line 1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 2
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const/4 v0, 0x1

    if-ne v1, p3, :cond_0

    .line 3
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/b;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/b;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 4
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/b;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/b;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/DaoKuStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/DaoKuStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;)V

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 6
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 7
    :cond_0
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_1

    .line 8
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->i:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/k;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/k;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 9
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/l;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/m;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/zhijiaozhuanwan/ZhiJiaoStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/zhijiaozhuanwan/ZhiJiaoStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/l;)V

    .line 10
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 11
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 12
    :cond_1
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_2

    .line 13
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/b;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->e:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/a;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/a;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 14
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/a;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/b;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/a;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/b;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/cefangtingche/CeFangStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/cefangtingche/CeFangStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/b;)V

    .line 15
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 16
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 17
    :cond_2
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_3

    .line 18
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/h;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->g:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/g;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/g;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/h;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 19
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/g;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/h;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/h;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/h;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/squxian/QuXianStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/squxian/QuXianStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/h;)V

    .line 20
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 21
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 22
    :cond_3
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_4

    .line 23
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->h:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/h;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/h;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 24
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/h;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/i;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/shangpoqibu/ShangPoStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/shangpoqibu/ShangPoStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;)V

    .line 25
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 26
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 27
    :cond_4
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_5

    .line 28
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->n:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/d;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/d;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 29
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/d;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/d;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/shihualumian/HuaLuStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/shihualumian/HuaLuStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/e;)V

    .line 30
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 31
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 32
    :cond_5
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_6

    .line 33
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->o:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/i;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/i;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 34
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/i;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/j;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/suidao/SuiDaoStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/suidao/SuiDaoStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;)V

    .line 35
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 36
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 37
    :cond_6
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_7

    .line 38
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->j:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/f;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/f;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/g;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 39
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/f;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/g;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/g;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/g;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/quka/QuKaStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/quka/QuKaStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/g;)V

    .line 40
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 41
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 42
    :cond_7
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_8

    .line 43
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->l:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/j;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/j;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 44
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/k;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/l;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/zhailudiaotou/ZhaiLuStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/zhailudiaotou/ZhaiLuStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;)V

    .line 45
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 46
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 47
    :cond_8
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_9

    .line 48
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/f;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->m:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/e;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/e;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/f;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 49
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/e;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/f;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/e;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/f;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/jinjiqingkuang/JinJiStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/jinjiqingkuang/JinJiStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/f;)V

    .line 50
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 52
    :cond_9
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_a

    .line 53
    new-instance p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/d;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->q:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/c;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/f0/c;-><init>()V

    invoke-direct {p3, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/s0/d;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    .line 54
    new-instance v8, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/c;

    invoke-direct {v3, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/d;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/c;

    invoke-direct {v4, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/d;)V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/etc/ETCStep1;

    invoke-direct {v0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/etc/ETCStep1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/d;)V

    .line 55
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 56
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 57
    :cond_a
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_XiaCheJianCha:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, p3, :cond_b

    .line 58
    new-instance p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/j;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/j;-><init>()V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/x0/k;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/x0/k;-><init>()V

    const/4 v5, 0x0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/xiachejiancha/XiaCheStep1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/rule/xiachejiancha/XiaCheStep1;-><init>()V

    .line 59
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;)Ljava/util/List;

    move-result-object v6

    .line 60
    invoke-direct {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/d0;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;)Ljava/util/List;

    move-result-object v7

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;Ljava/util/List;Ljava/util/List;)V

    return-object p3

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method
