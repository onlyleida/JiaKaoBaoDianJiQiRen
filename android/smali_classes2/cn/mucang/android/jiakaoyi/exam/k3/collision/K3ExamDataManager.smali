.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected carDataHandler:Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

.field private final examSiteId:J

.field private volatile k3Data:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

.field private final onLoadFinish:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->onLoadFinish:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->examSiteId:J

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->init()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->onDataLoad()V

    return-void
.end method

.method private synthetic b()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->examSiteId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->loadData(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->k3Data:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    .line 5
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->examSiteId:J

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->f(J)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v0, v1, v3}, Lcn/mucang/jiakaoyi/uilib/rtmc/h;->k(JI)Z

    .line 6
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/b;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private init()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/a;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onDataLoad()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->k3Data:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->k3Data:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->hasData:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->carDataHandler:Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->g()V

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->k3Data:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->getCarData()Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->k3Data:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;->getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/car/CarData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->carDataHandler:Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->f()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->k3Data:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/a/b;->b(Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->onLoadFinish:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->b()V

    return-void
.end method

.method public getK3Data()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->k3Data:Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3Data;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;->carDataHandler:Lcn/mucang/android/jiakaoyi/mapcollect/c/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/c/i;->g()V

    :cond_0
    return-void
.end method
