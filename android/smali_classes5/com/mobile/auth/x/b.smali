.class public Lcom/mobile/auth/x/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/mobile/auth/x/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mobile/auth/x/b;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/x/b;->a:Lcom/mobile/auth/x/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/x/b;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/x/b;->a:Lcom/mobile/auth/x/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/x/b;

    invoke-direct {v1}, Lcom/mobile/auth/x/b;-><init>()V

    sput-object v1, Lcom/mobile/auth/x/b;->a:Lcom/mobile/auth/x/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mobile/auth/x/b;->a:Lcom/mobile/auth/x/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v1

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mobile/auth/ab/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u4e0d\u53ef\u91cd\u590d\u521d\u59cb\u5316"

    invoke-static {p1}, Lcom/mobile/auth/ab/d;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/mobile/auth/ab/e;->a(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/mobile/auth/ab/e;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_0
    const-string p1, "\u521d\u59cb\u5316\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/mobile/auth/ab/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a(ILcom/mobile/auth/x/a;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/mobile/auth/z/a;

    invoke-direct {v0}, Lcom/mobile/auth/z/a;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/x/b;->b:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/mobile/auth/z/a;->a(Landroid/content/Context;IILcom/mobile/auth/x/a;)V
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

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/x/b;->b:Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/x/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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

.method public b(ILcom/mobile/auth/x/a;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/mobile/auth/z/a;

    invoke-direct {v0}, Lcom/mobile/auth/z/a;-><init>()V

    iget-object v1, p0, Lcom/mobile/auth/x/b;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/mobile/auth/z/a;->a(Landroid/content/Context;IILcom/mobile/auth/x/a;)V
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
