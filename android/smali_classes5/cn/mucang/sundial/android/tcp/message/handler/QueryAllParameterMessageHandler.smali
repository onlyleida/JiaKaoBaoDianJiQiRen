.class public Lcn/mucang/sundial/android/tcp/message/handler/QueryAllParameterMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/receive/QueryAllParameterRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/receive/QueryAllParameterRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/QueryAllParameterMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/QueryAllParameterRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/QueryAllParameterRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 12

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;->getRawMessage()Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->setResponseSerialNo(I)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object p1

    const-class v1, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "select * from t_device_parameter"

    .line 5
    invoke-static {v3, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v2

    .line 6
    invoke-virtual {p1, v1, v2}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x80

    const-wide/16 v5, 0x71

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    .line 9
    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->getParameterId()J

    move-result-wide v7

    .line 10
    invoke-virtual {v2}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->getParameterId()J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-eqz v11, :cond_0

    cmp-long v5, v7, v3

    if-nez v5, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->from(Lcn/mucang/sundial/android/db/entity/DeviceParameter;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getBrightness(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v5, v6, p1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    iget v2, p1, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 16
    new-instance v2, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 17
    iget p1, p1, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v5

    int-to-float v5, v5

    mul-float p1, p1, v5

    float-to-long v5, p1

    invoke-virtual {v2, v5, v6}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 18
    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->from(J[B)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_3
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->setParameterList(Ljava/util/List;)V

    return-object v0
.end method
