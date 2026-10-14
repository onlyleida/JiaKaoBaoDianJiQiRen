.class public Lcn/mucang/android/jiakaoyi/examk2/collision/b;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public F:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public G:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public H:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public J:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field private K:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private L:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field private M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private O:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field private P:Z

.field private Q:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field public R:Z

.field private S:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Ljava/lang/Boolean;

.field public a0:Z

.field private b0:J

.field private c0:Z

.field public d0:Z

.field private e0:Z

.field private f0:Z

.field private g0:Z

.field private h0:Z

.field private i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;",
            ">;"
        }
    .end annotation
.end field

.field private m0:Z

.field private n0:Z

.field public o0:J

.field private final p0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public z:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->J:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->P:Z

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Q:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->R:Z

    .line 6
    new-instance p2, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->S:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->X:Z

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Y:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Z:Ljava/lang/Boolean;

    .line 10
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->d0:Z

    .line 11
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->e0:Z

    .line 12
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->f0:Z

    .line 13
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->g0:Z

    .line 14
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->h0:Z

    .line 15
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->i0:Z

    .line 16
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->j0:Z

    .line 17
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->k0:Z

    .line 18
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->l0:Ljava/util/Set;

    .line 19
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->m0:Z

    .line 20
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->n0:Z

    const-wide/16 p1, 0x0

    .line 21
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->o0:J

    .line 22
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/utils/c;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/utils/c;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->p0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    return-void
.end method

