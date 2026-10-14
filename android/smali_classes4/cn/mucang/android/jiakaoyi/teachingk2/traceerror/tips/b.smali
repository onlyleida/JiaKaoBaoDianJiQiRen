.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
        ">;"
    }
.end annotation


# static fields
.field public static h:D


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->b:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->g:Z

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 2
    iget-byte v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    div-int/2addr v0, v3

    if-le v2, v0, :cond_2

    .line 4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 5
    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->honk:B

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 8
    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    if-ne v2, v3, :cond_7

    iget v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v2, v5, :cond_5

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v2, v5, :cond_7

    .line 9
    :cond_5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 10
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 12
    iget-short v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    if-eqz v2, :cond_6

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_4

    :cond_8
    if-eqz v1, :cond_3

    .line 13
    :cond_9
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->g:Z

    return-void
.end method

.method private c(Ljava/util/Map;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;>;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 3
    iget v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    iget v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v4, v5, :cond_2

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v4, v5, :cond_1

    .line 4
    :cond_2
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 7
    iget-short v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    cmpl-double v7, v5, v0

    if-lez v7, :cond_3

    .line 8
    iget-short v0, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x40a7700000000000L    # 3000.0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_3

    :cond_4
    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public d(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p5

    move-object/from16 v7, p6

    .line 1
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    const/4 v13, 0x0

    if-nez v2, :cond_6

    .line 2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v13

    .line 3
    :cond_0
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->d:Ljava/util/Map;

    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->c(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v13

    .line 4
    :cond_1
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->d:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Ljava/util/Map;)V

    .line 5
    sget-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    .line 6
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->d:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c(Ljava/util/Map;)D

    move-result-wide v2

    const-wide v4, 0x40a7700000000000L    # 3000.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 7
    sput-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 8
    sput-wide v2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->h:D

    .line 9
    :cond_3
    :goto_0
    invoke-interface/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v3

    .line 10
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->l(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/utils/b;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    .line 11
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->d:Ljava/util/Map;

    iget v4, v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->h(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/utils/b;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    iget v2, v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v3, v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-static {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->n(Ljava/util/List;II)V

    .line 14
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    iget v2, v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v3, v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    iget v4, v12, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    invoke-static {v0, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/a;->g(Ljava/util/List;III)Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTip;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->b:Ljava/util/List;

    .line 17
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 18
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->b:Ljava/util/List;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->copy()Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_4
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 20
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->extra:Ljava/lang/Object;

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_5

    .line 21
    check-cast v3, Ljava/util/List;

    .line 22
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    .line 23
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;->a:[I

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 24
    :pswitch_0
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/c;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :pswitch_1
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/a;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/a;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :pswitch_2
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/k/b;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :pswitch_3
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/e;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :pswitch_4
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/f;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/f;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :pswitch_5
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/a;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/a;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :pswitch_6
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/j;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 31
    :pswitch_7
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/b;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 32
    :pswitch_8
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/c;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/c;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 33
    :pswitch_9
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/i;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 34
    :pswitch_a
    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;-><init>()V

    invoke-direct {v7, v2, v4, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 35
    :cond_6
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->b:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    .line 36
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v14

    if-nez v14, :cond_8

    return v13

    .line 37
    :cond_8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v2, v14, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v14, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    const/4 v2, 0x0

    .line 38
    :goto_3
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 39
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 40
    :cond_9
    iget-object v2, v14, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 41
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_b

    .line 42
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 43
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_a
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;

    .line 44
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    if-eqz v2, :cond_a

    .line 45
    :try_start_0
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->b:Ljava/util/List;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    iget-object v11, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->a:Ljava/util/List;

    move-object/from16 v3, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-interface/range {v2 .. v11}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8def\u5f84\u63d0\u793a\u5d29\u6e83:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_4

    .line 47
    :cond_b
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_c

    iget-object v2, v14, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_d

    .line 48
    :cond_c
    iget-object v0, v14, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_d
    :goto_5
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
