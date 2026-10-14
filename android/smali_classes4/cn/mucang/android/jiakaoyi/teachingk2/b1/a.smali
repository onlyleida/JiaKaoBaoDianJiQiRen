.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 7

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v0
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;-><init>()V

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->pitch:D

    double-to-float v2, v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;->pitch:F

    .line 5
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    double-to-float v2, v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;->yaw:F

    .line 6
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/a;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;->position:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    double-to-int p0, v2

    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;->length:I

    .line 8
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    double-to-int p0, v2

    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;->width:I

    .line 9
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarPoseModel;->wheelRightBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;-><init>()V

    .line 2
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->gear:I

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v3, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    if-eqz v2, :cond_2

    .line 6
    iget v8, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->I:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    iput v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->clutch:F

    goto :goto_2

    .line 7
    :cond_2
    iget-boolean v8, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz v8, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    iput v8, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->clutch:F

    :goto_2
    if-eqz v2, :cond_4

    .line 8
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->H:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->footbrake:F

    goto :goto_4

    .line 9
    :cond_4
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    iput v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->footbrake:F

    .line 10
    :goto_4
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    xor-int/2addr v2, v4

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->handbrake:Z

    .line 11
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    const/16 v5, 0x1e

    if-le v2, v5, :cond_6

    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->power:Z

    .line 12
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->accelerator:F

    .line 13
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->seatBelt:Z

    .line 14
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->doorState:Z

    .line 15
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->horn:Z

    .line 16
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->speed:F

    .line 17
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    int-to-float v2, v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->wheelAngle:F

    .line 18
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->lightsState:I

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS \u7c7b\u578b\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u536b\u661f\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/error/GlobalChecker;->d()Lcn/mucang/android/jiakaoyi/unity/b;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/unity/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->debugInfo:Ljava/lang/String;

    .line 21
    iget-boolean p0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->n:Z

    iput-boolean p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->wiper:Z

    .line 22
    iget p0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iput p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->rpm:I

    .line 23
    iget-object p0, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->isStart()Z

    move-result p0

    iput-boolean p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CarStateModel;->key:Z

    return-object v0
.end method