.method private J(Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->m0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-eqz v1, :cond_2

    .line 3
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->b0:J

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->a0:Z

    goto :goto_1

    .line 5
    :cond_2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->a0:Z

    .line 6
    :goto_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->m0:Z

    return-void
.end method

.method private L()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->c0:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-object v3, v0

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->C(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private M(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->G:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->H:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    return-void
.end method

.method private N(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->J:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->J:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_1

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_1
    return-void
.end method


# virtual methods
.method public G(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    return p1
.end method

.method protected H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, p2, :cond_3

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 6
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    goto :goto_1

    .line 7
    :cond_2
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->u:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p2, p3, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->c0:Z

    return v1
.end method

.method protected I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 3
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1
.end method

.method protected K(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v1, v2, :cond_0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 3
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->K:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4, v5, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->L:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v3, v2, v5, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->K:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->K:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->K:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->O:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 10
    :cond_0
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->n0:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_3

    .line 11
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_2

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v2, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 13
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->n0:Z

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->o0:J

    .line 15
    const-class v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 16
    :cond_3
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->L:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->U:Z

    .line 17
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->O:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->V:Z

    .line 18
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->W:Z

    .line 19
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->c(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->u:Z

    .line 23
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->C:Z

    .line 24
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->s:Z

    .line 25
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->t:Z

    .line 26
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->z:Z

    .line 27
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->B:Z

    .line 28
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->A:Z

    .line 29
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->D:Z

    .line 30
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->v:Z

    .line 31
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v1

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 32
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v1

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 33
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v1

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->E:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 34
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v1

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->F:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 35
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v1

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 36
    invoke-direct {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)V

    .line 37
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->f0:Z

    if-nez v1, :cond_6

    .line 38
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->f0:Z

    .line 39
    :cond_6
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->e0:Z

    if-nez v1, :cond_7

    .line 40
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->e0:Z

    .line 41
    :cond_7
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->f0:Z

    const/4 v11, 0x2

    if-eqz v1, :cond_13

    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->e0:Z

    if-eqz v1, :cond_13

    .line 42
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_c

    .line 43
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->g0:Z

    if-nez v1, :cond_8

    .line 44
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->g0:Z

    .line 45
    :cond_8
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->h0:Z

    if-nez v1, :cond_9

    .line 46
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->h0:Z

    .line 47
    :cond_9
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->g0:Z

    if-eqz v1, :cond_b

    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->h0:Z

    if-eqz v1, :cond_b

    :cond_a
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 48
    :cond_c
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_e

    .line 49
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->i0:Z

    if-nez v1, :cond_d

    .line 50
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->i0:Z

    .line 51
    :cond_d
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v1

    goto :goto_5

    .line 52
    :cond_e
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v11, :cond_10

    .line 53
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_f

    .line 54
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->d0:Z

    goto :goto_5

    .line 55
    :cond_f
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v2, v3, :cond_b

    .line 56
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 57
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 58
    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v12, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v12, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    int-to-double v12, v1

    cmpl-double v1, v2, v12

    if-gez v1, :cond_a

    cmpl-double v1, v4, v12

    if-ltz v1, :cond_b

    goto :goto_4

    .line 59
    :cond_10
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_13

    .line 60
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 61
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v10, :cond_12

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    goto :goto_6

    .line 62
    :cond_11
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    goto :goto_7

    .line 63
    :cond_12
    :goto_6
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->i0:Z

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    .line 64
    :cond_13
    :goto_7
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->X:Z

    if-nez v1, :cond_14

    .line 65
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->T:Z

    goto :goto_9

    .line 66
    :cond_14
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->s:Z

    if-nez v1, :cond_16

    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->t:Z

    if-nez v1, :cond_16

    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->C:Z

    if-eqz v1, :cond_15

    goto :goto_8

    .line 67
    :cond_15
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->T:Z

    goto :goto_9

    .line 68
    :cond_16
    :goto_8
    iput-boolean v9, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->T:Z

    .line 69
    :goto_9
    invoke-direct {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->N(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)V

    .line 70
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->c0:Z

    if-nez v1, :cond_18

    .line 71
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_17

    .line 72
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->L()V

    goto :goto_a

    .line 73
    :cond_17
    invoke-virtual/range {p0 .. p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 74
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->L()V

    .line 75
    :cond_18
    :goto_a
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->n0:Z

    if-nez v1, :cond_19

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v2, :cond_19

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 76
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->n0:Z

    .line 77
    :cond_19
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v1, v2, :cond_27

    .line 78
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v2, :cond_26

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->p0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 79
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    .line 80
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v3, v5, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    .line 81
    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 82
    iget-object v5, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v13, v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v13, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v12

    .line 83
    iget-object v5, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406140:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 84
    iget-object v5, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v14, v5

    cmpl-double v5, v3, v14

    if-ltz v5, :cond_1a

    const/4 v3, 0x1

    goto :goto_b

    :cond_1a
    const/4 v3, 0x0

    .line 85
    :goto_b
    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v14, v12, v4

    if-ltz v14, :cond_1b

    const/4 v4, 0x1

    goto :goto_c

    :cond_1b
    const/4 v4, 0x0

    :goto_c
    if-eqz v3, :cond_1e

    if-eqz v4, :cond_1e

    if-eqz v1, :cond_1c

    if-eqz v2, :cond_1c

    .line 86
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->k0:Z

    goto/16 :goto_10

    .line 87
    :cond_1c
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 88
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Y:Z

    goto/16 :goto_10

    .line 89
    :cond_1d
    iput-boolean v9, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->k0:Z

    goto/16 :goto_10

    .line 90
    :cond_1e
    iput-boolean v9, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->k0:Z

    goto/16 :goto_10

    .line 91
    :cond_1f
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 92
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    .line 93
    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 94
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_20

    const/4 v1, 0x1

    goto :goto_d

    :cond_20
    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->k0:Z

    goto :goto_10

    .line 95
    :cond_21
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_22

    const/4 v1, 0x1

    goto :goto_e

    :cond_22
    const/4 v1, 0x0

    .line 96
    :goto_e
    iget-boolean v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->D:Z

    if-eqz v2, :cond_23

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_f

    :cond_23
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->k0:Z

    .line 97
    :goto_10
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    .line 98
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v1, :cond_24

    if-eqz v2, :cond_24

    .line 99
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Y:Z

    goto :goto_11

    .line 100
    :cond_24
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 101
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Y:Z

    .line 102
    :cond_25
    :goto_11
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->p0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 103
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    goto :goto_12

    .line 104
    :cond_26
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 105
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 106
    :cond_27
    :goto_12
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v1, v2, :cond_32

    .line 107
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->d0:Z

    if-nez v1, :cond_29

    .line 108
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v1

    .line 109
    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v1, v2, :cond_28

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne v1, v2, :cond_29

    .line 110
    :cond_28
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->d0:Z

    .line 111
    :cond_29
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Z:Ljava/lang/Boolean;

    if-nez v1, :cond_2c

    .line 112
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 113
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    .line 114
    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v2, v7, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    .line 115
    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-static {v7, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-nez v3, :cond_2a

    if-nez v1, :cond_2a

    if-nez v2, :cond_2a

    .line 116
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Z:Ljava/lang/Boolean;

    goto :goto_13

    .line 117
    :cond_2a
    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Z:Ljava/lang/Boolean;

    goto :goto_13

    .line 118
    :cond_2b
    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Z:Ljava/lang/Boolean;

    .line 119
    :cond_2c
    :goto_13
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 120
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->l0:Ljava/util/Set;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2d
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 122
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->l0:Ljava/util/Set;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2e
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 124
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->l0:Ljava/util/Set;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_2f
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->M:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 126
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->l0:Ljava/util/Set;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_30
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v0, v1, :cond_31

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->l0:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, v11, :cond_31

    .line 128
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    goto :goto_14

    .line 129
    :cond_31
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 130
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 131
    :cond_32
    :goto_14
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_3b

    .line 132
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_33

    .line 133
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->R:Z

    .line 134
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->P:Z

    if-nez v0, :cond_38

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 135
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->P:Z

    .line 136
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 137
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    goto/16 :goto_15

    .line 139
    :cond_33
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->S:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 140
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->R:Z

    .line 141
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->S:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 142
    :cond_34
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Q:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 143
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->P:Z

    if-nez v0, :cond_35

    .line 144
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 145
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 147
    :cond_35
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Q:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 148
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->P:Z

    .line 149
    :cond_36
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v0, :cond_37

    .line 150
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->S:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 151
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 152
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Q:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    goto :goto_15

    .line 153
    :cond_37
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->S:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 154
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->Q:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 155
    :cond_38
    :goto_15
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v0, :cond_39

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v0, :cond_39

    .line 156
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->j0:Z

    .line 157
    :cond_39
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-nez v0, :cond_3a

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->p0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 158
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 159
    iput-boolean v9, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->X:Z

    .line 160
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->p0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    goto :goto_16

    .line 161
    :cond_3a
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 162
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 163
    :cond_3b
    :goto_16
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_42

    .line 164
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->l0:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 165
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->k0:Z

    .line 166
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->m0:Z

    if-eqz v0, :cond_3c

    .line 167
    iput-boolean v9, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->a0:Z

    .line 168
    :cond_3c
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v0

    .line 169
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406150:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_3d

    .line 170
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->v:Z

    if-eqz v1, :cond_3f

    .line 171
    invoke-direct {v6, v0}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->J(Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;)V

    goto :goto_17

    .line 172
    :cond_3d
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406150:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v11, :cond_3e

    .line 173
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne v1, v2, :cond_3f

    .line 174
    invoke-direct {v6, v0}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->J(Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;)V

    goto :goto_17

    .line 175
    :cond_3e
    invoke-direct {v6, v0}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->J(Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;)V

    .line 176
    :cond_3f
    :goto_17
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_41

    .line 177
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v1, v2, :cond_40

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne v1, v2, :cond_42

    :cond_40
    if-eqz v0, :cond_42

    .line 178
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-eqz v0, :cond_42

    .line 179
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->a0:Z

    goto :goto_18

    .line 180
    :cond_41
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_42

    .line 181
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v1

    if-nez v1, :cond_42

    if-eqz v0, :cond_42

    .line 182
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-eqz v0, :cond_42

    .line 183
    iput-boolean v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->a0:Z

    :cond_42
    :goto_18
    return-void
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->G(Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    return p1
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v3, :cond_1

    instance-of v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 2
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq v0, v3, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v0, v3, :cond_1

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->i:Z

    return v2

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->i:Z

    return v2

    :cond_2
    return v1
.end method

.method protected bridge synthetic e(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->K(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->J:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    return-void
.end method
