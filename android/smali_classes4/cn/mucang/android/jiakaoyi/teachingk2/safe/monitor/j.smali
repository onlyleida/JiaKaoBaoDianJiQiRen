.class Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

.field public c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->d:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e:Ljava/util/LinkedList;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->f:Ljava/util/LinkedList;

    return-void
.end method

.method private a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;
    .locals 1

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isBrakedByRadar()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isBrakedByCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isBrakedBySpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->HardwareSpeed:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isDrivingOpenDoor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Door:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->isDrivingOpenBelt()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Belt:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->Radar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_5

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    :cond_5
    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e:Ljava/util/LinkedList;

    const-string v1, "\u8f66\u8f86\u4fe1\u53f7:"

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->d:Ljava/util/LinkedList;

    const-string v2, "GPS\u4fe1\u53f7:"

    invoke-direct {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->f:Ljava/util/LinkedList;

    const-string v3, "\u96f7\u8fbe\u4fe1\u53f7:"

    invoke-direct {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->f:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private e(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "\n"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method c(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e:Ljava/util/LinkedList;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->d:Ljava/util/LinkedList;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 9
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    :goto_1
    const-string v1, "-"

    const-string v2, ":"

    if-eqz v0, :cond_3

    .line 10
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->BRAKE_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-eq v0, v3, :cond_3

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->a:J

    .line 12
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5239\u8f66\u524d\u6570\u636e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getZhTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->id:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->zhSrc:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-ne v0, v3, :cond_4

    if-eqz v0, :cond_4

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->BRAKE_SOURCE_NONE:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-eq v0, v3, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->a:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->e:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->f:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 16
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6301\u7eed\u5239\u8f66\u8bb0\u5f55:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getZhTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->id:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->zhSrc:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->b(Ljava/lang/String;)V

    .line 18
    :cond_4
    :goto_2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/j;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    return-void
.end method
