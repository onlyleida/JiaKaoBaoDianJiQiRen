.class public Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/f;-><init>()V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/d;-><init>()V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/e;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/c;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->b:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->c:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->d:Z

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->e:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    invoke-virtual/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result p1

    return p1
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 11
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

    move-object v0, p0

    .line 1
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->d:Z

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 4
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->d:Z

    move-object/from16 v1, p6

    .line 5
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 6
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getNormalVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 7
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->b:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->c:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    goto :goto_0

    :cond_3
    move-object/from16 v1, p6

    .line 8
    :cond_4
    :goto_0
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->c:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->b:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    if-ne v4, v5, :cond_5

    .line 9
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->e:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    .line 10
    :cond_5
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/u;->c:Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;

    if-eqz v4, :cond_6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/g0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method
