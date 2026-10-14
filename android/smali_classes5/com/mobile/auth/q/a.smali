.class public Lcom/mobile/auth/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/q/a$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;

.field private static volatile c:Lcom/mobile/auth/q/a;


# instance fields
.field private b:Lcom/mobile/auth/e/a;

.field private d:Landroid/content/Context;

.field private e:Lcom/mobile/auth/e/f;

.field private f:Lcom/cmic/sso/sdk/a;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/cmic/sso/sdk/activity/LoginAuthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobile/auth/q/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mobile/auth/e/a;->a(Landroid/content/Context;)Lcom/mobile/auth/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/q/a;->d:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/mobile/auth/q/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mobile/auth/q/a;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/q/a;)Lcom/mobile/auth/e/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/q/a;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/q/a;->c:Lcom/mobile/auth/q/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/q/a;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/q/a;->c:Lcom/mobile/auth/q/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/q/a;

    invoke-direct {v1, p0}, Lcom/mobile/auth/q/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/q/a;->c:Lcom/mobile/auth/q/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/q/a;->c:Lcom/mobile/auth/q/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v0

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mobile/auth/q/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/q/a;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private a(Lcom/mobile/auth/e/f;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/mobile/auth/e/f;

    const-string v3, "a"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    const-class v6, Lcom/cmic/sso/sdk/a;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Lcom/mobile/auth/e/g;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p3, v2, v7

    aput-object p4, v2, v8

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/q/a;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/q/b;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/q/a;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/q/b;)V
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

.method static synthetic a(Lcom/mobile/auth/q/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobile/auth/q/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
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

.method private a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/q/b;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/mobile/auth/q/a$a;

    invoke-direct {v0, p0, p2}, Lcom/mobile/auth/q/a$a;-><init>(Lcom/mobile/auth/q/a;Lcom/cmic/sso/sdk/a;)V

    iget-object v1, p0, Lcom/mobile/auth/q/a;->h:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mobile/auth/q/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "authTypeInput"

    invoke-virtual {p2, v1, p1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mobile/auth/q/a$4;

    invoke-direct {v1, p0, v0, p3}, Lcom/mobile/auth/q/a$4;-><init>(Lcom/mobile/auth/q/a;Lcom/mobile/auth/q/a$a;Lcom/mobile/auth/q/b;)V

    invoke-direct {p0}, Lcom/mobile/auth/q/a;->c()Lcom/mobile/auth/e/f;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2, v1}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/e/f;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V
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

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/q/a;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "103000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "traceId"

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/k/i;->c(Ljava/lang/String;)Lcom/mobile/auth/e/e;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;Z)V

    return-void

    :cond_2
    const-string v0, "200020"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/k/i;->c(Ljava/lang/String;)Lcom/mobile/auth/e/e;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    sget-object p1, Lcom/mobile/auth/q/a;->a:Ljava/lang/String;

    const-string p2, "CallbackResult:\u672a\u77e5\u9519\u8bef"

    invoke-static {p1, p2}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/mobile/auth/e/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mobile/auth/e/e;)Z
    .locals 12

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Lcom/mobile/auth/e/a;

    const-string v4, "a"

    const/4 v5, 0x6

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lcom/cmic/sso/sdk/a;

    aput-object v7, v6, v1

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v8, 0x2

    aput-object v0, v6, v8

    const/4 v9, 0x3

    aput-object v0, v6, v9

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v0, v6, v10

    const-class v0, Lcom/mobile/auth/e/e;

    const/4 v11, 0x5

    aput-object v0, v6, v11

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v7

    aput-object p4, v0, v8

    aput-object p5, v0, v9

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v10

    aput-object p7, v0, v11

    move-object v3, p1

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    if-eqz v2, :cond_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :goto_0
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :goto_1
    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_2
    return v1

    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    :try_start_6
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v1

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method static synthetic a(Lcom/mobile/auth/q/a;Lcom/mobile/auth/e/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mobile/auth/e/e;)Z
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/e/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mobile/auth/e/e;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return p1
.end method

