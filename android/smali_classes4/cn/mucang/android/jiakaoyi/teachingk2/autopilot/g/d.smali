.class public Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;,
        Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;

.field private final f:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "help_teach_advance_time"

    const v1, 0x3f19999a    # 0.6f

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->f:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "help_teach_brake_distance"

    const/16 v1, 0xe6

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->g:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "help_teach_brake_coefficient"

    const/16 v1, 0x15

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->h:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->i:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->b:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->c:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    return-object v0
.end method

.method public static b()I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->h:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static c()I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->g:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private d(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;
    .locals 1

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->type:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Wheel:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;-><init>()V

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    if-ne p1, v0, :cond_1

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;-><init>()V

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;->HandBrake:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTipType;

    if-ne p1, v0, :cond_2

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;-><init>()V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static f()F
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->f:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private j(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->i:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->j:J

    return-void
.end method

.method public static l(I)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->h:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public static m(I)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->g:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public static p(F)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->f:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->j:J

    return-wide v0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    .line 1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 3
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->k()V

    .line 5
    :cond_1
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;

    if-nez v10, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 7
    invoke-direct {p0, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->d(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;

    iget-object v11, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v7, v11}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    iget-object v11, v9, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->normal:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {v2, v7, v5, v11, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$a;)V

    .line 9
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->b:Ljava/util/Map;

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v11, v2

    .line 10
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->i:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

    const/4 v1, 0x4

    const/4 v13, 0x3

    const/4 v2, 0x2

    if-eqz v12, :cond_6

    .line 11
    iget v3, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    if-eq v3, v2, :cond_5

    if-eq v3, v13, :cond_4

    goto/16 :goto_0

    .line 12
    :cond_4
    iget-object v2, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-interface {v10, v2, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->j(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 13
    iget-object v2, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-interface {v10, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->f(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 14
    iput v1, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    .line 15
    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->i:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

    goto/16 :goto_0

    .line 16
    :cond_5
    iget-object v1, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    iget-object v6, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iget-object v7, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->g:Ljava/util/List;

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    .line 17
    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;J)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 18
    iget-object v1, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    invoke-interface {v10, v1, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->k(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 19
    iput v13, v12, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    goto/16 :goto_0

    :cond_6
    if-eqz v11, :cond_c

    .line 20
    iget v4, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    if-eqz v4, :cond_a

    if-eq v4, v3, :cond_9

    if-eq v4, v2, :cond_8

    if-eq v4, v13, :cond_7

    goto/16 :goto_0

    .line 21
    :cond_7
    invoke-interface {v10, v9, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->j(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 22
    iput v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    .line 23
    invoke-interface {v10, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->f(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->j:J

    goto/16 :goto_0

    .line 25
    :cond_8
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->d:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;J)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 26
    invoke-interface {v10, v9, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->k(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 27
    iput v13, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    goto :goto_0

    .line 28
    :cond_9
    invoke-interface {v10, v9, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->d(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5239\u8f66\u540e\u7684\u5750\u6807\u70b9\u548c\u76ee\u6807\u70b9\u7684\u8ddd\u79bb:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;

    invoke-interface/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 30
    iput v2, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    .line 31
    invoke-interface {v10, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->e(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 32
    iput-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->i:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

    .line 33
    iput v2, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    .line 34
    iput-object v9, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->e:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;

    .line 35
    iput-object v6, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->f:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    move-object/from16 v1, p7

    .line 36
    iput-object v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->g:Ljava/util/List;

    goto :goto_0

    .line 37
    :cond_a
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;

    invoke-virtual {v1, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/e;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->c:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->j(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 38
    invoke-interface {v10, v9, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 39
    iput v3, v11, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    goto :goto_0

    .line 40
    :cond_b
    invoke-interface {v10, v9, v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;->h(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

    .line 2
    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;

    .line 2
    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d$b;->h:I

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public n(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->e:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/c;

    return-void
.end method

.method public o(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->j:J

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public s(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->c:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
