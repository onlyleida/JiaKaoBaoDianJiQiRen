.class public Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;
    }
.end annotation


# static fields
.field public static final Y:F


# instance fields
.field public A:J

.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field public G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

.field public H:I

.field public I:I

.field public J:Z

.field public K:F

.field public L:J

.field public M:B

.field public N:F

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:F

.field public T:F

.field public U:F

.field public V:F

.field public W:F

.field public X:F

.field public a:I

.field public b:F

.field public c:F

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public n:Z

.field public o:Z

.field public p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

.field public q:F

.field public r:I

.field public s:Z

.field public t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public u:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public w:F

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3de147ae    # 0.11f

    .line 2
    sput v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3e800000    # 0.25f

    .line 3
    sput v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->s:Z

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    .line 8
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->z:I

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->A:J

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    .line 11
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 2

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    .line 2
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 3
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    .line 4
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    .line 5
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    .line 6
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->s:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->s:Z

    .line 7
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    .line 8
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    .line 9
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    .line 10
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    .line 11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->u:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->u:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 15
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    .line 16
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    .line 17
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 18
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->E:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->E:F

    .line 19
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->w:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->w:F

    .line 20
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    .line 21
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    .line 22
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->z:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->z:I

    .line 23
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->A:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->A:J

    .line 24
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->q:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->q:F

    .line 25
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k:Z

    .line 26
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 27
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    .line 28
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->H:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->H:I

    .line 29
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->I:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->I:I

    .line 30
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    .line 31
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    .line 32
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 33
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    .line 34
    iget-byte v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    iput-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    .line 35
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->n:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->n:Z

    .line 36
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->o:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->o:Z

    .line 37
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->N:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->N:F

    .line 38
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->K:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->K:F

    .line 39
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 40
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->O:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->O:I

    .line 41
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->P:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->P:I

    .line 42
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Q:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Q:I

    .line 43
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->R:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->R:I

    .line 44
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->S:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->S:F

    .line 45
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->U:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->U:F

    .line 46
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->T:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->T:F

    .line 47
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->V:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->V:F

    .line 48
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->X:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->X:F

    .line 49
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->W:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->W:F

    .line 50
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->a()Lcn/mucang/android/jiakaoyi/signal/center/model/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 8

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-double v0, v0

    sget v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    mul-double v3, v3, v5

    cmpl-double v7, v0, v3

    if-gez v7, :cond_1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double v0, v0

    float-to-double v2, v2

    mul-double v2, v2, v5

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    sget v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    sget v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->STATE_BRAKE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->diState:[Z

    aget-boolean v0, v0, v1

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    return v0
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->collectBoardOutState:[Z

    if-eqz v0, :cond_1

    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-boolean v0, v0, v1

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    return p1
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarModel{rpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gpsSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isSeatBeltOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isClutchStepOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHandbrakeOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFootBrakeOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEngineStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", throttleValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDoorClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKongDang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHonk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wiper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gyroscope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keyState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wheelAngel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->q:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wheelDegree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fingerPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", originGear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->t:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", externalGear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->u:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceExtGear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->v:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originGyro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lightState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aroundCarSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->A:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", estimateTotalDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gyroAngel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gyroSensorAngel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->E:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", senorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", footBrakeTravel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clutchTravel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyStarting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->N:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->K:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", oilAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainDriveMileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalDriveMileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", moduleStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
