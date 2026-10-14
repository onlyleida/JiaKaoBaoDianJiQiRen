.class public final Lcom/mobile/auth/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/os/Handler; = null

.field public static b:Lcom/mobile/auth/a/c; = null

.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static e:I = 0x0

.field private static final f:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mobile/auth/a/a;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput v0, Lcom/mobile/auth/a/a;->c:I

    sput v0, Lcom/mobile/auth/a/a;->d:I

    sput v0, Lcom/mobile/auth/a/a;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/a/a;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(IIILcom/mobile/auth/a/c;)V
    .locals 0

    :try_start_0
    sput p0, Lcom/mobile/auth/a/a;->d:I

    sput p1, Lcom/mobile/auth/a/a;->e:I

    sput p2, Lcom/mobile/auth/a/a;->c:I

    sput-object p3, Lcom/mobile/auth/a/a;->b:Lcom/mobile/auth/a/c;
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

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/mobile/auth/a/a;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called requestPreAuthCode()   appId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",appSecret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qhx"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/mobile/auth/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
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

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    sput-object v0, Lcom/mobile/auth/a/a;->b:Lcom/mobile/auth/a/c;

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/mobile/auth/d/f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "{\"result\":80003,\"msg\":\"\u7f51\u7edc\u65e0\u8fde\u63a5\"}"

    invoke-interface {p4, p0}, Lcom/mobile/auth/a/b;->a(Ljava/lang/String;)V

    sput-object v0, Lcom/mobile/auth/a/a;->b:Lcom/mobile/auth/a/c;

    return-void

    :cond_2
    invoke-static {p0}, Lcom/mobile/auth/d/f;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/mobile/auth/d/a;

    invoke-direct {v2}, Lcom/mobile/auth/d/a;-><init>()V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/mobile/auth/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/mobile/auth/d/f;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/mobile/auth/d/a;

    invoke-direct {v2}, Lcom/mobile/auth/d/a;-><init>()V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/mobile/auth/d/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V

    goto :goto_1

    :cond_4
    const-string p0, "{\"result\":80004,\"msg\":\"\u79fb\u52a8\u7f51\u7edc\u672a\u5f00\u542f\"}"

    invoke-interface {p4, p0}, Lcom/mobile/auth/a/b;->a(Ljava/lang/String;)V

    sput-object v0, Lcom/mobile/auth/a/a;->b:Lcom/mobile/auth/a/c;

    goto :goto_1

    :cond_5
    :goto_0
    const-string p0, "{\"result\":80106,\"msg\":\"\u8bf7\u6c42\u53c2\u6570\u5f02\u5e38\"}"

    invoke-interface {p4, p0}, Lcom/mobile/auth/a/b;->a(Ljava/lang/String;)V

    sput-object v0, Lcom/mobile/auth/a/a;->b:Lcom/mobile/auth/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/a/a;->b:Lcom/mobile/auth/a/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/mobile/auth/a/a;->b:Lcom/mobile/auth/a/c;

    invoke-interface {v0, p0, p1}, Lcom/mobile/auth/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :catchall_2
    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/a/a;->b:Lcom/mobile/auth/a/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/mobile/auth/a/a;->b:Lcom/mobile/auth/a/c;

    invoke-interface {v0, p0, p1, p2}, Lcom/mobile/auth/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :catchall_2
    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mobile/auth/a/b;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mobile/auth/a/a$1;

    invoke-direct {v0, p3, p1, p2, p0}, Lcom/mobile/auth/a/a$1;-><init>(Lcom/mobile/auth/a/b;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sget-object p0, Lcom/mobile/auth/a/a;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
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
