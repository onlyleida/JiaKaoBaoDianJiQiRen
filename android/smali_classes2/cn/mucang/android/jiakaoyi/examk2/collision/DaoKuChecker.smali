.class public Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;
.super Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;,
        Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Z

.field private final A0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public B:Z

.field public C:Ljava/lang/Boolean;

.field private D:Z

.field private E:Landroid/media/MediaPlayer;

.field public F:Z

.field private G:D

.field public H:Z

.field private final I:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field private final J:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field public K:Z

.field public L:Ljava/lang/Boolean;

.field private M:Z

.field private N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

.field public Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

.field public a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:I

.field private j0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private k0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private l0:Z

.field private m0:Z

.field private n0:Z

.field public o0:Z

.field public p0:Z

.field private q0:Z

.field private r0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field public s:Z

.field private s0:Z

.field public t:Z

.field public t0:J

.field public u:Z

.field public u0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

.field public v:Z

.field private v0:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field public w0:Z

.field public x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

.field private final x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

.field public y:Z

.field private final y0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

.field public z:Z

.field private final z0:Lcn/mucang/android/jiakaoyi/signal/utils/c;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->F:Z

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->G:D

    .line 9
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 12
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->K:Z

    .line 13
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L:Ljava/lang/Boolean;

    .line 14
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 15
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->O:Z

    .line 16
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->P:Z

    .line 17
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Q:Z

    .line 18
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->R:Z

    .line 19
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->S:Z

    .line 20
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->T:Z

    .line 21
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->U:Z

    .line 22
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->V:Z

    .line 23
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->W:Z

    .line 24
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->X:Z

    .line 25
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->None:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 26
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 27
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 28
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->b0:Z

    .line 29
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->c0:Z

    .line 30
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->e0:Z

    .line 32
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->f0:Z

    .line 33
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->g0:Z

    .line 34
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->h0:Z

    .line 35
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->i0:I

    .line 36
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->l0:Z

    .line 37
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->m0:Z

    .line 38
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->n0:Z

    .line 39
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->o0:Z

    .line 40
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->p0:Z

    .line 41
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    .line 42
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->r0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 43
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->s0:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->t0:J

    .line 45
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    .line 46
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->w0:Z

    .line 47
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/utils/c;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/utils/c;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 48
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/utils/c;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 49
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/utils/c;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 50
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method private I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->M:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->M()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->M()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic J(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->E:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->E:Landroid/media/MediaPlayer;

    return-void
.end method

.method private M()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->M:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-object v3, v0

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->C(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private N(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->s:Z

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->s:Z

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->t:Z

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->s:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_2
    return-void
.end method

.method private O(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, v1, :cond_1

    .line 7
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :goto_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->A()Z

    move-result v0

    return v0
.end method

.method protected G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    move v2, v1

    goto/16 :goto_2

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto/16 :goto_2

    .line 5
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, v0, :cond_5

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 9
    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_8

    .line 10
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->i(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)D

    move-result-wide p1

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-double v3, p3

    cmpl-double p3, p1, v3

    if-ltz p3, :cond_0

    goto :goto_0

    .line 11
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    .line 12
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->r(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    move-result-object p2

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p3, v0, :cond_0

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, p3, :cond_0

    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p2, p1, :cond_0

    goto/16 :goto_0

    .line 15
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    .line 16
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v2

    .line 17
    :cond_8
    :goto_2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->M:Z

    if-nez p1, :cond_9

    .line 18
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->M:Z

    :cond_9
    return v2
.end method

.method protected H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v2, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;->Line78:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->g(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7
    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isNotBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 9
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isStop()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return v1

    .line 11
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    return p1
.end method

.method public synthetic K(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method protected L(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 1
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 3
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 4
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->W:Z

    .line 5
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->n0:Z

    .line 6
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-static {v2, v1, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->k0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->v0:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 9
    :cond_0
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_2

    .line 10
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 13
    :goto_0
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 15
    :cond_2
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->s0:Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_6

    .line 16
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402125:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_3

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402125:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v13, :cond_4

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_4

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 18
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->p0:Z

    .line 20
    :cond_5
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->s0:Z

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->t0:J

    .line 22
    const-class v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b$a;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 23
    :cond_6
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->t:Z

    .line 24
    invoke-direct {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->N(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 25
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->v:Z

    .line 26
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u:Z

    if-eqz v0, :cond_7

    .line 27
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :cond_7
    if-nez v0, :cond_8

    .line 28
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u:Z

    if-eqz v0, :cond_8

    .line 29
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 30
    :cond_8
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u:Z

    if-nez v0, :cond_9

    .line 31
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u:Z

    if-eqz v0, :cond_9

    .line 32
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 33
    :cond_9
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->v0:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->w0:Z

    .line 34
    invoke-direct {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->O(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 35
    invoke-direct/range {p0 .. p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 36
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->P:Z

    if-nez v0, :cond_a

    .line 37
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v0, v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->P:Z

    .line 38
    :cond_a
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->O:Z

    if-nez v0, :cond_b

    .line 39
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v0, v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->O:Z

    .line 40
    :cond_b
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->P:Z

    if-eqz v0, :cond_17

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->O:Z

    if-eqz v0, :cond_17

    .line 41
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402140:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 42
    iget-object v1, v9, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    if-eq v1, v13, :cond_c

    const/4 v0, 0x0

    :cond_c
    if-nez v0, :cond_10

    .line 43
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->S:Z

    if-nez v1, :cond_d

    .line 44
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->S:Z

    .line 45
    :cond_d
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->T:Z

    if-nez v1, :cond_e

    .line 46
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftBack:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->T:Z

    .line 47
    :cond_e
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->S:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->T:Z

    if-eqz v1, :cond_f

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_f
    const/4 v1, 0x0

    goto :goto_4

    :cond_10
    if-ne v0, v13, :cond_12

    .line 48
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->U:Z

    if-nez v1, :cond_11

    .line 49
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->U:Z

    .line 50
    :cond_11
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v1

    goto :goto_4

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 51
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->R:Z

    if-nez v1, :cond_13

    .line 52
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->R:Z

    .line 53
    :cond_13
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Q:Z

    if-nez v1, :cond_14

    .line 54
    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->RightFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->v(Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Q:Z

    .line 55
    :cond_14
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->R:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Q:Z

    if-eqz v1, :cond_f

    goto :goto_3

    .line 56
    :cond_15
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_17

    .line 57
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-ne v0, v13, :cond_16

    .line 58
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->U:Z

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    goto :goto_5

    .line 59
    :cond_16
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    .line 60
    :cond_17
    :goto_5
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_19

    .line 61
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->X:Z

    .line 62
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_6

    :cond_18
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    .line 63
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 64
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    goto :goto_7

    .line 65
    :cond_19
    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v2, :cond_1b

    .line 66
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 67
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    goto :goto_7

    .line 68
    :cond_1a
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->b0:Z

    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    goto :goto_7

    .line 69
    :cond_1b
    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq v0, v2, :cond_1d

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v2, :cond_1c

    goto :goto_7

    .line 70
    :cond_1c
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    .line 71
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z:Z

    .line 72
    :cond_1d
    :goto_7
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const-wide/16 v14, 0x0

    if-ne v0, v1, :cond_24

    .line 73
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 74
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v0, :cond_1f

    .line 75
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->None:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_1e

    .line 76
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    goto :goto_8

    .line 77
    :cond_1e
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_20

    .line 78
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    goto :goto_8

    .line 79
    :cond_1f
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_20

    .line 80
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 81
    :cond_20
    :goto_8
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->K:Z

    if-nez v0, :cond_21

    .line 82
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->n0:Z

    if-nez v0, :cond_21

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;->Line78:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    if-eq v0, v1, :cond_21

    .line 83
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 84
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 85
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->k0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    cmpl-double v0, v2, v14

    if-lez v0, :cond_21

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->k0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    cmpl-double v2, v0, v14

    if-lez v2, :cond_21

    .line 86
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->K:Z

    .line 87
    :cond_21
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_23

    .line 88
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 89
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    .line 90
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v0, :cond_22

    if-nez v1, :cond_24

    .line 91
    :cond_22
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 92
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->g0:Z

    goto :goto_9

    .line 93
    :cond_23
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 94
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 95
    :cond_24
    :goto_9
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const-wide v16, 0x3fc999999999999aL    # 0.2

    if-ne v0, v1, :cond_33

    .line 96
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    .line 97
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->K:Z

    if-eqz v0, :cond_25

    .line 98
    iput-object v11, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    goto/16 :goto_c

    .line 99
    :cond_25
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->N:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne v0, v1, :cond_27

    .line 100
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 101
    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_26

    const/4 v0, 0x1

    goto :goto_a

    :cond_26
    const/4 v0, 0x0

    .line 102
    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    goto :goto_c

    .line 103
    :cond_27
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 104
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_28

    const/4 v0, 0x1

    goto :goto_b

    :cond_28
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    goto :goto_c

    .line 105
    :cond_29
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    xor-int/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    .line 106
    :cond_2a
    :goto_c
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_2c

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_2c

    .line 107
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 108
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v0, :cond_2b

    goto :goto_d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_e

    :cond_2c
    :goto_d
    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->e0:Z

    .line 109
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v0, :cond_2d

    .line 110
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_2d

    .line 111
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 112
    :cond_2d
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->b0:Z

    if-nez v0, :cond_2e

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 113
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->b0:Z

    .line 114
    :cond_2e
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_30

    .line 115
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 116
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz v0, :cond_30

    .line 117
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 118
    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 119
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->V:Z

    goto :goto_f

    .line 120
    :cond_2f
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->V:Z

    goto :goto_f

    .line 121
    :cond_30
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->V:Z

    .line 122
    :goto_f
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 123
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_31

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v0, v0

    cmpg-double v2, v0, v16

    if-gez v2, :cond_31

    .line 124
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 125
    iput-object v11, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    .line 126
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->e0:Z

    .line 127
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    goto :goto_10

    .line 128
    :cond_31
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_33

    .line 129
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 130
    iput-object v11, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    .line 131
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->e0:Z

    .line 132
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    goto :goto_10

    .line 133
    :cond_32
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 134
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 135
    :cond_33
    :goto_10
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-nez v0, :cond_34

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 136
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 137
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 138
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 139
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    .line 140
    :cond_34
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->r0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq v0, v1, :cond_35

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq v0, v1, :cond_35

    .line 141
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->r0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 142
    :cond_35
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v5, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v5, :cond_49

    .line 143
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 144
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    if-nez v0, :cond_36

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_36

    .line 145
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 146
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 148
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    goto :goto_11

    :cond_36
    move-object/from16 v19, v5

    .line 149
    :goto_11
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    goto :goto_12

    :cond_37
    move-object/from16 v19, v5

    .line 150
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    .line 151
    :goto_12
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v18

    .line 152
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v0, :cond_3d

    if-eqz v18, :cond_3a

    .line 153
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v0, :cond_3a

    .line 154
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    if-nez v0, :cond_38

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    if-nez v0, :cond_38

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->r0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 155
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 156
    :cond_38
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->None:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_39

    .line 157
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    goto :goto_13

    .line 158
    :cond_39
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_3a

    .line 159
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 160
    :cond_3a
    :goto_13
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 161
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 162
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    .line 163
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    goto :goto_14

    .line 164
    :cond_3b
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 165
    :goto_14
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    if-nez v0, :cond_42

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    if-eqz v0, :cond_42

    .line 166
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 167
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 168
    :cond_3c
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 169
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    .line 170
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 171
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 172
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 173
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    goto :goto_16

    .line 174
    :cond_3d
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 175
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 176
    :cond_3e
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 177
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 178
    :cond_3f
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_40

    const/4 v1, 0x1

    goto :goto_15

    :cond_40
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 179
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 180
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 181
    :cond_41
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_42

    .line 182
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 183
    :cond_42
    :goto_16
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_44

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_44

    .line 184
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_43

    if-eqz v18, :cond_43

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 185
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 186
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 187
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    .line 188
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    goto :goto_17

    .line 189
    :cond_43
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 190
    :cond_44
    :goto_17
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v0, :cond_45

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->o0:Z

    if-nez v0, :cond_45

    .line 191
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_45

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_45

    .line 192
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 193
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 194
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 195
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->o0:Z

    .line 196
    :cond_45
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v0, :cond_47

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->o0:Z

    if-eqz v0, :cond_47

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_47

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 197
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_18

    :cond_46
    const/4 v0, 0x0

    goto :goto_19

    :cond_47
    :goto_18
    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->f0:Z

    .line 198
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 199
    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 200
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 201
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 202
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    .line 203
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->None:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 204
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    .line 205
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->o0:Z

    goto :goto_1a

    .line 206
    :cond_48
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 207
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    goto :goto_1a

    :cond_49
    move-object/from16 v19, v5

    .line 208
    :cond_4a
    :goto_1a
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_5d

    .line 209
    iget-wide v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->G:D

    cmpl-double v2, v0, v14

    if-nez v2, :cond_4b

    .line 210
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iput-wide v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->G:D

    goto :goto_1c

    .line 211
    :cond_4b
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    cmpl-double v2, v0, v14

    if-lez v2, :cond_4c

    const/4 v0, 0x1

    goto :goto_1b

    :cond_4c
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->F:Z

    .line 212
    :goto_1c
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    .line 213
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 214
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->None:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v1, v2, :cond_4d

    .line 215
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 216
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z:Z

    goto :goto_1d

    .line 217
    :cond_4d
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v1, v2, :cond_4f

    .line 218
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 219
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z:Z

    goto :goto_1d

    .line 220
    :cond_4e
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v1, v2, :cond_4f

    .line 221
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 222
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z:Z

    .line 223
    :cond_4f
    :goto_1d
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_50

    .line 224
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z:Z

    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    :cond_50
    if-nez v0, :cond_52

    .line 225
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_52

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 226
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_1e

    :cond_51
    const/4 v0, 0x0

    goto :goto_1f

    :cond_52
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->f0:Z

    .line 227
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_53

    const/4 v1, 0x1

    goto :goto_20

    :cond_53
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_5c

    :cond_54
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 228
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 229
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L:Ljava/lang/Boolean;

    if-nez v0, :cond_59

    .line 230
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 231
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->v0:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    xor-int/2addr v0, v13

    .line 232
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->v0:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    xor-int/2addr v1, v13

    .line 233
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_56

    if-nez v0, :cond_55

    if-eqz v1, :cond_56

    .line 234
    :cond_55
    iput-object v11, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L:Ljava/lang/Boolean;

    goto :goto_21

    .line 235
    :cond_56
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_57

    if-eqz v0, :cond_57

    if-eqz v1, :cond_57

    .line 236
    iput-object v11, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L:Ljava/lang/Boolean;

    goto :goto_21

    .line 237
    :cond_57
    iput-object v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L:Ljava/lang/Boolean;

    goto :goto_21

    .line 238
    :cond_58
    iput-object v10, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L:Ljava/lang/Boolean;

    .line 239
    :cond_59
    :goto_21
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 240
    iput-object v11, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    goto :goto_23

    .line 241
    :cond_5a
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 242
    invoke-static {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_5b

    const/4 v0, 0x1

    goto :goto_22

    :cond_5b
    const/4 v0, 0x0

    .line 243
    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->C:Ljava/lang/Boolean;

    .line 244
    :goto_23
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 245
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    .line 246
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->f0:Z

    .line 247
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 248
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 249
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    goto :goto_24

    .line 250
    :cond_5c
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 251
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 252
    :cond_5d
    :goto_24
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_68

    .line 253
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_5f

    .line 254
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 255
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz v0, :cond_5f

    .line 256
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 257
    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 258
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->V:Z

    goto :goto_25

    .line 259
    :cond_5e
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->V:Z

    goto :goto_25

    .line 260
    :cond_5f
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->V:Z

    .line 261
    :goto_25
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    .line 262
    iget-boolean v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v2, :cond_61

    if-eqz v0, :cond_61

    .line 263
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->None:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v2, v3, :cond_60

    .line 264
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 265
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    goto :goto_26

    .line 266
    :cond_60
    sget-object v3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v2, v3, :cond_62

    .line 267
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 268
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    goto :goto_26

    .line 269
    :cond_61
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v2, v3, :cond_62

    .line 270
    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Z:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 271
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    :cond_62
    :goto_26
    xor-int/lit8 v2, v0, 0x1

    .line 272
    iput-boolean v2, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    .line 273
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v3, :cond_64

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v1, :cond_64

    .line 274
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 275
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v1, :cond_63

    goto :goto_27

    :cond_63
    const/4 v1, 0x0

    goto :goto_28

    :cond_64
    :goto_27
    const/4 v1, 0x1

    :goto_28
    iput-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->e0:Z

    .line 276
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->c0:Z

    if-nez v1, :cond_65

    if-nez v0, :cond_65

    .line 277
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->c0:Z

    .line 278
    :cond_65
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 279
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_66

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v0, v0

    cmpg-double v2, v0, v16

    if-gez v2, :cond_66

    .line 280
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 281
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->e0:Z

    .line 282
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    goto :goto_29

    .line 283
    :cond_66
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_68

    .line 284
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 285
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->e0:Z

    .line 286
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    goto :goto_29

    .line 287
    :cond_67
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 288
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 289
    :cond_68
    :goto_29
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v10, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v10, :cond_7e

    .line 290
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 291
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    if-nez v0, :cond_69

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_69

    .line 292
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 293
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 294
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 295
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    .line 296
    :cond_69
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    goto :goto_2a

    .line 297
    :cond_6a
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    .line 298
    :goto_2a
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v11

    .line 299
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v0, :cond_70

    if-eqz v11, :cond_6d

    .line 300
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v0, :cond_6d

    .line 301
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    if-nez v0, :cond_6b

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    if-nez v0, :cond_6b

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->r0:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v0, v1, :cond_6b

    .line 302
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 303
    :cond_6b
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->None:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_6c

    .line 304
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    goto :goto_2b

    .line 305
    :cond_6c
    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_6d

    .line 306
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 307
    :cond_6d
    :goto_2b
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 308
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 309
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    .line 310
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    goto :goto_2c

    .line 311
    :cond_6e
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 312
    :goto_2c
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    if-nez v0, :cond_75

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    if-eqz v0, :cond_75

    .line 313
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 314
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 315
    :cond_6f
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 316
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    .line 317
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 318
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 319
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    .line 320
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->D(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    goto :goto_2e

    .line 321
    :cond_70
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 322
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->J:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 323
    :cond_71
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 324
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 325
    :cond_72
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_73

    const/4 v1, 0x1

    goto :goto_2d

    :cond_73
    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 326
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 327
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 328
    :cond_74
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v1, :cond_75

    .line 329
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    .line 330
    :cond_75
    :goto_2e
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_77

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_77

    .line 331
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_76

    if-eqz v11, :cond_76

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 332
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 333
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 334
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    .line 335
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->I:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    goto :goto_2f

    .line 336
    :cond_76
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->A:Z

    .line 337
    :cond_77
    :goto_2f
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v0, :cond_78

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->o0:Z

    if-nez v0, :cond_78

    .line 338
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_78

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_78

    .line 339
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 340
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 341
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 342
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->o0:Z

    .line 343
    :cond_78
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v0, :cond_7a

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->o0:Z

    if-eqz v0, :cond_7a

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_7a

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 344
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_30

    :cond_79
    const/4 v0, 0x0

    goto :goto_31

    :cond_7a
    :goto_30
    const/4 v0, 0x1

    :goto_31
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->f0:Z

    .line 345
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->D:Z

    if-nez v0, :cond_7c

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    if-ne v0, v13, :cond_7c

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 346
    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 347
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->E:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7b

    .line 348
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 349
    :cond_7b
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/examk2/R$raw;->dingdong:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->E:Landroid/media/MediaPlayer;

    .line 350
    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/collision/a;

    invoke-direct {v1, v6}, Lcn/mucang/android/jiakaoyi/examk2/collision/a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 351
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->E:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 352
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->D:Z

    .line 353
    :cond_7c
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 354
    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 355
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step7:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v6, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    .line 356
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 357
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->None:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    goto :goto_32

    .line 358
    :cond_7d
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 359
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 360
    :cond_7e
    :goto_32
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v1, 0x0

    move-object/from16 v2, v19

    if-eq v0, v2, :cond_80

    if-ne v0, v10, :cond_7f

    goto :goto_33

    .line 361
    :cond_7f
    iput v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->i0:I

    .line 362
    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->j0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 363
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->l0:Z

    .line 364
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->m0:Z

    goto/16 :goto_34

    .line 365
    :cond_80
    :goto_33
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz v0, :cond_82

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v0, :cond_82

    .line 366
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    if-eqz v0, :cond_81

    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->m0:Z

    if-nez v0, :cond_81

    .line 367
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->m0:Z

    .line 368
    :cond_81
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->l0:Z

    .line 369
    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->j0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 370
    :cond_82
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 371
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->m0:Z

    if-eqz v1, :cond_84

    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz v1, :cond_84

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_84

    .line 372
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->j0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_83

    .line 373
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->j0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 374
    :cond_83
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->j0:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_84

    .line 375
    iget-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->l0:Z

    if-nez v0, :cond_84

    .line 376
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->l0:Z

    .line 377
    iget v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->i0:I

    add-int/2addr v0, v13

    iput v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->i0:I

    .line 378
    :cond_84
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_85

    iget v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->i0:I

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_85

    .line 379
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->h0:Z

    .line 380
    :cond_85
    :goto_34
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step7:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_89

    .line 381
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    .line 382
    iget-boolean v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-nez v1, :cond_87

    if-nez v0, :cond_87

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_87

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    .line 383
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_35

    :cond_86
    const/4 v0, 0x0

    goto :goto_36

    :cond_87
    :goto_35
    const/4 v0, 0x1

    :goto_36
    iput-boolean v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->f0:Z

    .line 384
    invoke-virtual {v8, v7}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 385
    iput-boolean v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    .line 386
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->x0:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    .line 387
    :cond_88
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    .line 388
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->q0:Z

    .line 389
    iput-boolean v12, v6, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    :cond_89
    return-void
.end method

.method protected d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    instance-of v0, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->e(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isNotBack()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/4 v5, 0x0

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    const/4 v8, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/c;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;DZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;->Line18:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    .line 4
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->i:Z

    return v2

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isStop()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;->Line78:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    .line 7
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->i:Z

    return v2

    .line 8
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->d(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->i:Z

    .line 10
    instance-of p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-eqz p1, :cond_5

    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->e:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 11
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;->Line18:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    goto :goto_2

    .line 12
    :cond_5
    sget-object p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;->Line12:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    :goto_2
    return v2

    :cond_6
    return v1
.end method

.method protected bridge synthetic e(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->G(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic f(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic v(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method protected w()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->w:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->s:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->y(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    return-void
.end method
