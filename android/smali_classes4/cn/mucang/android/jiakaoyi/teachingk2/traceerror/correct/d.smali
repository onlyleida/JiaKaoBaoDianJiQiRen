.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;

.field private c:J

.field private final d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

.field private final f:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

.field private g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

.field private h:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->c:J

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->h:Ljava/lang/ref/Reference;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-wide/16 v1, 0xfa0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->f:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;-><init>()V

    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/e/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->c:J

    .line 3
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->q(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    :cond_0
    return-void
.end method

.method private e(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V
    .locals 1

    const-string v0, "\u5b8c\u6210\u89c4\u5212\u8f68\u8ff9\u7684\u884c\u9a76"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;->Finish:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->e(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->q(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->m()V

    return-void
.end method

.method public static g()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d$b;->a()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->h:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;

    .line 5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    return-void
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->h()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/c;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->h()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/a;

    invoke-direct {v1, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->f:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    return-void
.end method

.method private q(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->n(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->o()V

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private s(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->h()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/b;

    invoke-direct {v1, v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private t(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_hard_back_gear_1_reset:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_hard_back_gear_d_reset:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_loc_incorrect_gear_r_reset:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/g;->a:Lcn/mucang/android/jiakaoyi/framework/tts/g;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->K()V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method private u(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->b(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e6\u53d1\u8f68\u8ff9\u7ea0\u6b63\u70b9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->s(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)V

    return-void
.end method

.method private v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)Z
    .locals 6

    .line 1
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->f:D

    sub-double/2addr v2, p1

    double-to-float p1, v2

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41700000    # 15.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/engine/model/Step;ILcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 11

    move-object v0, p0

    move v3, p2

    move-object/from16 v9, p6

    move-object/from16 v2, p7

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->q(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;

    if-nez v1, :cond_7

    if-eqz p3, :cond_9

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    :goto_0
    instance-of v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_3
    :goto_1
    move-object v8, v1

    goto :goto_2

    .line 7
    :cond_4
    instance-of v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz v4, :cond_6

    if-eq v3, v6, :cond_3

    if-ne v3, v5, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_1

    .line 9
    :goto_2
    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;

    move-object v1, v10

    move-object/from16 v2, p7

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;->TipError:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;

    invoke-virtual {v10, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->e(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;)V

    .line 11
    invoke-direct {p0, v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    goto :goto_3

    :cond_6
    return-void

    .line 12
    :cond_7
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;

    move-result-object v4

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;->TipError:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;

    if-ne v4, v5, :cond_9

    .line 13
    invoke-interface/range {p6 .. p6}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->c:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-lez v8, :cond_9

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    invoke-interface/range {p6 .. p6}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide v6, 0x40a3880000000000L    # 2500.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_9

    .line 15
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-object v5, p1

    if-ne v4, v5, :cond_9

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    if-ne v4, v2, :cond_9

    iget v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->b:I

    if-eq v2, v3, :cond_8

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->None:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v3, v2, :cond_9

    .line 16
    :cond_8
    invoke-direct {p0, v9, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->m()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->o()V

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->m()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->h:Ljava/lang/ref/Reference;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->o()V

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->h()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;->enable()Z

    move-result v0

    return v0
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V
    .locals 16

    move-object/from16 v8, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->q(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    return-void

    .line 3
    :cond_0
    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;

    if-eqz v9, :cond_16

    .line 4
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;->Finish:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    move-object/from16 v7, p2

    if-ne v7, v0, :cond_16

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-object/from16 v1, p3

    if-ne v1, v0, :cond_16

    iget v0, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->b:I

    move/from16 v2, p4

    if-eq v2, v0, :cond_2

    goto/16 :goto_2

    .line 6
    :cond_2
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->c()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v3

    if-nez v3, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    .line 10
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    .line 11
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastRearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v4, :cond_6

    return-void

    .line 12
    :cond_6
    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->b()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;

    move-result-object v4

    .line 13
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x2

    const-wide/16 v10, 0x2710

    if-eq v4, v5, :cond_11

    const/4 v1, 0x3

    if-eq v4, v1, :cond_7

    goto/16 :goto_2

    .line 14
    :cond_7
    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastRearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v4, v6

    .line 15
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v12, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v6, v12

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    .line 16
    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    mul-double v4, v4, v12

    mul-double v6, v6, v12

    invoke-virtual {v1, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_d

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    .line 19
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    .line 20
    :cond_8
    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v13, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v6, v7, v13, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    cmpg-double v14, v6, v12

    if-ltz v14, :cond_9

    .line 22
    invoke-direct {v8, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 23
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ne v2, v6, :cond_b

    iget-boolean v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->g:Z

    if-eqz v5, :cond_b

    .line 24
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v7, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    .line 25
    iget-wide v12, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    iget-wide v14, v4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->f:D

    sub-double/2addr v12, v14

    double-to-float v7, v12

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v12, v7

    const-wide/high16 v14, 0x4039000000000000L    # 25.0

    cmpg-double v7, v5, v14

    if-gez v7, :cond_a

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpg-double v7, v12, v5

    if-gtz v7, :cond_a

    .line 26
    invoke-direct {v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->u(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)V

    goto :goto_1

    .line 27
    :cond_a
    sget v4, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_skewing_drive_red_area:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_1

    .line 28
    :cond_b
    invoke-direct {v8, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->u(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;)V

    :cond_c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 29
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v2, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v2, :cond_e

    .line 31
    invoke-direct {v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->e(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    goto/16 :goto_2

    .line 32
    :cond_e
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->f:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->c(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 33
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->f:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 34
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_please_gear:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto/16 :goto_2

    .line 35
    :cond_f
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    if-nez v0, :cond_10

    .line 36
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-direct {v0, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 37
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_drive_car_red_area:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 38
    :cond_10
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->c(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 39
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 40
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_drive_car_red_area:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto/16 :goto_2

    .line 41
    :cond_11
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-nez v0, :cond_13

    .line 42
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 43
    :cond_13
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;->ToTarget:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;

    invoke-virtual {v9, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->e(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;)V

    move-object/from16 v12, p1

    .line 44
    invoke-direct {v8, v12, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;)V

    goto :goto_2

    :cond_14
    move-object/from16 v12, p1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 45
    invoke-virtual/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b(Lcn/mucang/android/jiakaoyi/engine/model/Step;ILcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    .line 46
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    if-nez v0, :cond_15

    .line 47
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-direct {v0, v10, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 48
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v0

    invoke-direct {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->t(Z)V

    .line 49
    :cond_15
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->c(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 50
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 51
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v0

    invoke-direct {v8, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->t(Z)V

    :cond_16
    :goto_2
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public p(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;)V
    .locals 1

    .line 1
    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->h:Ljava/lang/ref/Reference;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->h:Ljava/lang/ref/Reference;

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/d;->b:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->b:I

    return v0
.end method
