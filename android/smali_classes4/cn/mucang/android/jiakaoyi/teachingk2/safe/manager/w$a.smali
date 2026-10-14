.class Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;J)J

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->isByApp()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    .line 8
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-ne p1, v0, :cond_4

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string p1, "\u62e5\u5835\u5239\u8f66:\u5df2\u7ecf\u89e3\u5239\uff0c\u5f00\u59cb\u68c0\u6d4b"

    .line 11
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v3, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v1, v3

    if-ltz v0, :cond_4

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/n;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/w$a;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method
