.class public Lcom/mobile/auth/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "e"

.field private static b:I

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mobile/auth/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobile/auth/c/e;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mobile/auth/c/e;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/mobile/auth/c/b;
    .locals 4

    const-class v0, Lcom/mobile/auth/c/e;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/mobile/auth/c/e;->c:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mobile/auth/c/e;->c:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/c/b;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Lcom/mobile/auth/c/b;

    invoke-direct {v2, p0}, Lcom/mobile/auth/c/b;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/mobile/auth/c/e;->c:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lcom/mobile/auth/c/b;

    invoke-direct {v2, p0}, Lcom/mobile/auth/c/b;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception p0

    :try_start_3
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v0

    return-object v1

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/mobile/auth/c/e;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-class v0, Lcom/mobile/auth/c/e;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/c/e;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mobile/auth/c/e;->d:Ljava/util/List;

    sget-object v2, Lcom/mobile/auth/c/e;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobile/auth/c/b;

    invoke-virtual {v2}, Lcom/mobile/auth/c/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/mobile/auth/c/e;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget p1, Lcom/mobile/auth/c/e;->b:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    sget-object p1, Lcom/mobile/auth/c/e;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sput v1, Lcom/mobile/auth/c/e;->b:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p1, Lcom/mobile/auth/c/e$1;

    invoke-direct {p1, p0}, Lcom/mobile/auth/c/e$1;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v0, 0x1f40

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string p1, "msg"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/mobile/auth/c/b;->a(I)Lcom/mobile/auth/c/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/mobile/auth/c/b;->f(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/mobile/auth/c/e;->a(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/mobile/auth/c/b;->a(I)Lcom/mobile/auth/c/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/mobile/auth/c/b;->f(Ljava/lang/String;)Lcom/mobile/auth/c/b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/mobile/auth/c/b;->e(Ljava/lang/String;)Lcom/mobile/auth/c/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/mobile/auth/c/e;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/mobile/auth/c/e;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    sput v2, Lcom/mobile/auth/c/e;->b:I

    sget-object v2, Lcom/mobile/auth/c/e;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {p0, v0}, Lcom/mobile/auth/c/d;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/mobile/auth/c/d;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
