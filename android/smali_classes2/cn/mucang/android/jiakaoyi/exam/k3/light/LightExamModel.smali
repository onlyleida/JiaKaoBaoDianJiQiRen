.class public Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX_ORDER:I = 0x14

.field public static final TYPE_END:I = 0x14

.field public static final TYPE_ORDINARY:I = 0xa

.field public static final TYPE_START:I = 0x1


# instance fields
.field public configId:I

.field public deductId:I

.field public desc:Ljava/lang/String;

.field public examProgramId:I

.field public examSiteId:J

.field private flashConfigValue:I

.field public icon:Ljava/lang/String;

.field public isEnd:Z

.field public isFinish:Z

.field public isPlaying:Z

.field public isStart:Z

.field private lastFrameTime:J

.field private leftTime:J

.field public lightCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lightCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;"
        }
    .end annotation
.end field

.field public needOrder:Z

.field public notAllowed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;"
        }
    .end annotation
.end field

.field private openLightCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private orderIndex:I

.field public playOrder:I

.field private rightTime:J

.field public standard:Ljava/lang/String;

.field public startWaitTime:J

.field public tag:I

.field public turnLeftTime:J

.field public turnRightTime:J

.field public type:I

.field public voiceCode:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount:Ljava/util/Map;

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount:Ljava/util/Map;

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->orderIndex:I

    .line 8
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->leftTime:J

    const-wide/16 v3, -0x1

    .line 9
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnLeftTime:J

    .line 10
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->rightTime:J

    .line 11
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnRightTime:J

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isPlaying:Z

    .line 13
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lastFrameTime:J

    .line 14
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart:Z

    .line 15
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isEnd:Z

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 16
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 17
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(IIZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    .line 21
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    .line 22
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount:Ljava/util/Map;

    .line 23
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount:Ljava/util/Map;

    .line 24
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->orderIndex:I

    .line 25
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->leftTime:J

    const-wide/16 v3, -0x1

    .line 26
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnLeftTime:J

    .line 27
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->rightTime:J

    .line 28
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnRightTime:J

    .line 29
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isPlaying:Z

    .line 30
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lastFrameTime:J

    .line 31
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart:Z

    .line 32
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isEnd:Z

    .line 33
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    .line 34
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    .line 35
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    .line 36
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    .line 38
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    .line 39
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->needOrder:Z

    return-void
.end method

.method private isFlashLight()Z
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "farLightCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ; flashConfigValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->flashConfigValue:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->flashConfigValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeTag"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->flashConfigValue:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z
    .locals 0

    .line 1
    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    return p1
.end method

.method private lastIsLight(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

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

.method private setLight(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public allLightOn()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 2
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLight(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public calculateOrder()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->needOrder:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->orderIndex:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->orderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLight(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    :cond_2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->orderIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->orderIndex:I

    goto :goto_0

    .line 7
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method public checkWrongOrderLight()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->needOrder:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->orderIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 4
    invoke-virtual {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLight(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v3, v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->configId:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->configId:I

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    .line 6
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examSiteId:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examSiteId:J

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->icon:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    .line 9
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->needOrder:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->needOrder:Z

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    .line 11
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    .line 12
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->voiceCode:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->voiceCode:I

    .line 13
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    .line 14
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->type:I

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    return-object v0
.end method

.method public getLog()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deductId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",desc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",examProgramId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",lights"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",notAllowed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",playOrder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",standard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowImageRes()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->iconRes:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->iconRes:I

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget v0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->iconRes:I

    return v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->iconRes:I

    return v0

    .line 9
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget v0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->iconRes:I

    return v0

    .line 11
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->iconRes:I

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->iconRes:I

    :cond_5
    return v0
.end method

.method public isFinish()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->needOrder:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->orderIndex:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->allLightOn()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isEnd:Z

    return v0
.end method

.method public isLight(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFlashLight()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lastIsLight(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOffLight()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialLight()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart:Z

    return v0
.end method

.method public lightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public mapAllLights(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v4

    .line 3
    invoke-virtual {p0, v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mapLight(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-direct {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->setLight(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)V

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-direct {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->setLight(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->setLight(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public openLightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->leftTime:J

    const-wide/16 v2, -0x1

    .line 2
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnLeftTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->rightTime:J

    .line 4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnRightTime:J

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->orderIndex:I

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 8
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lastFrameTime:J

    .line 10
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    .line 11
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lastIsLight(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->leftTime:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->leftTime:J

    :cond_2
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    .line 7
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->leftTime:J

    :cond_3
    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    .line 8
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->leftTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->leftTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnLeftTime:J

    .line 10
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_5

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->rightTime:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_5

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->rightTime:J

    :cond_5
    if-ne p1, v0, :cond_6

    if-nez p2, :cond_6

    .line 12
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->rightTime:J

    :cond_6
    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_7

    .line 13
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->rightTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_7

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->rightTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnRightTime:J

    .line 15
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lightCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFlashConfigValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->flashConfigValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLightsState(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 12

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    .line 2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lastFrameTime:J

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 4
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 6
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 7
    :goto_1
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 8
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 9
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v7, v8, :cond_5

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v8

    .line 11
    array-length v9, v8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 12
    invoke-direct {p0, v0, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v8, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x1

    .line 13
    :goto_4
    invoke-virtual {p0, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_7

    .line 14
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v7, v8, :cond_6

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v7, v8, :cond_6

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v7, v8, :cond_7

    .line 15
    :cond_6
    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-direct {p0, v0, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    .line 16
    invoke-virtual {p0, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V

    .line 17
    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-direct {p0, v0, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    .line 18
    invoke-virtual {p0, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V

    goto :goto_2

    .line 19
    :cond_7
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v7, v8, :cond_e

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v7, v9, :cond_8

    goto :goto_8

    .line 20
    :cond_8
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v7, v8, :cond_a

    sget-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v7, v9, :cond_9

    goto :goto_5

    .line 21
    :cond_9
    invoke-direct {p0, v0, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    .line 22
    invoke-virtual {p0, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v4, :cond_d

    .line 23
    invoke-direct {p0, v0, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    if-nez v8, :cond_c

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 24
    invoke-direct {p0, v0, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v8, 0x1

    .line 25
    :goto_7
    invoke-virtual {p0, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V

    goto :goto_2

    .line 26
    :cond_d
    invoke-direct {p0, v0, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    .line 27
    invoke-virtual {p0, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V

    goto/16 :goto_2

    :cond_e
    :goto_8
    if-eqz v1, :cond_11

    .line 28
    invoke-direct {p0, v0, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    if-nez v8, :cond_10

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 29
    invoke-direct {p0, v0, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_9

    :cond_f
    const/4 v8, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v8, 0x1

    .line 30
    :goto_a
    invoke-virtual {p0, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V

    goto/16 :goto_2

    .line 31
    :cond_11
    invoke-direct {p0, v0, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLightOn(ILcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v8

    .line 32
    invoke-virtual {p0, v7, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->set(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;Z)V

    goto/16 :goto_2

    .line 33
    :cond_12
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lastFrameTime:J

    return-void
.end method

.method public updateOpenLightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lastFrameTime:J

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object p1

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 5
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
