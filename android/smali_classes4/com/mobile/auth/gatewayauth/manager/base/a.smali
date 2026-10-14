.class public Lcom/mobile/auth/gatewayauth/manager/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/gatewayauth/manager/base/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/mobile/auth/gatewayauth/manager/base/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/manager/base/a$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/a$a;->a(Lcom/mobile/auth/gatewayauth/manager/base/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobile/auth/gatewayauth/manager/base/a;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/a$a;->b(Lcom/mobile/auth/gatewayauth/manager/base/a$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobile/auth/gatewayauth/manager/base/a;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/manager/base/a$a;->c(Lcom/mobile/auth/gatewayauth/manager/base/a$a;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mobile/auth/gatewayauth/manager/base/a;->a(J)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobile/auth/gatewayauth/manager/base/a$a;Lcom/mobile/auth/gatewayauth/manager/base/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/gatewayauth/manager/base/a;-><init>(Lcom/mobile/auth/gatewayauth/manager/base/a$a;)V

    return-void
.end method

.method public static a()Lcom/mobile/auth/gatewayauth/manager/base/a$a;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/mobile/auth/gatewayauth/manager/base/a$a;

    invoke-direct {v1, v0}, Lcom/mobile/auth/gatewayauth/manager/base/a$a;-><init>(Lcom/mobile/auth/gatewayauth/manager/base/a$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/nirvana/tools/jsoner/JsonType;)Lcom/mobile/auth/gatewayauth/manager/base/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/nirvana/tools/jsoner/JsonType<",
            "TT;>;)",
            "Lcom/mobile/auth/gatewayauth/manager/base/a<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/base/a;

    invoke-direct {v0}, Lcom/mobile/auth/gatewayauth/manager/base/a;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/nirvana/tools/jsoner/JsonType;->newInstance()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/nirvana/tools/jsoner/Jsoner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "value"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    move-object v1, p1

    check-cast v1, Lcom/nirvana/tools/jsoner/Jsoner;

    invoke-interface {v1, p0}, Lcom/nirvana/tools/jsoner/Jsoner;->fromJson(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/base/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->isOriginalBoolean(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->isOriginalChar(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->isOriginalNumber(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/nirvana/tools/jsoner/JSONUtils;->isOriginalString(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mobile/auth/gatewayauth/manager/base/a;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    const-wide/16 v1, -0x1

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-wide v1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-wide v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->b:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/nirvana/tools/jsoner/JSONUtils;->toJson(Ljava/lang/Object;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->b:Ljava/lang/Object;

    instance-of v3, v2, Lcom/nirvana/tools/jsoner/Jsoner;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "value"

    if-eqz v3, :cond_0

    :try_start_2
    check-cast v2, Lcom/nirvana/tools/jsoner/Jsoner;

    invoke-interface {v2}, Lcom/nirvana/tools/jsoner/Jsoner;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->isOriginalBoolean(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->isOriginalChar(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->isOriginalNumber(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/nirvana/tools/jsoner/JSONUtils;->isOriginalString(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/base/a;->b:Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method
