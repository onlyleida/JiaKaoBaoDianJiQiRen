.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003\u00a2\u0006\u0002\u0010\u0007J\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachChecker;",
        "",
        "teachData",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "(Ljava/util/Map;)V",
        "modelSet",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "getResult",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;",
        "onTeachTrigger",
        "",
        "tm",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
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

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "teachData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/g;->a:Ljava/util/Map;

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/g;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/g;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 7
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;-><init>()V

    .line 9
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->setTeachModelId(Ljava/lang/String;)V

    .line 10
    iget v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->setStep(I)V

    .line 11
    iget v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->setSubStep(I)V

    .line 12
    iget v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->setStepName(Ljava/lang/String;)V

    .line 13
    iget v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v5, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    iget v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-static {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/e0;->g(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->setSubStepName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getPlayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->setPlayText(Ljava/lang/String;)V

    .line 15
    iget v4, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->grade:I

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->setGrade(I)V

    .line 16
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/g;->b:Ljava/util/HashSet;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachResultModel;->setHasTrigger(Z)V

    .line 17
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final b(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 1

    const-string v0, "tm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/g;->b:Ljava/util/HashSet;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
