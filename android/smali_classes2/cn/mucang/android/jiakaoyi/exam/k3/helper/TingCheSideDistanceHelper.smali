.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public distance:D

.field private errorCount:I

.field public sideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->distance:D

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->sideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    return-void
.end method


# virtual methods
.method public calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)D
    .locals 4

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;

    const/4 v1, 0x1

    :try_start_0
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->errorCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->sideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    invoke-virtual {v2, p1, p2, p3, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->distance:D

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u53f3\u8fb9\u8ddd\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->distance:D

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n(D)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "cm"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->distance:D

    double-to-float p3, v2

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;-><init>(F)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->b()F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->distance:D

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->distance:D

    double-to-float p3, v2

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;-><init>(F)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->errorCount:I

    add-int/2addr p2, v1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->errorCount:I

    if-ne p2, v1, :cond_1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8fb9\u8ddd\u8ba1\u7b97\u51fa\u9519 : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    :cond_1
    :goto_0
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->distance:D

    return-wide p1
.end method
