.class Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->time:I

    add-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->time:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->s()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->phoneState:I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->r()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->phoneTime:I

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "HH:mm"

    invoke-static {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->d(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->date:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e()Z

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->netType:I

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->gpsType:I

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->E()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_abnormal:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->videoStatus:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_normal:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->videoStatus:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->videoStatus:Ljava/lang/String;

    .line 11
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->satelliteCount:I

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/u;->a()Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->brakeSystem:Z

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->c()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;->rainMode:I

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;)V

    .line 15
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/e0;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