.method static synthetic b(Lcom/mobile/auth/q/a;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/q/a;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private c()Lcom/mobile/auth/e/f;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/q/a;->e:Lcom/mobile/auth/e/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    const-class v2, Lcom/mobile/auth/e/a;

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v3, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobile/auth/e/f;

    iput-object v3, p0, Lcom/mobile/auth/q/a;->e:Lcom/mobile/auth/e/f;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    :goto_0
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v2, v0

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_3
    move-exception v3

    move-object v2, v0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :goto_3
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    throw v3

    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/mobile/auth/q/a;->e:Lcom/mobile/auth/e/f;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v0

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-object v0

    :catchall_3
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic c(Lcom/mobile/auth/q/a;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/q/a;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic d(Lcom/mobile/auth/q/a;)Lcom/cmic/sso/sdk/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/q/a;->f:Lcom/cmic/sso/sdk/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/mobile/auth/e/a;

    const-string v3, "e"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v3, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    return-object v3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v2, v0

    goto :goto_6

    :catch_3
    move-exception v3

    move-object v2, v0

    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    if-eqz v2, :cond_1

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_1

    :goto_2
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v3

    move-object v2, v0

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_1

    :goto_4
    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_7

    :cond_1
    :goto_5
    return-object v0

    :catchall_2
    move-exception v3

    :goto_6
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_7
    :try_start_7
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-object v0

    :catchall_3
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic e(Lcom/mobile/auth/q/a;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/q/a;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic f(Lcom/mobile/auth/q/a;)Landroid/os/Handler;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/q/a;->h:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    invoke-virtual {v0}, Lcom/mobile/auth/e/a;->b()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    const-wide/16 v1, -0x1

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-wide v1
.end method

.method public a(J)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/mobile/auth/e/a;->a(J)V
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

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mobile/auth/e/e;)V
    .locals 8

    :try_start_0
    new-instance v7, Lcom/mobile/auth/q/b;

    invoke-direct {v7, p1}, Lcom/mobile/auth/q/b;-><init>(Lcom/mobile/auth/e/e;)V

    iget-object p1, p0, Lcom/mobile/auth/q/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/k/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/q/a;->g:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/mobile/auth/k/i;->a(Ljava/lang/String;Lcom/mobile/auth/e/e;)V

    iget-object p1, p0, Lcom/mobile/auth/q/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobile/auth/k/i;->d(Ljava/lang/String;)Lcom/cmic/sso/sdk/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/q/a;->f:Lcom/cmic/sso/sdk/a;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/cmic/sso/sdk/a;

    const/4 p1, 0x0

    invoke-direct {v2, p1}, Lcom/cmic/sso/sdk/a;-><init>(I)V

    iput-object v2, p0, Lcom/mobile/auth/q/a;->f:Lcom/cmic/sso/sdk/a;

    iget-object v1, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    iget-object v3, p0, Lcom/mobile/auth/q/a;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/mobile/auth/q/a;->j:Ljava/lang/String;

    const-string v5, "loginAuth"

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mobile/auth/q/a;->a(Lcom/mobile/auth/e/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mobile/auth/e/e;)Z

    :goto_0
    iget-object p1, p0, Lcom/mobile/auth/q/a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/e/f;->a(Landroid/content/Context;)Lcom/mobile/auth/e/f;

    move-result-object p1

    new-instance v0, Lcom/mobile/auth/q/a$3;

    invoke-direct {v0, p0, p1}, Lcom/mobile/auth/q/a$3;-><init>(Lcom/mobile/auth/q/a;Lcom/mobile/auth/e/f;)V

    invoke-static {v0}, Lcom/mobile/auth/k/u;->a(Lcom/mobile/auth/k/u$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/mobile/auth/e/e;I)V
    .locals 6

    :try_start_0
    new-instance v5, Lcom/mobile/auth/q/b;

    invoke-direct {v5, p1}, Lcom/mobile/auth/q/b;-><init>(Lcom/mobile/auth/e/e;)V

    new-instance v4, Lcom/cmic/sso/sdk/a;

    const/16 p1, 0x40

    invoke-direct {v4, p1}, Lcom/cmic/sso/sdk/a;-><init>(I)V

    const-string p1, "SDKRequestCode"

    invoke-virtual {v4, p1, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;I)V

    const-string p1, "serviceType"

    const-string p2, "login"

    invoke-virtual {v4, p1, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mobile/auth/q/a;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "caller"

    invoke-virtual {v4, p2, p1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "methodTimes"

    invoke-virtual {v4, v0, p1, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)V

    new-instance p1, Lcom/mobile/auth/q/a$1;

    iget-object v2, p0, Lcom/mobile/auth/q/a;->d:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/q/a$1;-><init>(Lcom/mobile/auth/q/a;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/q/b;)V

    invoke-static {p1}, Lcom/mobile/auth/k/u;->a(Lcom/mobile/auth/k/u$a;)V
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

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/q/a;->i:Ljava/lang/String;
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

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/q/a;->b:Lcom/mobile/auth/e/a;

    invoke-virtual {v0}, Lcom/mobile/auth/e/a;->c()V
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

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/mobile/auth/e/e;I)V
    .locals 6

    :try_start_0
    new-instance v5, Lcom/mobile/auth/q/b;

    invoke-direct {v5, p1}, Lcom/mobile/auth/q/b;-><init>(Lcom/mobile/auth/e/e;)V

    new-instance v4, Lcom/cmic/sso/sdk/a;

    const/16 p1, 0x40

    invoke-direct {v4, p1}, Lcom/cmic/sso/sdk/a;-><init>(I)V

    const-string p1, "SDKRequestCode"

    invoke-virtual {v4, p1, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;I)V

    const-string p1, "serviceType"

    const-string p2, "authentication"

    invoke-virtual {v4, p1, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "methodTimes"

    invoke-virtual {v4, v0, p1, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)V

    new-instance p1, Lcom/mobile/auth/q/a$2;

    iget-object v2, p0, Lcom/mobile/auth/q/a;->d:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/q/a$2;-><init>(Lcom/mobile/auth/q/a;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/q/b;)V

    invoke-static {p1}, Lcom/mobile/auth/k/u;->a(Lcom/mobile/auth/k/u$a;)V
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

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/q/a;->j:Ljava/lang/String;
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

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
