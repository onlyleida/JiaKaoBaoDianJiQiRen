.class public Lcn/mucang/android/jiakaoyi/unity/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/unity/c/d$a;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static volatile b:Z

.field private static c:Ljava/lang/Runnable;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/unity/c/d$a<",
            "Lcn/mucang/android/jiakaoyi/unity/c/c<",
            "+",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/unity/c/d;->d:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/unity/c/d;->e:Ljava/util/Map;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/unity/c/d;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    const-string v0, "msg"

    const-string v1, "code"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->code:I

    const-string v3, "id"

    .line 4
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->id:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->msg:Ljava/lang/String;

    const-string v3, "args"

    .line 6
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->args:Ljava/lang/String;

    .line 7
    sget-object v3, Lcn/mucang/android/jiakaoyi/unity/c/d;->e:Ljava/util/Map;

    iget v4, v2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 8
    sget-object v4, Lcn/mucang/android/jiakaoyi/unity/c/d;->d:Ljava/util/Map;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/unity/c/d$a;

    if-eqz v3, :cond_3

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data"

    .line 9
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 10
    iget v0, v2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->code:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 11
    :try_start_1
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    iput-object p0, v2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :catchall_0
    :cond_1
    :try_start_2
    invoke-interface {v4}, Lcn/mucang/android/jiakaoyi/unity/c/d$a;->create()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/unity/c/c;

    invoke-interface {p0, v2, p1}, Lcn/mucang/android/jiakaoyi/unity/c/c;->a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 13
    :cond_2
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p1, "\u4e0d\u652f\u6301\u8fd9\u4e2a\u8c03\u7528"

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(I)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;-><init>(I)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->g(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Z)V

    return-void
.end method

.method public static c(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">(ITT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;-><init>(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->g(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Z)V

    return-void
.end method

.method public static d(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">(ITT;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;-><init>(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/unity/c/d;->g(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Z)V

    return-void
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->g(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Z)V

    return-void
.end method

.method public static f(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">(TT;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->g(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Z)V

    return-void
.end method

.method private static g(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/unity/c/d;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/unity/c/a;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/unity/c/a;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/unity/c/d;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static i()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/unity/c/d;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/unity/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/unity/c/d;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/unity/c/d;->r()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v0, 0x0

    .line 4
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget p0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->id:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->k(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53d1\u9001\u7ed9unity\u6d88\u606f:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_2
    const-string p0, "AndroidCOM"

    const-string v0, "CallFromNative"

    .line 7
    invoke-static {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static k(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2711

    if-eq v0, p0, :cond_0

    const/16 v0, 0x2712

    if-eq v0, p0, :cond_0

    const/16 v0, 0x2713

    if-eq v0, p0, :cond_0

    const/16 v0, 0x4e24

    if-eq v0, p0, :cond_0

    const/16 v0, 0x4e31

    if-eq v0, p0, :cond_0

    const/16 v0, 0x753d

    if-eq v0, p0, :cond_0

    const/16 v0, 0x7534

    if-eq v0, p0, :cond_0

    const/16 v0, 0x7538

    if-eq v0, p0, :cond_0

    const/16 v0, 0x2af9

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(ILjava/lang/Class;Lcn/mucang/android/jiakaoyi/unity/c/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            "C::",
            "Lcn/mucang/android/jiakaoyi/unity/c/c<",
            "TT;>;>(I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcn/mucang/android/jiakaoyi/unity/c/d$a<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->m(ILjava/lang/Class;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/unity/c/d;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static m(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/unity/c/d;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static n(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/unity/c/d;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static o(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/unity/c/d;->a:Z

    return-void
.end method

.method public static p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/unity/c/d;->b:Z

    return-void
.end method

.method public static q()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/unity/c/d;->a:Z

    return v0
.end method

.method public static r()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/unity/c/d;->b:Z

    return v0
.end method
