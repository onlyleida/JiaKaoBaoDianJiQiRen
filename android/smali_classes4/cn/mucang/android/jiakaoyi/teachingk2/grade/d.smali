.class public final Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u000cH\u0007J\u0016\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0013H\u0007J\u0008\u0010\u0015\u001a\u00020\u000cH\u0007J\u0008\u0010\u0016\u001a\u00020\u0017H\u0007J\u0008\u0010\u0018\u001a\u00020\u0017H\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u0010\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/grade/TeachConfig;",
        "",
        "()V",
        "enableTrace",
        "",
        "getEnableTrace$annotations",
        "getEnableTrace",
        "()Z",
        "setEnableTrace",
        "(Z)V",
        "grades",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;",
        "initGrades",
        "is2_0",
        "is2_0$annotations",
        "set2_0",
        "getEnableGradeModel",
        "getEnableGrades",
        "",
        "",
        "getLowGradeModel",
        "loadGrades",
        "",
        "refreshLevel",
        "TeachingK2_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;

.field private static volatile b:Z

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    .line 1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;-><init>()V

    .line 2
    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_newbie_detail:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setError(Z)V

    .line 4
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    aput-object v1, v0, v2

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;-><init>()V

    .line 5
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_basic_teaching:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setStopVoice(Z)V

    .line 7
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setLine(Z)V

    const/16 v3, 0x14

    .line 8
    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setLevel(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;-><init>()V

    .line 10
    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_self_train:I

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setStopVoice(Z)V

    .line 12
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setPicture(Z)V

    .line 13
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setLine(Z)V

    .line 14
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setGuide(Z)V

    .line 15
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setPositionGuide(Z)V

    const/16 v2, 0x1e

    .line 16
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->setLevel(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->c:Ljava/util/List;

    .line 18
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    .line 3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getLevel()I

    move-result v3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v4

    if-ne v3, v4, :cond_0

    return-object v2

    .line 4
    :cond_1
    invoke-static {v0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    return-object v0
.end method

.method public static final b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    .line 4
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    .line 7
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static final c()Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    .line 3
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getLevel()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    return-object v2

    .line 4
    :cond_1
    invoke-static {v0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    return-object v0
.end method

.method public static final d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->b:Z

    return v0
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->h()V

    return-void
.end method

.method public static synthetic f(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->i(Ljava/util/List;)V

    return-void
.end method

.method public static final g()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->c:Ljava/util/List;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d:Ljava/util/List;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/grade/a;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final h()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/c;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/c;->m()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d$a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/s;->G0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "\u62c9\u5230\u6559\u5b66\u914d\u7f6e\uff1a"

    .line 4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/grade/b;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/b;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static final i(Ljava/util/List;)V
    .locals 1

    const-string v0, "$models"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;

    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d:Ljava/util/List;

    .line 2
    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->j()V

    return-void
.end method

.method private final j()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->d:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getLevel()I

    move-result v3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 6
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getLevel()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->d(I)V

    :cond_4
    return-void
.end method

.method public static final k(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->b:Z

    return-void
.end method

.method public static final l(Z)V
    .locals 0

    return-void
.end method
