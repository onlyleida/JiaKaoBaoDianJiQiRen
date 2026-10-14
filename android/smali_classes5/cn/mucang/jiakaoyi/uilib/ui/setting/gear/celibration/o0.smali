.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public h:Z

.field private volatile i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field private final j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private final n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->a:D

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b:D

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->c:D

    .line 3
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->d:D

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->e:D

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->f:D

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->h:Z

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 7
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->j:Ljava/util/LinkedList;

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    .line 10
    iput-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->m:Z

    .line 11
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v0, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method

.method private p(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0xe

    if-le p1, v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->d(Ljava/util/List;Ljava/lang/Double;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private q(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;-><init>(Ljava/util/List;)V

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/k/d;->e(D)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private s()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3
    iput v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 4
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v4, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v2, "jkyHasGearSensor"

    if-eqz v1, :cond_5

    .line 5
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v4, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v4, v4

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v6, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v1, "true"

    .line 6
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 8
    :goto_1
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 9
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 10
    :cond_3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->copyFrom(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v3

    .line 11
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    float-to-double v4, v4

    iget v6, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    float-to-double v6, v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v4

    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    .line 14
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v4, v4

    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 15
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    float-to-double v5, v5

    iget v7, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    float-to-double v7, v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 16
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v6, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    float-to-double v6, v6

    iget v8, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 17
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    .line 18
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    .line 19
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    .line 20
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    .line 21
    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    .line 22
    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    .line 23
    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    iput v4, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    .line 24
    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->src:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521d\u59cb\u5316"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6863"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v0, "Bream\u521d\u59cb\u5316\u5b8c\u6210"

    .line 26
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_5
    const-string v1, "false"

    .line 27
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private t()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "hardware_bream_gear_data"

    const-string v2, ""

    .line 3
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 5
    :cond_0
    const-class v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "bream\u6863\u4f4d\u5b66\u4e60\u6570\u636e\u4e3a\u7a7a"

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0

    .line 8
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6863\u4f4d\u6570\u636e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->s()Z

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bream\u521d\u59cb\u5316\u6321\u4f4d\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0
.end method

.method private u()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    return-void
.end method

.method private w(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    int-to-double p1, p1

    div-double/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->h:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u5b58\u786c\u4ef6\u6321\u4f4d\u6570\u636e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v0, "hardware_bream_gear_data"

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->t()Z

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;
    .locals 5
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 3
    iget v3, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v4, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    const-string v0, "hardware_bream_gear_data"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    const-class v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u672c\u5730\u786c\u4ef6bream\u6863\u4f4d\u5b66\u4e60\u6570\u636e\u4e3a\u7a7a"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 4
    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->src:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-ne v1, v2, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hardware_bream_gear_data"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->t()Z

    return-void
.end method

.method public j()Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->f:D

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->c:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->e:D

    iget-wide v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double v4, v0, v2

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpg-double v8, v0, v6

    if-gez v8, :cond_0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    const-wide v0, 0x4051800000000000L    # 70.0

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
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->f:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->e:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->d:D

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
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 5
    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-le v1, v0, :cond_3

    const-string p1, "\u540c\u4e00\u4e2a\u6863\u4f4d\u53ea\u80fd\u5b66\u4e60\u4e00\u6b21\uff0c\u8bf7\u5148\u5220\u9664\u518d\u5f00\u59cb\u5b66\u4e60"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return v2

    .line 7
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;-><init>()V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 9
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput p1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    .line 10
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->f:D

    iget-wide v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->c:D

    sub-double/2addr v1, v3

    double-to-float p1, v1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 11
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->e:D

    iget-wide v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b:D

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 12
    iget-wide v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->d:D

    iget-wide v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->a:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 13
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    float-to-double v4, p1

    invoke-direct {p0, v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->w(D)D

    move-result-wide v4

    double-to-float p1, v4

    float-to-double v4, v1

    invoke-direct {p0, v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->w(D)D

    move-result-wide v4

    double-to-float v1, v4

    float-to-double v4, v2

    invoke-direct {p0, v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->w(D)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v3, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->set(FFF)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const-string p1, "\u5f00\u59cb\u5b66\u4e60\u6863\u4f4d\uff0c\u6e05\u7a7a\u6863\u4f4d\u504f\u79fb\u53c2\u6570"

    .line 15
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0
.end method

.method public l(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 7

    .line 1
    iget-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->f:D

    iget-wide p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->c:D

    sub-double/2addr p1, p5

    double-to-float p1, p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 2
    iget-wide p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->e:D

    iget-wide p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b:D

    sub-double/2addr p2, p5

    double-to-float p2, p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    .line 3
    iget-wide p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->d:D

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->a:D

    sub-double/2addr p5, v0

    double-to-float p3, p5

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p3

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v1, p1

    float-to-double v3, p2

    float-to-double v5, p3

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object p4
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o(DDDDDD)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->r()Z

    .line 2
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->c:D

    .line 3
    iput-wide p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b:D

    .line 4
    iput-wide p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->a:D

    .line 5
    iput-wide p7, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->f:D

    .line 6
    iput-wide p9, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->e:D

    .line 7
    iput-wide p11, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->d:D

    sub-double/2addr p7, p1

    double-to-float p1, p7

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 9
    iget-wide p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->e:D

    iget-wide p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b:D

    sub-double/2addr p2, p4

    double-to-float p2, p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    .line 10
    iget-wide p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->d:D

    iget-wide p5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->a:D

    sub-double/2addr p3, p5

    double-to-float p3, p3

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p3

    .line 11
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double p11, p1

    float-to-double p1, p2

    float-to-double p9, p3

    move-wide p5, p11

    move-wide p7, p1

    invoke-virtual/range {p4 .. p10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DDD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->c()F

    move-result p3

    .line 13
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->j:Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->size()I

    move-result p4

    const/4 p5, 0x1

    if-le p4, p5, :cond_0

    .line 14
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->j:Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    cmpl-float p4, p4, p3

    if-eqz p4, :cond_1

    .line 15
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->j:Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->j:Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 17
    :cond_1
    :goto_0
    iget-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->j:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    const/4 p4, 0x3

    if-le p3, p4, :cond_2

    .line 18
    iget-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->j:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 19
    :cond_2
    iget-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-eqz p3, :cond_5

    .line 20
    iget-object p4, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-nez p4, :cond_3

    .line 21
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    .line 22
    :cond_3
    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p11, p12}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->w(D)D

    move-result-wide p6

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->w(D)D

    move-result-wide p1

    invoke-direct {p4, p6, p7, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 23
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, ","

    const-string p6, "\u6863\u63d2\u5165:"

    if-nez p1, :cond_4

    .line 24
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p5, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 26
    :cond_4
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p7

    sub-int/2addr p7, p5

    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p4, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p7

    const-wide/high16 p9, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p7, p9

    if-lez p1, :cond_5

    .line 27
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p5, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public r()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->m:Z

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->t()Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->v(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    return-void
.end method

.method public v(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->u()V

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u505c\u6b62\u6321\u4f4d\u5b66\u4e60:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->u()V

    .line 5
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5b66\u4e60\u65f6\uff0c\u6ca1\u6709\u8f68\u8ff9\u6570\u636e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    if-nez v1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5b66\u4e60\u65f6\uff0c\u6c42\u8f68\u8ff9\u51f8\u5305\u591a\u8fb9\u5f62\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string p1, "\u6863\u4f4d\u5b66\u4e60\u5931\u8d25"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_3

    .line 11
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->p(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    .line 12
    :cond_3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hardware_bream_gear_data"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->t()Z

    return-void
.end method
