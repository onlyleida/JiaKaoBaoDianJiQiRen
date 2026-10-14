.class public final Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;",
        "",
        "()V",
        "buildRandomLights",
        "",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "lights",
        "",
        "config",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
        "exam_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;->INSTANCE:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;->buildRandomLights$lambda-0(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)I

    move-result p0

    return p0
.end method

.method public static final buildRandomLights(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation

    const-string v0, "lights"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    instance-of v5, v4, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    if-eqz v5, :cond_0

    .line 7
    move-object v5, v4

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    if-nez v5, :cond_1

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_4

    .line 11
    invoke-static {v1}, Lkotlin/collections/s;->e(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v3, "num"

    .line 12
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_3

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    const-string p1, "shuffled.subList(0, num)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-lez p0, :cond_7

    .line 17
    sget-object p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/g;->a:Lcn/mucang/android/jiakaoyi/exam/k3/light/g;

    invoke-static {v2, p0}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 19
    iget v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    add-int/lit8 v3, v2, -0x1

    if-ltz v3, :cond_5

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 21
    iget v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    sub-int/2addr v2, p1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->copy()Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->copy()Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_8

    .line 24
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart:Z

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, p1, :cond_8

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isEnd:Z

    :cond_8
    return-object v0
.end method

.method private static final buildRandomLights$lambda-0(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->g(II)I

    move-result p0

    return p0
.end method
