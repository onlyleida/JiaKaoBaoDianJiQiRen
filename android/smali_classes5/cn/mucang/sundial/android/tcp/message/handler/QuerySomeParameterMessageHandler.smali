.class public Lcn/mucang/sundial/android/tcp/message/handler/QuerySomeParameterMessageHandler;
.super Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/android/tcp/message/handler/BaseMessageHandler<",
        "Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;",
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
    check-cast p1, Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/android/tcp/message/handler/QuerySomeParameterMessageHandler;->handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .locals 12

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;->getRawMessage()Lcn/mucang/sundial/android/tcp/message/RawMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage;->getHeader()Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/message/RawMessage$Header;->getMessageSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->setResponseSerialNo(I)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/android/tcp/message/receive/QuerySomeParameterRequest;->getParameterIdList()[J

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    array-length v5, p1

    const-wide/16 v6, 0x80

    const-wide/16 v8, 0x71

    if-ge v4, v5, :cond_4

    .line 8
    aget-wide v10, p1, v4

    cmp-long v5, v10, v8

    if-nez v5, :cond_0

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getBrightness(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v8, v9, v5}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_0
    aget-wide v8, p1, v4

    cmp-long v5, v8, v6

    if-nez v5, :cond_1

    .line 12
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/gnss/OBDManager;->getCarModel()Lcn/mucang/sundial/android/model/CarModel;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 13
    iget v8, v5, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 14
    new-instance v8, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v8}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 15
    iget v5, v5, Lcn/mucang/sundial/android/model/CarModel;->totalDistance:F

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v9

    invoke-virtual {v9}, Lcn/mucang/sundial/android/SundialManager;->getAccuracyMultiplier()I

    move-result v9

    int-to-float v9, v9

    mul-float v5, v5, v9

    float-to-long v9, v5

    invoke-virtual {v8, v9, v10}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 16
    invoke-virtual {v8}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcn/mucang/sundial/android/tcp/message/Parameter;->from(J[B)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_1
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    const-string v5, ","

    goto :goto_1

    :cond_2
    const-string v5, ")"

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {}, Lcn/mucang/sundial/android/db/SundialDb;->getInstance()Lcn/mucang/sundial/android/db/SundialDb;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/SundialDb;->getDb()Lcn/mucang/android/core/db/a;

    move-result-object p1

    const-class v4, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select * from t_device_parameter where parameter_id in"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v4, v1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    .line 23
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->getParameterId()J

    move-result-wide v3

    .line 24
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->getParameterId()J

    move-result-wide v10

    cmp-long v5, v10, v8

    if-eqz v5, :cond_5

    cmp-long v5, v3, v6

    if-nez v5, :cond_6

    goto :goto_3

    .line 25
    :cond_6
    invoke-static {v1}, Lcn/mucang/sundial/android/tcp/message/Parameter;->from(Lcn/mucang/sundial/android/db/entity/DeviceParameter;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_7
    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->setParameterList(Ljava/util/List;)V

    return-object v0
.end method
