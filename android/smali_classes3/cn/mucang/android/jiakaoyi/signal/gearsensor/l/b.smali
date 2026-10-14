.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;


# instance fields
.field public A:Z

.field private B:I

.field private volatile C:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private volatile D:Z

.field private E:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field public final G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;

.field private L:J

.field private M:F

.field private N:F

.field private O:F

.field private P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private Q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private R:Z

.field private S:I

.field private T:Z

.field private U:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private V:I

.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private final p:[I

.field private final q:[I

.field private final r:[I

.field private s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private t:Z

.field private final u:[F

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;",
            ">;"
        }
    .end annotation
.end field

.field public x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->a:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->b:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->c:D

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->d:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->e:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->f:D

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->j:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->k:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->l:F

    .line 7
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->m:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->n:F

    const v4, 0x461c4000    # 10000.0f

    .line 8
    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->o:F

    .line 9
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->list:[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    .line 10
    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->q:[I

    .line 11
    array-length v5, v4

    new-array v5, v5, [I

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->r:[I

    .line 12
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 13
    array-length v5, v4

    new-array v5, v5, [F

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->u:[F

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->w:Ljava/util/List;

    const/4 v5, 0x0

    .line 16
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->x:Z

    .line 17
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->y:Z

    .line 18
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z:I

    .line 19
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B:I

    const/4 v6, 0x0

    .line 20
    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->C:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v7, 0x1

    .line 21
    iput-boolean v7, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->D:Z

    .line 22
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->E:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 23
    array-length v8, v4

    new-array v8, v8, [Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iput-object v8, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 24
    array-length v4, v4

    new-array v4, v4, [Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 25
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->H:Z

    .line 26
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->I:Z

    .line 27
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->J:Z

    .line 28
    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->K:Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;

    const/high16 v4, 0x40a00000    # 5.0f

    .line 29
    iput v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->M:F

    .line 30
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->N:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 31
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->O:F

    .line 32
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v0, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 33
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->Q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 34
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->R:Z

    .line 35
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->S:I

    .line 36
    iput-boolean v7, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->T:Z

    .line 37
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->U:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method

.method private A(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->C:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z()V

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u505c\u6b62\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v1, v2

    if-nez v2, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z()V

    return-void

    .line 6
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v1, v3

    .line 7
    invoke-direct {p0, p1, v2, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->C(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5b66\u4e60\u65f6\uff0c\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u5bf9\uff0cdata:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",\u7a7a\u6863data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->D:Z

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z()V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    aput-object v1, v0, p1

    return-void

    .line 13
    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z()V

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->copyFrom(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v3

    aput-object v3, v1, v0

    .line 15
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->y(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5b66\u4e60\u7ed3\u679c:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v()Z

    return-void
.end method

.method private B(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    int-to-double p1, p1

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private C(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Z
    .locals 9

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    .line 2
    :cond_1
    iget v2, p2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v3, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 3
    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr p2, p3

    float-to-double p2, p2

    .line 4
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-wide/high16 v5, -0x4000000000000000L    # -2.0

    const-wide/16 v7, 0x0

    if-ne p1, v4, :cond_3

    cmpl-double p1, v2, v7

    if-lez p1, :cond_2

    cmpl-double p1, p2, v5

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5
    :cond_3
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v4, :cond_5

    cmpg-double p1, v2, v7

    if-gez p1, :cond_4

    cmpl-double p1, p2, v5

    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 6
    :cond_5
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v4, :cond_7

    cmpl-double p1, v2, v7

    if-lez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 7
    :cond_7
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v4, :cond_9

    cmpg-double p1, v2, v7

    if-gez p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 8
    :cond_9
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v4, :cond_b

    cmpl-double p1, v2, v7

    if-lez p1, :cond_a

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double p1, p2, v2

    if-gez p1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_4
    return v1
.end method

.method private p(FFFFFFLjava/util/concurrent/atomic/AtomicBoolean;)F
    .locals 6

    sub-float v0, p3, p1

    sub-float v1, p1, p2

    mul-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-float v5, p1, p5

    mul-float v0, v0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    if-eqz v2, :cond_1

    sub-float p2, p1, p1

    sub-float p3, p6, p4

    mul-float p2, p2, p3

    sub-float p3, p5, p1

    div-float/2addr p2, p3

    add-float/2addr p4, p2

    goto :goto_2

    :cond_1
    sub-float p2, p1, p3

    sub-float/2addr p6, p4

    mul-float p6, p6, p2

    div-float/2addr p6, p2

    add-float/2addr p6, p4

    move p5, p1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    sub-float p1, p5, p1

    mul-float p1, p1, v1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    const/4 p1, 0x0

    const/4 p5, 0x0

    goto :goto_2

    :cond_3
    sub-float p1, p3, p2

    sub-float v0, p2, p5

    mul-float p1, p1, v0

    cmpl-float p1, p1, v4

    if-lez p1, :cond_4

    .line 1
    invoke-virtual {p7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sub-float p1, p2, p2

    sub-float p3, p6, p4

    mul-float p1, p1, p3

    sub-float p3, p5, p2

    div-float/2addr p1, p3

    add-float/2addr p4, p1

    move p1, p2

    goto :goto_2

    :cond_4
    :goto_1
    move p1, p3

    :goto_2
    sub-float/2addr p1, p5

    add-float/2addr p4, p6

    mul-float p1, p1, p4

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    return p1
.end method

.method private q(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;FFFFII)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 35

    move-object/from16 v10, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    sub-float v0, v11, v13

    sub-float v1, v12, v14

    .line 1
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    .line 2
    iget v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->k:F

    .line 3
    iget v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->l:F

    .line 4
    iput v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    .line 5
    iput v12, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    :cond_0
    const/4 v15, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 8
    aget-object v4, v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v5, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->u:[F

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    invoke-direct {v10, v11, v12, v6, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s(FFFF)F

    move-result v4

    aput v4, v5, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v3, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->o:F

    const v4, 0x3ee66666    # 0.45f

    mul-float v5, v3, v4

    add-float/2addr v5, v2

    mul-float v4, v4, v3

    sub-float v4, v2, v4

    const v6, 0x3e99999a    # 0.3f

    mul-float v7, v3, v6

    add-float/2addr v7, v2

    mul-float v3, v3, v6

    sub-float v16, v2, v3

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Clutch:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-wide/from16 v8, p1

    move/from16 v6, p3

    invoke-virtual {v2, v8, v9, v3, v6}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    cmpg-float v17, v11, v5

    if-gez v17, :cond_3

    cmpl-float v17, v11, v4

    if-gtz v17, :cond_5

    :cond_3
    cmpg-float v17, v11, v4

    if-gtz v17, :cond_4

    cmpl-float v17, v13, v5

    if-gez v17, :cond_5

    :cond_4
    cmpl-float v5, v11, v5

    if-ltz v5, :cond_6

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_6

    .line 12
    :cond_5
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    cmpg-float v17, v11, v7

    if-gez v17, :cond_7

    cmpl-float v5, v11, v16

    if-gtz v5, :cond_9

    :cond_7
    cmpg-float v5, v11, v16

    if-gtz v5, :cond_8

    cmpl-float v5, v13, v7

    if-gez v5, :cond_9

    :cond_8
    cmpl-float v5, v11, v7

    if-ltz v5, :cond_b

    cmpg-float v5, v13, v16

    if-gtz v5, :cond_b

    .line 13
    :cond_9
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-nez v2, :cond_a

    const/16 v18, 0x1

    const/16 v19, 0x1

    goto :goto_3

    :cond_a
    move/from16 v19, v2

    const/16 v18, 0x1

    goto :goto_3

    :cond_b
    move/from16 v19, v2

    move/from16 v18, v4

    :goto_3
    const/4 v2, 0x0

    if-nez v19, :cond_d

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_d

    .line 14
    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->E:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v4, v5, :cond_d

    sub-float v4, v11, v7

    sub-float/2addr v7, v13

    mul-float v4, v4, v7

    cmpl-float v4, v4, v2

    if-gtz v4, :cond_c

    sub-float v4, v11, v16

    sub-float v5, v16, v13

    mul-float v4, v4, v5

    cmpl-float v4, v4, v2

    if-lez v4, :cond_d

    .line 15
    :cond_c
    iput-boolean v15, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->t:Z

    :cond_d
    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v31

    .line 17
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 18
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;

    move/from16 v33, v4

    float-to-double v3, v11

    float-to-double v8, v12

    float-to-double v11, v13

    move/from16 v34, v5

    float-to-double v5, v14

    move-object/from16 v20, v7

    move-wide/from16 v21, v3

    move-wide/from16 v23, v8

    move-wide/from16 v25, v11

    move-wide/from16 v27, v5

    move-wide/from16 v29, v31

    .line 19
    invoke-virtual/range {v20 .. v30}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->b(DDDDD)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 20
    iget-boolean v4, v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->d:Z

    if-eqz v4, :cond_e

    const/4 v5, 0x1

    goto :goto_5

    :cond_e
    move/from16 v5, v34

    :goto_5
    cmpl-float v6, v3, v33

    if-lez v6, :cond_10

    .line 21
    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz v4, :cond_f

    move-object v0, v2

    :cond_f
    move v4, v3

    goto :goto_6

    :cond_10
    move/from16 v4, v33

    .line 22
    :goto_6
    iget-object v6, v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;F)V

    move-wide/from16 v8, p1

    move/from16 v6, p3

    move/from16 v11, p5

    move/from16 v12, p6

    goto :goto_4

    :cond_11
    move/from16 v34, v5

    if-eq v0, v2, :cond_12

    .line 23
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_12
    if-nez v34, :cond_13

    .line 24
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 25
    :cond_13
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_19

    const/4 v1, 0x0

    .line 26
    :goto_7
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->q:[I

    array-length v3, v2

    const/16 v4, 0x3c

    if-ge v1, v3, :cond_16

    .line 27
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v3, :cond_14

    .line 28
    aget v3, v2, v1

    add-int/lit8 v3, v3, 0xf

    aput v3, v2, v1

    .line 29
    aget v3, v2, v1

    if-le v3, v4, :cond_15

    .line 30
    aput v4, v2, v1

    goto :goto_8

    .line 31
    :cond_14
    aget v3, v2, v1

    add-int/lit8 v3, v3, -0xf

    aput v3, v2, v1

    .line 32
    aget v3, v2, v1

    if-gez v3, :cond_15

    .line 33
    aput v15, v2, v1

    :cond_15
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 34
    :cond_16
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget v3, v2, v1

    const/4 v5, 0x3

    if-gt v3, v5, :cond_17

    .line 35
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-object v4, v0

    const/4 v3, 0x1

    goto :goto_c

    .line 36
    :cond_17
    aget v1, v2, v1

    if-lt v1, v4, :cond_18

    .line 37
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;

    const/4 v3, 0x1

    .line 38
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;->c(Z)V

    goto :goto_9

    :cond_18
    const/4 v3, 0x1

    goto :goto_b

    :cond_19
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 39
    :goto_a
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->q:[I

    array-length v4, v2

    if-ge v1, v4, :cond_1b

    .line 40
    aget v4, v2, v1

    add-int/lit8 v4, v4, -0xf

    aput v4, v2, v1

    .line 41
    aget v4, v2, v1

    if-gez v4, :cond_1a

    .line 42
    aput v15, v2, v1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    :goto_b
    move-object v4, v0

    :goto_c
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v11, 0x1

    move/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, v18

    move/from16 v9, v19

    .line 43
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->t(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;IIZZ)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    .line 44
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->u:[F

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget v2, v2, v4

    cmpg-float v1, v2, v1

    if-ltz v1, :cond_1c

    move/from16 v1, p5

    cmpl-float v2, v1, v16

    if-lez v2, :cond_1d

    if-gez v17, :cond_1d

    goto :goto_d

    :cond_1c
    move/from16 v1, p5

    :goto_d
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    cmpg-double v2, v31, v4

    if-gtz v2, :cond_1d

    .line 45
    iget v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->S:I

    add-int/2addr v2, v11

    iput v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->S:I

    goto :goto_e

    .line 46
    :cond_1d
    iput v15, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->S:I

    .line 47
    :goto_e
    iget v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->S:I

    if-le v2, v11, :cond_1f

    .line 48
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u627e\u5230\u7a7a\u6863\u4e86 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GearSensor"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object v0, v3

    .line 50
    :cond_1f
    iput v13, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->k:F

    .line 51
    iput v14, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->l:F

    .line 52
    iput v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    move/from16 v1, p6

    .line 53
    iput v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    return-object v0
.end method

.method private r(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;FFFFII)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 33

    move-object/from16 v10, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    sub-float v0, v11, v13

    sub-float v1, v12, v14

    .line 1
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    .line 2
    iget v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->k:F

    .line 3
    iget v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    iput v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->l:F

    .line 4
    iput v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    .line 5
    iput v12, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    :cond_0
    const/4 v15, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 8
    aget-object v4, v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v5, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->u:[F

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    invoke-direct {v10, v11, v12, v6, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s(FFFF)F

    move-result v4

    aput v4, v5, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v3, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->o:F

    const v4, 0x3ee66666    # 0.45f

    mul-float v5, v3, v4

    add-float/2addr v5, v2

    mul-float v4, v4, v3

    sub-float v4, v2, v4

    const v6, 0x3e99999a    # 0.3f

    mul-float v7, v3, v6

    add-float v16, v2, v7

    mul-float v3, v3, v6

    sub-float v17, v2, v3

    cmpg-float v2, v11, v5

    if-gtz v2, :cond_3

    cmpl-float v2, v11, v4

    if-gez v2, :cond_5

    :cond_3
    cmpg-float v2, v11, v4

    if-gtz v2, :cond_4

    cmpl-float v2, v13, v5

    if-gez v2, :cond_5

    :cond_4
    cmpl-float v2, v11, v5

    if-ltz v2, :cond_6

    cmpg-float v2, v13, v4

    if-gtz v2, :cond_6

    .line 11
    :cond_5
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v29

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const v1, 0x5a0e1bca    # 1.0E16f

    .line 14
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v7, "GearSensor"

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    float-to-double v5, v11

    float-to-double v9, v12

    float-to-double v11, v13

    move-object/from16 v31, v2

    move/from16 v32, v3

    float-to-double v2, v14

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    move-wide/from16 v21, v9

    move-wide/from16 v23, v11

    move-wide/from16 v25, v2

    move-wide/from16 v27, v29

    .line 15
    invoke-virtual/range {v18 .. v28}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->b(DDDDD)V

    .line 16
    iget-boolean v2, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->d:Z

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    move/from16 v3, v32

    .line 17
    :goto_4
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->a()F

    move-result v2

    cmpg-float v5, v2, v1

    if-gez v5, :cond_8

    .line 18
    iget-object v0, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move v1, v2

    .line 19
    :cond_8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x459c4000    # 5000.0f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_9

    .line 20
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_9
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;F)V

    move-object/from16 v10, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v2, v31

    goto :goto_3

    :cond_a
    move/from16 v32, v3

    if-nez v32, :cond_b

    .line 22
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_b
    move-object v4, v0

    .line 23
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->Clutch:Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-wide/from16 v2, p1

    move/from16 v5, p3

    invoke-virtual {v0, v2, v3, v1, v5}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->j(JLcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)Z

    move-result v9

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p9

    move-object v10, v7

    move/from16 v7, p10

    const/4 v11, 0x1

    .line 24
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->t(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;IIZZ)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    move-object/from16 v2, p0

    .line 25
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->u:[F

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget v3, v3, v5

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_c

    move/from16 v1, p5

    cmpl-float v3, v1, v17

    if-lez v3, :cond_d

    cmpg-float v3, v1, v16

    if-gez v3, :cond_d

    goto :goto_5

    :cond_c
    move/from16 v1, p5

    :goto_5
    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    cmpg-double v3, v29, v5

    if-gtz v3, :cond_d

    .line 26
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->S:I

    add-int/2addr v3, v11

    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->S:I

    goto :goto_6

    .line 27
    :cond_d
    iput v15, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->S:I

    .line 28
    :goto_6
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->S:I

    if-le v3, v11, :cond_f

    .line 29
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u627e\u5230\u7a7a\u6863\u4e86 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object v0, v4

    .line 31
    :cond_f
    iput v13, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->k:F

    .line 32
    iput v14, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->l:F

    .line 33
    iput v1, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    move/from16 v1, p6

    .line 34
    iput v1, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    return-object v0
.end method

.method private s(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private t(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;IIZZ)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    .line 1
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v5, :cond_2

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 3
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v2, v4, :cond_0

    .line 4
    aget v4, v3, v2

    add-int/2addr v4, v7

    aput v4, v3, v2

    goto :goto_1

    .line 5
    :cond_0
    aput v6, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v1

    :cond_2
    if-nez p9, :cond_3

    .line 8
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v5, :cond_3

    if-eq v2, v5, :cond_3

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v5, :cond_3

    move-object v1, v2

    :cond_3
    const/16 v2, 0x50

    const/16 v5, 0x23

    const/4 v10, 0x5

    const/4 v12, 0x3

    if-lez v4, :cond_1b

    if-nez p9, :cond_1b

    if-nez p8, :cond_1b

    .line 9
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v14, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v13, v14, :cond_1b

    iget-boolean v13, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->t:Z

    if-eqz v13, :cond_1b

    if-le v4, v10, :cond_5

    const/16 v13, 0x7d0

    if-le v3, v13, :cond_4

    const/4 v13, 0x3

    goto :goto_2

    :cond_4
    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    const/4 v13, 0x5

    .line 10
    :goto_2
    div-int v15, v3, v4

    .line 11
    iget v9, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z:I

    const/16 v8, 0x5f

    if-ne v9, v7, :cond_7

    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v11, :cond_7

    if-le v15, v8, :cond_7

    .line 12
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v12

    .line 13
    aget v8, v1, v7

    add-int/2addr v8, v7

    aput v8, v1, v7

    .line 14
    aget v1, v1, v7

    if-lt v1, v10, :cond_6

    .line 15
    iput-object v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_6
    :goto_3
    move-object v1, v11

    goto/16 :goto_5

    :cond_7
    if-ne v9, v7, :cond_8

    .line 16
    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v11, :cond_8

    if-le v15, v5, :cond_8

    if-ge v3, v2, :cond_8

    .line 17
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v7

    .line 18
    aget v8, v1, v12

    add-int/2addr v8, v7

    aput v8, v1, v12

    .line 19
    aget v1, v1, v12

    if-lt v1, v10, :cond_6

    .line 20
    iput-object v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_3

    :cond_8
    if-ne v9, v7, :cond_9

    .line 21
    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v11, :cond_9

    if-ge v15, v5, :cond_9

    .line 22
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v12

    .line 23
    aget v8, v1, v10

    add-int/2addr v8, v7

    aput v8, v1, v10

    .line 24
    aget v1, v1, v10

    if-lt v1, v10, :cond_6

    .line 25
    iput-object v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_3

    :cond_9
    const/4 v11, 0x2

    if-ne v9, v11, :cond_b

    .line 26
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v2, :cond_b

    const/16 v5, 0x32

    if-le v15, v5, :cond_b

    .line 27
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    const/4 v5, 0x4

    aput v6, v1, v5

    .line 28
    aget v5, v1, v11

    add-int/2addr v5, v7

    aput v5, v1, v11

    .line 29
    aget v1, v1, v11

    if-lt v1, v10, :cond_a

    .line 30
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_a
    :goto_4
    move-object v1, v2

    goto/16 :goto_5

    :cond_b
    if-ne v9, v11, :cond_c

    .line 31
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v2, :cond_c

    const/16 v5, 0x32

    if-ge v15, v5, :cond_c

    .line 32
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v11

    const/4 v5, 0x4

    .line 33
    aget v8, v1, v5

    add-int/2addr v8, v7

    aput v8, v1, v5

    .line 34
    aget v1, v1, v5

    if-lt v1, v10, :cond_a

    .line 35
    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_4

    :cond_c
    if-ne v9, v7, :cond_e

    .line 36
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v2, :cond_e

    if-le v15, v8, :cond_e

    .line 37
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v12

    .line 38
    aget v2, v1, v7

    add-int/2addr v2, v7

    aput v2, v1, v7

    .line 39
    aget v1, v1, v7

    if-lt v1, v13, :cond_d

    .line 40
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 41
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto/16 :goto_5

    :cond_d
    move-object v1, v14

    goto/16 :goto_5

    :cond_e
    const/16 v2, 0x5dc

    if-ne v9, v7, :cond_10

    .line 42
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v5, :cond_10

    const/16 v5, 0x23

    if-lt v15, v5, :cond_f

    const/16 v5, 0x32

    if-le v4, v5, :cond_10

    if-ge v3, v2, :cond_10

    .line 43
    :cond_f
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v12

    .line 44
    aget v2, v1, v10

    add-int/2addr v2, v7

    aput v2, v1, v10

    .line 45
    aget v1, v1, v10

    if-lt v1, v13, :cond_d

    .line 46
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 47
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto/16 :goto_5

    :cond_10
    if-ne v9, v7, :cond_11

    .line 48
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v5, :cond_11

    if-gt v15, v8, :cond_11

    .line 49
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v7

    .line 50
    aget v2, v1, v12

    add-int/2addr v2, v7

    aput v2, v1, v12

    .line 51
    aget v1, v1, v12

    if-lt v1, v13, :cond_d

    .line 52
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 53
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto/16 :goto_5

    :cond_11
    if-ne v9, v7, :cond_12

    .line 54
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v5, :cond_12

    const/16 v5, 0x23

    if-lt v15, v5, :cond_12

    .line 55
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v7

    .line 56
    aget v2, v1, v12

    add-int/2addr v2, v7

    aput v2, v1, v12

    .line 57
    aget v1, v1, v12

    if-lt v1, v13, :cond_d

    .line 58
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 59
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto/16 :goto_5

    :cond_12
    const/4 v5, 0x2

    if-ne v9, v5, :cond_13

    .line 60
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v8, :cond_13

    const/16 v8, 0x32

    if-le v15, v8, :cond_13

    .line 61
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    const/4 v2, 0x4

    aput v6, v1, v2

    .line 62
    aget v2, v1, v5

    add-int/2addr v2, v7

    aput v2, v1, v5

    .line 63
    aget v1, v1, v5

    if-lt v1, v13, :cond_d

    .line 64
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 65
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto/16 :goto_5

    :cond_13
    if-ne v9, v5, :cond_15

    .line 66
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v8, :cond_15

    const/16 v8, 0x32

    if-lt v15, v8, :cond_14

    const/16 v8, 0x23

    if-le v4, v8, :cond_15

    if-ge v3, v2, :cond_15

    .line 67
    :cond_14
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v5

    const/4 v2, 0x4

    .line 68
    aget v5, v1, v2

    add-int/2addr v5, v7

    aput v5, v1, v2

    .line 69
    aget v1, v1, v2

    if-lt v1, v13, :cond_d

    .line 70
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 71
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto/16 :goto_5

    :cond_15
    if-ne v1, v14, :cond_1a

    if-ne v9, v7, :cond_18

    const/16 v1, 0x5a

    if-le v15, v1, :cond_16

    .line 72
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aget v2, v1, v7

    add-int/2addr v2, v7

    aput v2, v1, v7

    .line 73
    aput v6, v1, v12

    .line 74
    aput v6, v1, v10

    .line 75
    aget v1, v1, v7

    if-lt v1, v12, :cond_d

    .line 76
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 77
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_5

    :cond_16
    const/16 v1, 0x23

    if-le v15, v1, :cond_17

    .line 78
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aget v2, v1, v12

    add-int/2addr v2, v7

    aput v2, v1, v12

    .line 79
    aput v6, v1, v7

    .line 80
    aput v6, v1, v10

    .line 81
    aget v1, v1, v12

    if-lt v1, v12, :cond_d

    .line 82
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 83
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_5

    .line 84
    :cond_17
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aget v2, v1, v10

    add-int/2addr v2, v7

    aput v2, v1, v10

    .line 85
    aput v6, v1, v7

    .line 86
    aput v6, v1, v12

    .line 87
    aget v1, v1, v10

    if-lt v1, v12, :cond_d

    .line 88
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 89
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_5

    :cond_18
    const/4 v2, 0x2

    if-ne v9, v2, :cond_1b

    const/16 v5, 0x32

    if-le v15, v5, :cond_19

    .line 90
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aget v5, v1, v2

    add-int/2addr v5, v7

    aput v5, v1, v2

    const/4 v5, 0x4

    .line 91
    aput v6, v1, v5

    .line 92
    aget v1, v1, v2

    if-lt v1, v12, :cond_d

    .line 93
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 94
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_5

    :cond_19
    const/4 v5, 0x4

    .line 95
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aget v8, v1, v5

    add-int/2addr v8, v7

    aput v8, v1, v5

    .line 96
    aput v6, v1, v2

    .line 97
    aget v1, v1, v5

    if-lt v1, v12, :cond_d

    .line 98
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 99
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_5

    .line 100
    :cond_1a
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    :cond_1b
    :goto_5
    if-nez p9, :cond_1c

    .line 101
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->U:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 102
    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->V:I

    :cond_1c
    if-eqz p9, :cond_27

    if-nez p8, :cond_27

    const/4 v2, 0x4

    if-le v4, v2, :cond_27

    .line 103
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v5, :cond_27

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->B()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->U:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v9, 0x28

    if-ne v2, v8, :cond_1d

    iget v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->V:I

    const/16 v13, 0x10

    if-lt v11, v13, :cond_21

    :cond_1d
    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v11, :cond_1e

    iget v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->V:I

    const/16 v13, 0x1a

    if-lt v11, v13, :cond_21

    :cond_1e
    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v11, :cond_1f

    iget v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->V:I

    if-lt v11, v9, :cond_21

    :cond_1f
    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v11, :cond_20

    iget v11, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->V:I

    const/16 v13, 0x37

    if-lt v11, v13, :cond_21

    :cond_20
    sget-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v2, v11, :cond_27

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->V:I

    const/16 v11, 0x78

    if-ge v2, v11, :cond_27

    .line 104
    :cond_21
    div-int v2, v3, v4

    .line 105
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z:I

    const/16 v11, 0xa

    if-ne v3, v7, :cond_23

    if-ne v1, v8, :cond_23

    const/16 v13, 0x12

    if-le v4, v13, :cond_23

    const/16 v13, 0x3c

    if-ge v2, v13, :cond_23

    .line 106
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v7

    .line 107
    aget v2, v1, v12

    add-int/2addr v2, v7

    aput v2, v1, v12

    .line 108
    aget v1, v1, v12

    if-lt v1, v11, :cond_22

    .line 109
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto/16 :goto_6

    :cond_22
    move-object v1, v5

    goto/16 :goto_6

    :cond_23
    const/4 v13, 0x2

    if-ne v3, v13, :cond_24

    .line 110
    sget-object v14, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v14, :cond_24

    const/16 v14, 0x21

    if-lt v4, v14, :cond_24

    const/16 v14, 0x32

    if-ge v2, v14, :cond_24

    .line 111
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v13

    const/4 v2, 0x4

    .line 112
    aget v3, v1, v2

    add-int/2addr v3, v7

    aput v3, v1, v2

    .line 113
    aget v1, v1, v2

    if-lt v1, v11, :cond_22

    .line 114
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_6

    :cond_24
    if-ne v3, v7, :cond_25

    .line 115
    sget-object v13, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v13, :cond_25

    const/16 v13, 0x2d

    if-le v4, v13, :cond_25

    if-ge v2, v9, :cond_25

    .line 116
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v12

    .line 117
    aget v2, v1, v10

    add-int/2addr v2, v7

    aput v2, v1, v10

    .line 118
    aget v1, v1, v10

    if-lt v1, v11, :cond_22

    .line 119
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_6

    :cond_25
    const/4 v9, 0x2

    if-ne v3, v9, :cond_26

    .line 120
    sget-object v13, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v13, :cond_26

    const/16 v13, 0x23

    if-ge v4, v13, :cond_26

    if-lt v4, v11, :cond_26

    const/16 v13, 0x32

    if-le v2, v13, :cond_26

    .line 121
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    const/4 v2, 0x4

    aput v6, v1, v2

    .line 122
    aget v2, v1, v9

    add-int/2addr v2, v7

    aput v2, v1, v9

    .line 123
    aget v1, v1, v9

    if-lt v1, v11, :cond_22

    .line 124
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_6

    :cond_26
    if-ne v3, v7, :cond_27

    .line 125
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v1, v3, :cond_27

    if-le v4, v10, :cond_27

    const/16 v3, 0x14

    if-ge v4, v3, :cond_27

    const/16 v3, 0x50

    if-le v2, v3, :cond_27

    .line 126
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p:[I

    aput v6, v1, v12

    .line 127
    aget v2, v1, v7

    add-int/2addr v2, v7

    aput v2, v1, v7

    .line 128
    aget v1, v1, v7

    if-lt v1, v11, :cond_22

    move-object v1, v8

    :cond_27
    :goto_6
    if-eqz p9, :cond_28

    .line 129
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->B()Z

    move-result v2

    if-nez v2, :cond_28

    .line 130
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 131
    :cond_28
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isValid()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v2, v3, :cond_29

    move-object v1, v2

    :cond_29
    return-object v1
.end method

.method private v()Z
    .locals 48

    move-object/from16 v8, p0

    .line 1
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    array-length v1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, -0x3c4c0000    # -360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, -0x3c4c0000    # -360.0f

    const/high16 v5, -0x3c4c0000    # -360.0f

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_5

    aget-object v7, v0, v6

    if-nez v7, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v10, v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    cmpl-float v11, v10, v4

    if-lez v11, :cond_1

    move v4, v10

    .line 5
    :cond_1
    iget v10, v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    cmpg-float v11, v10, v2

    if-gez v11, :cond_2

    move v2, v10

    .line 6
    :cond_2
    iget v10, v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    cmpl-float v11, v10, v5

    if-lez v11, :cond_3

    move v5, v10

    .line 7
    :cond_3
    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    cmpg-float v10, v7, v3

    if-gez v10, :cond_4

    move v3, v7

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_5
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v3, v0, v2

    const-string v4, "false"

    const-string v5, "jkyHasGearSensor"

    if-eqz v3, :cond_1f

    .line 9
    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget-object v6, v0, v2

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v6, v6

    aget-object v0, v0, v2

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v10, v0

    invoke-virtual {v3, v6, v7, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v10, v0, v1

    .line 11
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v0, v1

    .line 12
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v0, v2

    .line 13
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v3, v0, v3

    .line 14
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v6, v0, v6

    .line 15
    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v0, v0, v7

    if-eqz v1, :cond_1e

    if-eqz v2, :cond_1e

    if-eqz v3, :cond_1e

    if-eqz v6, :cond_1e

    if-eqz v0, :cond_1e

    const-string v4, "true"

    .line 16
    invoke-static {v5, v4}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v5

    iget v5, v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v5

    invoke-direct {v4, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v7

    iget v7, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v7

    invoke-direct {v5, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 18
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v11, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v11

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v2

    invoke-direct {v7, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v11, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v11

    iget v13, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v13

    invoke-direct {v2, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v7, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    .line 19
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "4-3 : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " , 2-1 : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "GearSensor_Init"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 23
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 24
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    const-wide v17, 0x3fe999999999999aL    # 0.8

    mul-double v13, v13, v17

    const-wide v19, 0x3fc999999999999aL    # 0.2

    mul-double v15, v15, v19

    add-double/2addr v13, v15

    mul-double v4, v4, v17

    mul-double v11, v11, v19

    add-double/2addr v4, v11

    .line 25
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    neg-double v4, v4

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v2, v11

    iput v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->N:F

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    iput v2, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->O:F

    .line 28
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 29
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v4, v1

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr v4, v11

    .line 30
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v0, v0

    sub-double/2addr v0, v11

    mul-double v4, v4, v0

    const-wide/16 v0, 0x0

    const/16 v21, 0x1

    cmpl-double v7, v4, v0

    if-lez v7, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 31
    :goto_2
    iput-boolean v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->A:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    :goto_3
    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    array-length v5, v4

    if-ge v0, v5, :cond_c

    .line 33
    aget-object v4, v4, v0

    if-nez v4, :cond_8

    move-object/from16 v22, v10

    goto/16 :goto_5

    .line 34
    :cond_8
    iget-object v5, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    aget-object v5, v5, v0

    if-nez v5, :cond_9

    .line 35
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    invoke-virtual {v5, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->copyFrom(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v5

    .line 36
    iget-object v7, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    aput-object v5, v7, v0

    .line 37
    :cond_9
    iget v7, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v7

    iget v7, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v7

    invoke-virtual {v2, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 38
    iget-object v12, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->O:F

    float-to-double v13, v7

    iget v7, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->N:F

    move-object/from16 v22, v10

    float-to-double v9, v7

    move-object v11, v2

    move-wide v15, v9

    invoke-virtual/range {v11 .. v16}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 39
    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v7, v9

    iput v7, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    .line 40
    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v7, v9

    iput v7, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 41
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v9, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    float-to-double v9, v9

    iget v11, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    float-to-double v11, v11

    invoke-direct {v7, v9, v10, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 42
    iget-object v10, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v9, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->O:F

    float-to-double v11, v9

    iget v9, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->N:F

    float-to-double v13, v9

    move-object v9, v7

    invoke-virtual/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 43
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v10, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    float-to-double v10, v10

    iget v12, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    float-to-double v12, v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 44
    iget-object v10, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v11, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->O:F

    float-to-double v11, v11

    iget v13, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->N:F

    float-to-double v13, v13

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    invoke-virtual/range {v23 .. v28}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 45
    iget-wide v10, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    .line 46
    iget-wide v10, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v12, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    .line 47
    iget-wide v10, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v12, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    .line 48
    iget-wide v10, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v12, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    double-to-float v7, v9

    iput v7, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    .line 49
    iget v7, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    iput v7, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    .line 50
    iget v7, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    iput v7, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    .line 51
    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    iput v4, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    .line 52
    iget-object v4, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 53
    iget-object v4, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 54
    iget-object v10, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->O:F

    float-to-double v11, v5

    iget v5, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->N:F

    float-to-double v13, v5

    invoke-virtual/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, v22

    goto/16 :goto_3

    :cond_c
    move-object/from16 v22, v10

    const/4 v0, 0x4

    if-le v1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    .line 55
    :goto_6
    iput-boolean v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->R:Z

    move-object/from16 v9, v22

    .line 56
    invoke-virtual {v9, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)F

    move-result v0

    invoke-virtual {v9, v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v3, v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->o:F

    const/high16 v1, 0x41900000    # 18.0f

    .line 57
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->o:F

    const/high16 v1, 0x41600000    # 14.0f

    .line 58
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->o:F

    .line 59
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v0, v1

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v4, v0, v3

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v2, v4

    float-to-double v12, v2

    .line 60
    aget-object v2, v0, v3

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v3, v0, v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    sub-float/2addr v2, v3

    float-to-double v14, v2

    .line 61
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v0, v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v4, v0, v3

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v2, v4

    float-to-double v6, v2

    .line 62
    aget-object v2, v0, v3

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v4, v0, v3

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    sub-float/2addr v2, v4

    float-to-double v4, v2

    .line 63
    aget-object v2, v0, v3

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    aget-object v0, v0, v1

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    sub-float/2addr v2, v0

    float-to-double v2, v2

    const/4 v1, 0x0

    .line 64
    :goto_7
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    array-length v10, v0

    if-ge v1, v10, :cond_1d

    .line 65
    aget-object v10, v0, v1

    if-nez v10, :cond_e

    move v11, v1

    move-wide/from16 v22, v2

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    move-object/from16 v16, v9

    move-wide/from16 v40, v12

    move-wide/from16 v34, v14

    goto/16 :goto_10

    .line 66
    :cond_e
    iget v11, v9, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    move-object/from16 v16, v9

    iget v9, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_f

    iget v9, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->M:F

    goto :goto_8

    :cond_f
    iget v9, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->M:F

    neg-float v9, v9

    :goto_8
    add-float/2addr v11, v9

    .line 67
    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-wide/from16 v32, v4

    iget v4, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    move-wide/from16 v34, v14

    if-ne v1, v4, :cond_11

    .line 68
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->A:Z

    if-eqz v0, :cond_10

    add-double v24, v2, v12

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v22

    mul-double v24, v24, v22

    goto :goto_9

    :cond_10
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v24, v12, v22

    :goto_9
    move-wide/from16 v30, v24

    .line 69
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    new-instance v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v36, v6

    float-to-double v5, v11

    iget v15, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    float-to-double v7, v15

    mul-double v7, v7, v17

    iget v15, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    move-wide/from16 v38, v2

    float-to-double v2, v15

    mul-double v2, v2, v19

    add-double/2addr v7, v2

    invoke-direct {v14, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v3, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v5, v3

    iget v3, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v3, v7

    float-to-double v7, v3

    invoke-direct {v2, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v5, v5

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v7, v7

    invoke-direct {v3, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v4

    move-object/from16 v25, v14

    move-object/from16 v26, v2

    move-object/from16 v27, v9

    move-object/from16 v28, v3

    move-object/from16 v29, v10

    invoke-direct/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    move-wide/from16 v38, v2

    move-wide/from16 v36, v6

    .line 70
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v3, :cond_13

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v30, v36, v4

    move-object/from16 v8, p0

    .line 71
    iget-object v3, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v14, v11

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v0, v0, v9

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    add-float/2addr v6, v0

    float-to-double v7, v6

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v7, v7, v22

    invoke-direct {v5, v14, v15, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v6, v6

    iget v8, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v7, v7

    iget v9, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v14, v9

    invoke-direct {v6, v7, v8, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v28, v6

    move-object/from16 v29, v10

    invoke-direct/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    move-object/from16 v8, p0

    move v3, v1

    move v9, v11

    move-wide/from16 v40, v12

    :cond_12
    :goto_b
    move-wide/from16 v0, v30

    goto/16 :goto_d

    .line 72
    :cond_13
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v4, :cond_14

    add-double v14, v12, v34

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v3

    mul-double v30, v14, v3

    move-object/from16 v8, p0

    .line 73
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v5, v11

    iget v14, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v14, v7

    float-to-double v14, v14

    invoke-direct {v4, v5, v6, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v15, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    move-wide/from16 v40, v12

    float-to-double v12, v15

    iget-object v15, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v9, v15, v9

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v7, v9

    const-wide v42, 0x3fd999999999999aL    # 0.4

    mul-double v7, v7, v42

    iget v9, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    move-wide/from16 v44, v5

    float-to-double v5, v9

    const-wide v46, 0x3fe3333333333333L    # 0.6

    mul-double v5, v5, v46

    add-double/2addr v7, v5

    invoke-direct {v14, v12, v13, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v6, v6

    iget v8, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v14

    move-object/from16 v27, v2

    move-object/from16 v28, v5

    move-object/from16 v29, v10

    invoke-direct/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p0

    .line 74
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    float-to-double v5, v5

    move-wide/from16 v12, v44

    invoke-direct {v4, v12, v13, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v6, v6

    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sget-object v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v12, v12, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v9, v9, v12

    iget v9, v9, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v12, v9

    mul-double v12, v12, v42

    iget v9, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v14, v9

    mul-double v14, v14, v46

    add-double/2addr v12, v14

    invoke-direct {v5, v6, v7, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v12, v7

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v14, v7

    invoke-direct {v6, v12, v13, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    invoke-direct/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v9, v11

    goto/16 :goto_b

    :cond_14
    move-object/from16 v8, p0

    move-wide/from16 v40, v12

    .line 75
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v1, v4, :cond_16

    .line 76
    iget-boolean v4, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->A:Z

    if-eqz v4, :cond_15

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v6, v36, v4

    goto :goto_c

    :cond_15
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v6, v36, v32

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    :goto_c
    move-wide/from16 v30, v6

    .line 77
    aget-object v0, v0, v3

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    iget v3, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v0, v3

    .line 78
    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v12, v11

    float-to-double v14, v3

    move v3, v1

    float-to-double v0, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v22

    const-wide/high16 v42, 0x4008000000000000L    # 3.0

    div-double v0, v0, v42

    add-double/2addr v14, v0

    invoke-direct {v6, v12, v13, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v14, v1

    iget v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    move v9, v11

    move-wide/from16 v44, v12

    float-to-double v11, v1

    invoke-direct {v0, v14, v15, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v7

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v7

    invoke-direct {v1, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v28, v1

    move-object/from16 v29, v10

    invoke-direct/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->A:Z

    if-nez v0, :cond_12

    .line 80
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v0, v0, v1

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    iget v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v0, v1

    .line 81
    iget-object v4, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v11, v1

    float-to-double v0, v0

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double v24, v0, v13

    div-double v24, v24, v42

    add-double v11, v11, v24

    move-wide/from16 v13, v44

    invoke-direct {v6, v13, v14, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v11

    iget v13, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v13

    const-wide v24, 0x3feccccccccccccdL    # 0.9

    mul-double v0, v0, v24

    add-double/2addr v13, v0

    invoke-direct {v7, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v1

    iget v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v1

    invoke-direct {v0, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v2

    move-object/from16 v28, v0

    move-object/from16 v29, v10

    invoke-direct/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_16
    move v3, v1

    move v9, v11

    .line 82
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v1, :cond_17

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v30, v34, v1

    .line 83
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v5, v9

    iget v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    float-to-double v11, v11

    invoke-direct {v4, v5, v6, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v6

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-direct {v5, v11, v12, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v7

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v7

    invoke-direct {v6, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v2

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v0

    move-object/from16 v28, v6

    move-object/from16 v29, v10

    invoke-direct/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 84
    :cond_17
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v1, :cond_19

    .line 85
    iget-boolean v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->A:Z

    if-eqz v1, :cond_18

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v30, v38, v1

    .line 86
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v5, v9

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    float-to-double v11, v7

    invoke-direct {v4, v5, v6, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v6, v6

    iget v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v11, v11

    invoke-direct {v5, v6, v7, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v7

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v7

    invoke-direct {v6, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v2

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v0

    move-object/from16 v28, v6

    move-object/from16 v29, v10

    invoke-direct/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_18
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double v30, v32, v1

    .line 87
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v5, v9

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    float-to-double v11, v7

    invoke-direct {v4, v5, v6, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v6, v6

    iget v11, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-direct {v5, v6, v7, v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v11, v7

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v7

    invoke-direct {v6, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v2

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v0

    move-object/from16 v28, v6

    move-object/from16 v29, v10

    invoke-direct/range {v24 .. v29}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_19
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 88
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gear="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , lineWidth="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 89
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c

    if-eqz v3, :cond_1c

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    .line 90
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->m()F

    move-result v2

    float-to-double v11, v2

    mul-double v11, v11, v6

    add-double/2addr v11, v4

    .line 91
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v30

    .line 92
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->w:Ljava/util/List;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v4, v9

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    float-to-double v6, v6

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v11

    iget v13, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v13

    mul-double v13, v13, v11

    add-double/2addr v6, v13

    invoke-direct {v2, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v5, v5

    iget v7, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v7

    invoke-direct {v4, v5, v6, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v27

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v6, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v6, v6

    iget v13, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v13, v13

    invoke-direct {v5, v6, v7, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v10

    invoke-direct/range {v24 .. v31}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/f;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 93
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 94
    :goto_e
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_1b

    .line 95
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    add-int/lit8 v1, v15, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 96
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 97
    iget v2, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v4

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v5, v5

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v6, v6

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v7, v0

    move-object/from16 v0, p0

    move v1, v9

    move-wide/from16 v22, v38

    move v11, v3

    move v3, v4

    move-wide/from16 v26, v32

    move v4, v5

    move v5, v6

    move-wide/from16 v28, v36

    move v6, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->p(FFFFFFLjava/util/concurrent/atomic/AtomicBoolean;)F

    move-result v0

    add-float/2addr v14, v0

    .line 98
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_f

    :cond_1a
    add-int/lit8 v15, v15, 0x1

    move v3, v11

    move-wide/from16 v38, v22

    move-wide/from16 v32, v26

    move-wide/from16 v36, v28

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    goto :goto_e

    :cond_1b
    move v11, v3

    move-wide/from16 v26, v32

    move-wide/from16 v28, v36

    move-wide/from16 v22, v38

    .line 99
    :goto_f
    iput v14, v10, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6321\u4f4d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u7684\u9762\u79ef:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GearSensor"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1c
    move v11, v3

    move-wide/from16 v26, v32

    move-wide/from16 v28, v36

    move-wide/from16 v22, v38

    :goto_10
    add-int/lit8 v1, v11, 0x1

    move-object/from16 v9, v16

    move-wide/from16 v2, v22

    move-wide/from16 v4, v26

    move-wide/from16 v6, v28

    move-wide/from16 v14, v34

    move-wide/from16 v12, v40

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    goto/16 :goto_7

    :cond_1d
    return v21

    .line 101
    :cond_1e
    invoke-static {v5, v4}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1f
    const/4 v0, 0x0

    .line 102
    invoke-static {v5, v4}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private w(FFF)V
    .locals 4

    .line 1
    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const v0, 0x461c4000    # 10000.0f

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(FF)F

    move-result v2

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p3

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->E:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method

.method private x()Z
    .locals 9

    const/4 v0, 0x7

    new-array v1, v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 1
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    aget-object v4, v1, v2

    .line 3
    invoke-direct {p0, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->y(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    :try_start_0
    const-class v6, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz v5, :cond_0

    .line 7
    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput v6, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    .line 8
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    aput-object v5, v7, v6

    .line 9
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    invoke-virtual {v8, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->copyFrom(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v5

    aput-object v5, v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\u521d\u59cb\u5316\u6321\u4f4d\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v3

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v()Z

    move-result v0

    return v0
.end method

.method private y(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_gear_value_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private z()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->C:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->L:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->x:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->f:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->c:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->e:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->b:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 0

    return-void
.end method

.method public j()Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->f:D

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->c:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->e:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->b:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double v4, v0, v2

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpg-double v8, v0, v6

    if-gez v8, :cond_0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpg-double v2, v4, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->f:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->e:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->d:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const/4 v2, 0x0

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    const-string v0, "\u6ca1\u6709\u59ff\u6001\u4f20\u611f\u5668\uff0c\u4e0d\u80fd\u8fdb\u884c\u59ff\u6001\u6321\u4f4d\u5b66\u4e60"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u59ff\u6001\u4f20\u611f\u5668\uff0c\u4e0d\u80fd\u8fdb\u884c\u59ff\u6001\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v2

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_1

    .line 5
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->D:Z

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    aput-object v2, v0, v1

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->C:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->L:J

    const/4 p1, 0x1

    return p1
.end method

.method public l(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 24

    move-object/from16 v11, p0

    .line 1
    iget-wide v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->f:D

    iget-wide v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->c:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 2
    iget-wide v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->e:D

    iget-wide v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->b:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 3
    iget-wide v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->d:D

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->a:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 4
    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v12, v0

    float-to-double v14, v1

    float-to-double v8, v2

    move-wide v4, v12

    move-wide v6, v14

    move-wide/from16 v16, v8

    invoke-virtual/range {v3 .. v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-boolean v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->T:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    .line 6
    invoke-direct {v11, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->w(FFF)V

    .line 7
    iput-boolean v9, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->T:Z

    .line 8
    iget v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    iput v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->k:F

    .line 9
    iget v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    iput v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->l:F

    .line 10
    iput v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    .line 11
    iput v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    .line 12
    iput v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->j:F

    .line 13
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->E:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 14
    :cond_0
    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    .line 15
    iget-object v4, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->Q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide v5, v12

    move-wide v7, v14

    const/4 v12, 0x0

    move-wide/from16 v9, v16

    invoke-virtual/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->Q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->P:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->O:F

    float-to-double v3, v3

    iget v5, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->N:F

    float-to-double v5, v5

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    invoke-virtual/range {v18 .. v23}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->Q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v3

    .line 18
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v3

    move v14, v0

    move v13, v1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    move v13, v0

    move v14, v1

    .line 19
    :goto_0
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->G:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v15, v0, v1

    if-nez v15, :cond_2

    .line 20
    iget v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    iput v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->k:F

    .line 21
    iget v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    iput v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->l:F

    .line 22
    iput v13, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    .line 23
    iput v14, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    .line 24
    iput v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->j:F

    .line 25
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->E:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 26
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v0, v1

    .line 27
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v0, v0, v2

    const/4 v10, 0x1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 28
    iget v2, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float v2, v13, v2

    .line 29
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 30
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v4, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    cmpl-float v1, v3, v5

    if-lez v1, :cond_3

    .line 31
    iput v10, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z:I

    goto :goto_1

    .line 32
    :cond_3
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v0, v4

    mul-float v2, v2, v0

    cmpl-float v0, v2, v6

    if-lez v0, :cond_4

    cmpl-float v0, v3, v5

    if-lez v0, :cond_4

    const/4 v0, 0x2

    .line 33
    iput v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z:I

    goto :goto_1

    .line 34
    :cond_4
    iput v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z:I

    goto :goto_1

    .line 35
    :cond_5
    iput v12, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->z:I

    .line 36
    :goto_1
    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 37
    iget v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    iget v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    invoke-direct {v11, v13, v14, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s(FFFF)F

    move-result v0

    .line 38
    iget v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    iget v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    iget v3, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->k:F

    iget v4, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->l:F

    invoke-direct {v11, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s(FFFF)F

    move-result v1

    .line 39
    iget-boolean v2, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->R:Z

    if-eqz v2, :cond_6

    .line 40
    iget v7, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    iget v8, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v13

    move v6, v14

    move-object v14, v9

    move/from16 v9, p5

    const/4 v12, 0x1

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->q(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;FFFFII)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    :goto_2
    move-object v12, v14

    goto/16 :goto_3

    :cond_6
    move-object v10, v9

    const/4 v12, 0x1

    if-nez v2, :cond_7

    .line 41
    iget v7, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    iget v8, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v13

    move v6, v14

    move/from16 v9, p5

    move-object v14, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->r(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;FFFFII)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    goto :goto_2

    .line 42
    :cond_7
    iget v7, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->h:F

    add-float v2, v13, v7

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    .line 43
    iget v8, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->i:F

    add-float v4, v14, v8

    mul-float v4, v4, v3

    .line 44
    iget v5, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->k:F

    sub-float v5, v7, v5

    .line 45
    iget v6, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->l:F

    sub-float v6, v8, v6

    mul-float v0, v0, v3

    mul-float v5, v5, v0

    div-float/2addr v5, v1

    add-float/2addr v5, v7

    mul-float v0, v0, v6

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    mul-float v2, v2, v3

    mul-float v5, v5, v3

    add-float v17, v2, v5

    mul-float v4, v4, v3

    mul-float v0, v0, v3

    add-float v18, v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v9, p5

    move-object v12, v10

    move/from16 v10, p6

    .line 46
    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->q(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;FFFFII)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move v5, v13

    move v6, v14

    move/from16 v7, v17

    move/from16 v8, v18

    .line 47
    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->q(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;FFFFII)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    :goto_3
    if-eq v0, v12, :cond_a

    const/4 v9, 0x0

    .line 48
    :goto_4
    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->r:[I

    array-length v2, v1

    if-ge v9, v2, :cond_9

    .line 49
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v2, v9, :cond_8

    .line 50
    aget v2, v1, v9

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v1, v9

    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 51
    aput v2, v1, v9

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 52
    :cond_9
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ge v1, v2, :cond_a

    .line 53
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 54
    :cond_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_b

    iget v2, v15, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v13, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 55
    :cond_b
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->x:Z

    .line 57
    :cond_c
    iget-boolean v1, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->x:Z

    if-nez v1, :cond_d

    .line 58
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->E:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0

    .line 59
    :cond_d
    iput-object v0, v11, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->E:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->D:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_4

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->f:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->c:D

    sub-double/2addr v2, v4

    double-to-float v0, v2

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 3
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->e:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->b:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 4
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->d:D

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->a:D

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    .line 5
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v1, v4, v1

    .line 6
    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(FF)F

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const-string v0, "\u89d2\u5ea6\u504f\u5dee\u592a\u5927\uff0c\u8bf7\u91cd\u65b0\u8fdb\u884c\u6321\u4f4d\u5b66\u4e60"

    return-object v0

    .line 7
    :cond_0
    iget v4, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v0, v4

    float-to-double v4, v0

    .line 8
    iget v0, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v2, v0

    float-to-double v6, v2

    .line 9
    iget v0, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->yaw:F

    sub-float/2addr v3, v0

    float-to-double v0, v3

    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    array-length v8, v3

    if-ge v2, v8, :cond_3

    .line 11
    aget-object v3, v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v8, v8

    add-double/2addr v8, v4

    double-to-float v8, v8

    iput v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    .line 13
    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    float-to-double v8, v8

    add-double/2addr v8, v4

    double-to-float v8, v8

    iput v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    .line 14
    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    float-to-double v8, v8

    add-double/2addr v8, v4

    double-to-float v8, v8

    iput v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    .line 15
    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v8, v8

    add-double/2addr v8, v6

    double-to-float v8, v8

    iput v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 16
    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    float-to-double v8, v8

    add-double/2addr v8, v6

    double-to-float v8, v8

    iput v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    .line 17
    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    float-to-double v8, v8

    add-double/2addr v8, v6

    double-to-float v8, v8

    iput v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    .line 18
    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->yaw:F

    float-to-double v8, v8

    add-double/2addr v8, v0

    double-to-float v8, v8

    iput v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->yaw:F

    .line 19
    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minYaw:F

    float-to-double v8, v8

    add-double/2addr v8, v0

    double-to-float v8, v8

    iput v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minYaw:F

    .line 20
    iget v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxYaw:F

    float-to-double v8, v8

    add-double/2addr v8, v0

    double-to-float v8, v8

    iput v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxYaw:F

    .line 21
    iget-object v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v8}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 22
    iget-object v8, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    invoke-virtual {v9, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    .line 24
    :cond_2
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v8

    invoke-direct {p0, v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->y(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->v()Z

    const-string v0, "\u6821\u51c6\u6210\u529f"

    return-object v0

    :cond_4
    const-string v0, "\u8bf7\u5148\u8fdb\u884c\u6321\u4f4d\u5b66\u4e60"

    return-object v0
.end method

.method public o(DDDDDD)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->u()Z

    move-wide/from16 v2, p1

    .line 2
    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->c:D

    move-wide/from16 v4, p3

    .line 3
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->b:D

    move-wide/from16 v6, p5

    .line 4
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->a:D

    move-wide/from16 v8, p7

    .line 5
    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->f:D

    move-wide/from16 v10, p9

    .line 6
    iput-wide v10, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->e:D

    move-wide/from16 v12, p11

    .line 7
    iput-wide v12, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->d:D

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->C:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz v1, :cond_9

    .line 9
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->f:D

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->c:D

    sub-double/2addr v14, v2

    double-to-float v2, v14

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 10
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->e:D

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->b:D

    sub-double/2addr v14, v3

    double-to-float v3, v14

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    .line 11
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->d:D

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->a:D

    sub-double/2addr v4, v14

    double-to-float v4, v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    .line 12
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v14, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v5, v5, v14

    if-nez v5, :cond_0

    .line 13
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    .line 14
    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v15, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aput-object v5, v14, v15

    .line 15
    :cond_0
    iget-object v14, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-nez v14, :cond_1

    .line 16
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    :cond_1
    float-to-double v14, v2

    .line 17
    invoke-direct {v0, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v3

    invoke-direct {v0, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B(D)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v10, v4

    invoke-direct {v0, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B(D)D

    move-result-wide v10

    double-to-float v4, v10

    invoke-virtual {v5, v6, v9, v4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->set(FFF)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 18
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B(D)D

    move-result-wide v9

    invoke-direct {v0, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B(D)D

    move-result-wide v6

    invoke-direct {v4, v9, v10, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 19
    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, ","

    const-string v8, "\u63d2\u5165:"

    const/4 v9, 0x1

    if-nez v6, :cond_2

    .line 20
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v10, v14

    if-lez v6, :cond_4

    .line 23
    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_3

    .line 24
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_3
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 27
    :cond_4
    :goto_1
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v1, v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->L:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long v10, v5, v7

    if-lez v10, :cond_8

    .line 28
    :cond_5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->F:[Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    aget-object v5, v5, v6

    if-eq v1, v4, :cond_6

    if-eqz v5, :cond_7

    .line 29
    invoke-virtual {v5, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(FF)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    :cond_6
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->m:F

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->n:F

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->s(FFFF)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fd3333333333333L    # 0.3

    cmpg-double v8, v4, v6

    if-gez v8, :cond_7

    .line 30
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B:I

    add-int/2addr v4, v9

    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B:I

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 31
    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B:I

    .line 32
    :goto_2
    iget v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->B:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_8

    .line 33
    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->A(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 34
    :cond_8
    iput v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->m:F

    .line 35
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->n:F

    .line 36
    :cond_9
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->I:Z

    if-eqz v1, :cond_b

    .line 37
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->J:Z

    if-nez v1, :cond_d

    .line 38
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->K:Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;

    if-nez v1, :cond_a

    .line 39
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->K:Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;

    .line 40
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->h()V

    .line 41
    :cond_a
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->K:Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-virtual/range {v1 .. v13}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->g(DDDDDD)V

    goto :goto_3

    .line 42
    :cond_b
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->K:Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;

    if-eqz v1, :cond_c

    .line 43
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->i()V

    :cond_c
    const/4 v1, 0x0

    .line 44
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->K:Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;

    :cond_d
    :goto_3
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->C:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->A(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method public u()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->H:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->y:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->t:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->H:Z

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->m()F

    move-result v2

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->M:F

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->x()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->y:Z

    return v0
.end method
