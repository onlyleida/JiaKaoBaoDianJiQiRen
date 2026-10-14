.class public Lcn/mucang/android/jiakaoyi/signal/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Z

.field private final b:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

.field private c:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->a:Z

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->b:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->c:I

    return-void
.end method

.method private b(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object v0

    .line 2
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;->getActionCode()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    .line 4
    :cond_0
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;->getHandType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    .line 6
    :cond_1
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;

    if-eqz v1, :cond_2

    .line 7
    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;->getEmotion()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    .line 8
    :cond_2
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;

    if-eqz v1, :cond_3

    .line 9
    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;->getHeadPose()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    .line 10
    :cond_3
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIErrorModel;

    if-eqz v1, :cond_4

    .line 11
    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/ai/AIErrorModel;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/ai/AIErrorModel;->errorCode:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->e:I

    .line 12
    :cond_4
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIModuleResult;

    if-eqz v1, :cond_5

    .line 13
    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/ai/AIModuleResult;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/ai/AIModuleResult;->module:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->f:I

    .line 14
    :cond_5
    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    if-eqz v1, :cond_6

    .line 15
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->g:Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    .line 16
    :cond_6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    const/4 p2, 0x1

    iput-byte p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    return p2
.end method

.method private c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/d/a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/d/f;Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->v(Lcn/mucang/android/jiakaoyi/signal/c/d$a;Z)V

    return-void
.end method

.method private synthetic d(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/f;->b(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z

    move-result p1

    return p1
.end method

.method private h(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v0

    const/16 v1, 0xa0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaVerResult;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaVerResult;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4
    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;-><init>(ILjava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    if-eq v0, v3, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    goto/16 :goto_0

    .line 7
    :cond_4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIErrorModel;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIErrorModel;-><init>(I)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto :goto_0

    .line 15
    :cond_8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7c7b\u578b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dispatchHandler\u5f02\u5e38"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AISignalHandler"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private i(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_b

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_a

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_9

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_8

    const/16 v0, 0xab

    if-eq p1, v0, :cond_7

    const/16 v0, 0xad

    if-eq p1, v0, :cond_6

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_4

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIErrorModel;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIErrorModel;-><init>(I)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto/16 :goto_2

    .line 2
    :pswitch_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIModuleResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIModuleResult;-><init>(I)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto/16 :goto_2

    .line 3
    :pswitch_2
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDMSResult;-><init>(I)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto/16 :goto_2

    .line 4
    :pswitch_3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIDriveActionResult;-><init>(I)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto/16 :goto_2

    .line 5
    :pswitch_4
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIHeadPoseResult;-><init>(I)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto/16 :goto_2

    .line 6
    :pswitch_5
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceResult;-><init>(I)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto/16 :goto_2

    .line 7
    :pswitch_6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    .line 8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result v0

    .line 9
    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->g(I)[B

    move-result-object p2

    .line 10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 11
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;

    invoke-direct {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;-><init>(ILjava/lang/String;)V

    .line 12
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->a:Z

    if-nez p1, :cond_1

    iget p1, p2, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->msg:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->a:Z

    .line 13
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->a:Z

    if-eqz p1, :cond_2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    :cond_2
    const-class p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 16
    :cond_3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;-><init>(I)V

    .line 17
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/b;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/b;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 19
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_5
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v0

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p2

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/AISitPoseResult;-><init>(II)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/f;->c(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;)V

    goto :goto_2

    .line 21
    :cond_6
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/e;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/ai/e;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/e;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_2

    .line 22
    :cond_7
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/d;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/ai/d;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/d;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_2

    .line 23
    :cond_8
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/ai/f;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/f;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_2

    .line 24
    :cond_9
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/g;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/ai/g;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/g;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_2

    .line 25
    :cond_a
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/c;

    invoke-direct {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/ai/c;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 26
    const-class p1, Lcn/mucang/android/jiakaoyi/signal/ai/c;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_2

    .line 27
    :cond_b
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result p1

    .line 28
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->b:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->f(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xb0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, "\u6ca1\u6709\u8bbe\u7f6e\u7248\u672c"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/f;->i(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/f;->h(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    :goto_0
    return-void
.end method

.method public synthetic e(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/d/f;->d(Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->a:Z

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/f;->c:I

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->c(I)V

    return-void
.end method
