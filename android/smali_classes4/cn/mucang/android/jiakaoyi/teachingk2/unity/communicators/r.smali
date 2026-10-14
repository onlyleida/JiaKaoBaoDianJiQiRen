.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001e\u0010\u000c\u001a\u00020\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0007H\u0007J\u0008\u0010\u0012\u001a\u00020\u0007H\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/TeachPositionManager;",
        "",
        "()V",
        "posList",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "addPoint",
        "",
        "model",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "it",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "calculateStep",
        "list",
        "",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "init",
        "sendDrawRequest",
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


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 7

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 3
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    if-eqz v1, :cond_1

    .line 4
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;

    const-string v2, "coordinate.toWorld(Pos(variable.x, variable.y))"

    if-eqz v1, :cond_3

    instance-of v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;

    iget-boolean p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->centerCoordinate:Z

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p1

    goto :goto_0

    :cond_2
    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p1

    .line 6
    :goto_0
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->x:D

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;->y:D

    invoke-direct {v1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_3
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;

    if-eqz v1, :cond_1

    .line 8
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p1

    .line 9
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->b:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->x:D

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;->y:D

    invoke-direct {v1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private final b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 4
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->k:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_2
    const-string v6, "model"

    if-eqz v3, :cond_7

    .line 5
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "it.key"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v3, v7, v5, v8, v9}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_5

    :goto_3
    if-eqz v4, :cond_2

    .line 6
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    goto :goto_1

    .line 7
    :cond_7
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public static final c()V
    .locals 2

    const-string v0, "keyShowTeachPosition"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/j;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final d()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->p:Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    const-string v3, "instance.mapData.daoku"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 3
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->e:Ljava/util/List;

    const-string v3, "instance.mapData.cefang"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->g:Ljava/util/List;

    const-string v2, "instance.mapData.quxian"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->b(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->d()V

    return-void
.end method

.method public static final f()V
    .locals 17

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/r;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v4, 0x0

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/4 v8, 0x5

    int-to-double v8, v8

    sub-double/2addr v6, v8

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v10, v8

    invoke-direct {v5, v6, v7, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v6, v8

    iget-wide v10, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v10, v8

    invoke-direct {v5, v6, v7, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    aput-object v5, v3, v4

    invoke-static {v3}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    const/16 v9, 0xa

    const/16 v10, 0xc8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xf03

    const/16 v16, 0x0

    const-string v7, "#FFFF00"

    .line 5
    invoke-static/range {v2 .. v16}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/b1/b$a;IIILjava/util/List;Ljava/lang/String;FIIZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)I

    goto :goto_0

    :cond_0
    return-void
.end method
