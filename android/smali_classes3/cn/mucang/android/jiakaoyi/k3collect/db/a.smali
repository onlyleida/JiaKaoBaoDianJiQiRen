.class public Lcn/mucang/android/jiakaoyi/k3collect/db/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/db/a$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/db/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;-><init>()V

    return-void
.end method

.method public static c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a$b;->a()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/core/db/a;->h(Ljava/lang/Class;J)I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    const-string v3, "exam_site_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    const-string v3, "select * from t_k3_hp_map where exam_site_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/Long;)Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/core/db/a;->m(Ljava/lang/Class;J)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    iget v2, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    invoke-direct {v1, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 7
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public g(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->h(Ljava/lang/Long;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Long;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V
    .locals 3

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "K3MapDbDataHelper"

    const-string p2, "\u6570\u636e\u66f4\u65b0\u5931\u8d25,SrcData\u4e0eId\u4e0d\u5339\u914d"

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    .line 4
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->e(Ljava/lang/Long;)Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->setType(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/db/K3HpMapEntity;->setContent(Ljava/lang/String;)V

    .line 7
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter p2

    .line 8
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    .line 9
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
