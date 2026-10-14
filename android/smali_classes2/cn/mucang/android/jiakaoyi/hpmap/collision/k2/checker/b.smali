.class public abstract Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
        "C:",
        "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/d;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field protected final d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:Z

.field protected j:Z

.field protected k:Ljava/lang/Boolean;

.field public l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public n:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

.field public o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public p:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field public q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "TT;",
            "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;TC;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;TC;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->i:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->k:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 11
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->a:Ljava/util/List;

    .line 12
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    .line 13
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;

    .line 14
    new-instance p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->E()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;-><init>(J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    .line 15
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j:Z

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g:Ljava/util/List;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 18
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g:Ljava/util/List;

    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    invoke-direct {v0, p2, p0, p4}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Z)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->l(Lcn/mucang/android/jiakaoyi/engine/model/Step;IZ)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected B(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    return-void
.end method

.method protected C(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    return-void
.end method

.method protected D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2, p3, p4, p5}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onSpeakEnd()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected E()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->k:Ljava/lang/Boolean;

    .line 3
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->a:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    if-nez v1, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 7
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;J)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 9
    invoke-virtual {v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    goto :goto_1

    .line 10
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-eqz p1, :cond_6

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->k:Ljava/lang/Boolean;

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->k:Ljava/lang/Boolean;

    .line 12
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    iput-boolean p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    :cond_6
    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 9

    .line 1
    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isNotBack()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v3, v5, v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    const/4 v8, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/c;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;DZ)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    .line 8
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method protected e(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1
.end method

.method protected f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public g(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(ILcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-gez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 5
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-int v2, v1

    .line 6
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-int p2, v3

    move v8, p2

    move v7, v2

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    :goto_0
    new-instance p2, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->q(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)I

    move-result v5

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j()I

    move-result v6

    move-object v3, p2

    move v4, p1

    invoke-direct/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;-><init>(IIIII)V

    return-object p2
.end method

.method public i()Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j()I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;-><init>(IIIII)V

    return-object v6
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public k()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Report:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected l()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    return-object v0
.end method

.method n(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "TT;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 5
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-eqz v0, :cond_1

    .line 6
    instance-of v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;

    if-eqz v0, :cond_1

    .line 7
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->h:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0, p1, p3, p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/c;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-eqz v0, :cond_4

    .line 11
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 13
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->n(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    :cond_4
    return-void
.end method

.method protected o(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "TT;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez p1, :cond_0

    .line 3
    invoke-interface {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->g()Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->p:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    return v0
.end method

.method public q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 2
    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->e:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Report:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Start:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic u()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->t()V

    return-void
.end method

.method protected abstract v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "TT;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract w()V
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    return-void
.end method

.method protected final y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    array-length v1, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 6
    const-class v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->s()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    invoke-direct {v2, v3, v4, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;-><init>(ILcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->F()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    if-nez p1, :cond_3

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->F()V

    :cond_3
    :goto_0
    return-void
.end method

.method public z(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "TT;",
            "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g:Ljava/util/List;

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g:Ljava/util/List;

    return-void
.end method
