.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private volatile c:I

.field private d:D

.field private e:D

.field private f:D

.field private g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

.field private h:J

.field private final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public l:J

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "__stop_car_point_f_speed"

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "__stop_car_point_f_acc"

    const v1, 0x3f8ccccd    # 1.1f

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "__stop_car_point_kp"

    const v1, 0x40833333    # 4.1f

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->p:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "__stop_car_point_ki"

    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->q:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "__stop_car_point_kd"

    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->e(Ljava/lang/String;F)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->r:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->s:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->f:D

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->m:I

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    .line 10
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e:D

    const-wide/16 p1, 0x0

    .line 11
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h:J

    .line 12
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-wide/16 v0, 0x1f4

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 13
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->f:D

    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const/4 v2, -0x1

    .line 17
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->m:I

    .line 18
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    .line 23
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e:D

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h:J

    .line 25
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-wide/16 v0, 0x1f4

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 26
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    return-void
.end method

.method private b(IB)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->m:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr v0, p1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p2, :cond_1

    if-eqz p1, :cond_1

    const/16 p2, 0x55

    if-eq p1, p2, :cond_1

    return-void

    .line 3
    :cond_1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->m:I

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/c;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/c;-><init>(I)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(I)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->createBrakeModel(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;Ljava/util/List;Z)Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    int-to-byte p0, p0

    .line 2
    invoke-static {v0, v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;BB)V

    return-void
.end method

.method private static f(Ljava/util/List;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private static g(D)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p0, p0, v1

    double-to-int p0, p0

    int-to-double p0, p0

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    const-string v0, "\u505c\u8f66\u70b9\uff1aReleasing"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 43

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v1, v3

    .line 3
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->f:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    .line 4
    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e:D

    goto :goto_0

    :cond_1
    sub-double v3, v1, v3

    .line 5
    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e:D

    .line 6
    :goto_0
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->f:D

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v7, v1, v3

    const-wide v9, 0x3fe3333333333333L    # 0.6

    mul-double v9, v9, v7

    mul-double v11, v7, v1

    const-wide v13, 0x4017851eb851eb85L    # 5.88

    div-double/2addr v11, v13

    add-double v13, v9, v11

    .line 7
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v15

    iget-object v15, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v15}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result v15

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    if-eqz v15, :cond_2

    move-wide/from16 v3, v16

    goto :goto_1

    :cond_2
    const-wide/high16 v18, 0x4028000000000000L    # 12.0

    move-wide/from16 v3, v18

    :goto_1
    const-wide v18, 0x3fa999999999999aL    # 0.05

    cmpl-double v15, v1, v18

    if-lez v15, :cond_3

    .line 8
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 9
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v15

    iget-object v15, v15, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v15, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    move-wide/from16 v20, v7

    .line 11
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v15, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    move-wide/from16 v22, v11

    .line 12
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v11

    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    sub-double/2addr v7, v11

    double-to-float v7, v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v7

    float-to-double v7, v7

    .line 13
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v24, 0x4056800000000000L    # 90.0

    cmpl-double v26, v11, v24

    if-ltz v26, :cond_4

    const-wide v11, 0x4066800000000000L    # 180.0

    .line 14
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sub-double v7, v11, v7

    .line 15
    :cond_4
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    const-wide v11, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v24, v7, v11

    if-gez v24, :cond_5

    move-wide v7, v11

    :cond_5
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v24, v5, v11

    .line 16
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    div-double v24, v24, v26

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v26

    mul-double v7, v7, v24

    .line 17
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v11, v12, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->D(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v11

    .line 18
    sget-object v12, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->p:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Float;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-wide/from16 v28, v5

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    move-wide/from16 v32, v9

    mul-double v9, v13, v30

    .line 19
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 20
    iget v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    const-string v10, ",ki="

    move-object/from16 v30, v15

    const-string v15, ",kp="

    move-wide/from16 v34, v5

    const-string v5, ",control="

    const-string v6, ",targetSpeed="

    move-object/from16 v31, v10

    const-string v10, ",speed="

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    const-string v38, "\u505c\u8f66\u70b9\uff1aStopped"

    const/4 v5, 0x4

    move-wide/from16 v39, v7

    const-wide/16 v6, 0x0

    move-object/from16 v42, v10

    move/from16 v41, v11

    const-wide v10, 0x4055400000000000L    # 85.0

    packed-switch v9, :pswitch_data_0

    :cond_6
    :goto_2
    move-wide/from16 v36, v13

    :cond_7
    :goto_3
    move-object/from16 v3, v30

    goto/16 :goto_e

    .line 21
    :pswitch_0
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h:J

    goto :goto_2

    .line 22
    :pswitch_1
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h:J

    cmp-long v3, v1, v6

    if-nez v3, :cond_8

    .line 23
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h:J

    .line 24
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    const-wide v5, 0x40a7700000000000L    # 3000.0

    div-double/2addr v1, v5

    .line 25
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    sub-double/2addr v1, v3

    mul-double v1, v1, v1

    mul-double v1, v1, v10

    double-to-int v1, v1

    int-to-byte v1, v1

    int-to-double v1, v1

    .line 26
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    const-wide/16 v3, 0x0

    .line 27
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    int-to-double v1, v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    .line 28
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v1, v1

    int-to-double v1, v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    double-to-int v1, v1

    const/16 v2, 0x8

    .line 29
    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->b(IB)V

    .line 30
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_6

    const/4 v1, 0x7

    .line 31
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    const-string v1, "\u505c\u8f66\u70b9\uff1aFinish"

    .line 32
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    const-wide v6, 0x3fb8e38e38e38e38L    # 0.09722222222222221

    sub-double v16, v1, v6

    .line 33
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 34
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, v5, :cond_9

    .line 35
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 36
    :cond_9
    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->q:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v8, v7

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->r:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v10, v7

    mul-double v16, v16, v5

    .line 37
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->f(Ljava/util/List;)D

    move-result-wide v26

    mul-double v26, v26, v8

    add-double v16, v16, v26

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v12, 0x1

    if-le v7, v12, :cond_a

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v7, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    sub-double v18, v18, v26

    goto :goto_4

    :cond_a
    const-wide/16 v18, 0x0

    :goto_4
    mul-double v18, v18, v10

    move-wide/from16 v26, v10

    add-double v10, v16, v18

    move-wide/from16 v16, v8

    .line 38
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    add-double/2addr v7, v10

    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    move-wide/from16 v34, v5

    const-wide v5, 0x4050400000000000L    # 65.0

    .line 39
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    .line 40
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    cmpg-double v5, v39, v3

    if-lez v5, :cond_d

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v3

    if-eqz v3, :cond_b

    const-wide v3, 0x3fe999999999999aL    # 0.8

    goto :goto_5

    :cond_b
    const-wide/high16 v3, 0x3fe4000000000000L    # 0.625

    :goto_5
    mul-double v3, v3, v32

    add-double v3, v22, v3

    cmpg-double v5, v39, v3

    if-ltz v5, :cond_d

    if-eqz v41, :cond_c

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double v5, v28, v3

    if-gez v5, :cond_c

    goto :goto_6

    :cond_c
    const/4 v3, 0x3

    goto :goto_7

    :cond_d
    :goto_6
    const-wide v3, 0x4055400000000000L    # 85.0

    .line 41
    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    const/4 v3, 0x3

    .line 42
    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    .line 43
    invoke-static/range {v38 .. v38}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 44
    :goto_7
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    double-to-int v4, v4

    invoke-direct {v0, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->b(IB)V

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2 : dis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v40}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v42

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v37

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, 0x3fb8e38e38e38e38L    # 0.09722222222222221

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v36

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v35}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v31

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static/range {v16 .. v17}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",kd="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v27}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",acc="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",brake="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",brakeDis="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v8, v31

    move-object/from16 v7, v36

    move-object/from16 v6, v37

    move-object/from16 v4, v42

    const-wide v9, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    sub-double v16, v1, v9

    .line 48
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 49
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v3, v5, :cond_e

    .line 50
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 51
    :cond_e
    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v11, v3

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->q:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v9, v3

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->r:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-wide/from16 v36, v13

    float-to-double v13, v3

    mul-double v16, v16, v11

    .line 52
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->f(Ljava/util/List;)D

    move-result-wide v22

    mul-double v22, v22, v9

    add-double v16, v16, v22

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_f

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    sub-double v18, v18, v22

    goto :goto_8

    :cond_f
    const-wide/16 v18, 0x0

    :goto_8
    mul-double v18, v18, v13

    move-wide/from16 v22, v13

    add-double v13, v16, v18

    move-wide/from16 v16, v9

    .line 53
    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    add-double/2addr v9, v13

    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    move-wide/from16 v26, v11

    const-wide v11, 0x4050400000000000L    # 65.0

    .line 54
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    double-to-int v3, v9

    const/4 v5, 0x3

    .line 55
    invoke-direct {v0, v3, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->b(IB)V

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v34

    cmpg-double v3, v39, v9

    if-gez v3, :cond_10

    .line 56
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->i:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    const/4 v3, 0x5

    .line 57
    iput v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    const-string v3, "\u505c\u8f66\u70b9\uff1aDistance2"

    .line 58
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 59
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3 : dis="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v39 .. v40}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v27}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static/range {v16 .. v17}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",kd="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v23}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",acc="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",brake="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",brakeDis="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v37}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    move-wide/from16 v36, v13

    .line 62
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 63
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h:J

    goto/16 :goto_3

    :pswitch_5
    move-wide/from16 v36, v13

    .line 64
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    cmpg-double v5, v1, v3

    if-gez v5, :cond_11

    .line 65
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->c(J)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    .line 66
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    .line 67
    invoke-static/range {v38 .. v38}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 68
    :cond_11
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    goto/16 :goto_3

    .line 69
    :pswitch_6
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    cmpg-double v5, v39, v3

    if-lez v5, :cond_17

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v9, v32, v3

    add-double v11, v22, v9

    cmpg-double v3, v39, v11

    if-ltz v3, :cond_17

    if-eqz v41, :cond_12

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double v5, v28, v3

    if-gez v5, :cond_12

    goto/16 :goto_b

    :cond_12
    const-wide v3, 0x3fb47ae147ae147bL    # 0.08

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    cmpg-double v7, v1, v3

    if-gez v7, :cond_13

    .line 70
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    cmpl-double v7, v3, v5

    if-lez v7, :cond_13

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    sub-double/2addr v3, v1

    .line 71
    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    .line 72
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    move-wide/from16 v36, v13

    :goto_9
    const-wide v1, 0x4055400000000000L    # 85.0

    goto/16 :goto_c

    :cond_13
    const-wide v3, 0x3fa5555555555555L    # 0.041666666666666664

    sub-double v7, v34, v3

    const-wide v9, 0x3fb3c0ca4587e6b8L    # 0.0771604938271605

    div-double/2addr v7, v9

    sub-double v3, v39, v3

    div-double/2addr v3, v7

    .line 73
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 74
    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    .line 75
    sget-object v9, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v9, v9

    sub-double v11, v1, v3

    mul-double v11, v11, v7

    .line 76
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e:D

    const-wide/16 v18, 0x0

    cmpl-double v15, v5, v18

    if-lez v15, :cond_14

    goto :goto_a

    :cond_14
    move-wide/from16 v5, v18

    :goto_a
    mul-double v5, v5, v9

    add-double/2addr v11, v5

    cmpg-double v5, v1, v3

    if-gez v5, :cond_15

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double v11, v11, v5

    .line 77
    :cond_15
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    add-double/2addr v5, v11

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    move-wide/from16 v36, v13

    const-wide v13, 0x4050400000000000L    # 65.0

    .line 78
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    cmpg-double v5, v3, v1

    if-ltz v5, :cond_16

    mul-double v26, v26, v1

    cmpg-double v5, v26, v3

    .line 79
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v39 .. v40}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v11, v12}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->e:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v36 .. v37}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->g(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_17
    :goto_b
    move-wide/from16 v36, v13

    const-wide v1, 0x4055400000000000L    # 85.0

    .line 82
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    .line 83
    :goto_c
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    double-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->b(IB)V

    .line 84
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    cmpl-double v5, v3, v1

    if-ltz v5, :cond_18

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v3, v30

    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    cmpg-double v4, v1, v16

    if-ltz v4, :cond_19

    cmpg-double v1, v28, v16

    if-ltz v1, :cond_19

    goto :goto_d

    :cond_18
    move-object/from16 v3, v30

    :goto_d
    if-eqz v41, :cond_1a

    :cond_19
    const/4 v1, 0x2

    .line 85
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    const-string v1, "\u505c\u8f66\u70b9\uff1aBraked"

    .line 86
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_e

    :pswitch_7
    move-wide/from16 v36, v13

    move-object/from16 v3, v30

    cmpg-double v1, v39, v34

    if-gtz v1, :cond_1a

    .line 87
    iput v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->c:I

    const-string v1, "\u505c\u8f66\u70b9\uff1aDistance3"

    .line 88
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 89
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->h:J

    .line 90
    :cond_1a
    :goto_e
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->s:Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;

    move-wide/from16 v4, v28

    double-to-int v2, v4

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->a:I

    move-wide/from16 v4, v39

    double-to-int v2, v4

    .line 91
    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->b:I

    .line 92
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->d:D

    double-to-int v2, v4

    int-to-byte v2, v2

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->c:I

    move-wide/from16 v13, v36

    double-to-int v2, v13

    .line 93
    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->d:I

    .line 94
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/h;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->k(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->e:I

    move-wide/from16 v2, v20

    double-to-int v2, v2

    .line 95
    iput v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/d0/d;->f:I

    .line 96
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
