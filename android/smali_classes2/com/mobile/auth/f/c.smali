.class public Lcom/mobile/auth/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobile/auth/f/b$c;


# static fields
.field private static a:Lcom/mobile/auth/f/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/mobile/auth/f/a;

.field private c:Lcom/mobile/auth/f/a;

.field private d:Lcom/mobile/auth/f/b;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobile/auth/f/c;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mobile/auth/f/c;->b()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/f/c;
    .locals 2

    sget-object v0, Lcom/mobile/auth/f/c;->a:Lcom/mobile/auth/f/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/f/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/f/c;->a:Lcom/mobile/auth/f/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/f/c;

    invoke-direct {v1, p0}, Lcom/mobile/auth/f/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/f/c;->a:Lcom/mobile/auth/f/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/f/c;->a:Lcom/mobile/auth/f/c;

    return-object p0
.end method

.method private b()V
    .locals 2

    const-string v0, "sdk_config_ver"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "quick_login_android_5.8.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mobile/auth/f/b;->a(Z)Lcom/mobile/auth/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/f/c;->d:Lcom/mobile/auth/f/b;

    invoke-virtual {v0}, Lcom/mobile/auth/f/b;->b()Lcom/mobile/auth/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/f/c;->b:Lcom/mobile/auth/f/a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/mobile/auth/f/b;->a(Z)Lcom/mobile/auth/f/b;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/f/c;->d:Lcom/mobile/auth/f/b;

    invoke-virtual {v1}, Lcom/mobile/auth/f/b;->a()Lcom/mobile/auth/f/a;

    move-result-object v1

    iput-object v1, p0, Lcom/mobile/auth/f/c;->b:Lcom/mobile/auth/f/a;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mobile/auth/f/c;->c()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mobile/auth/f/c;->d:Lcom/mobile/auth/f/b;

    invoke-virtual {v0, p0}, Lcom/mobile/auth/f/b;->a(Lcom/mobile/auth/f/b$c;)V

    iget-object v0, p0, Lcom/mobile/auth/f/c;->d:Lcom/mobile/auth/f/b;

    invoke-virtual {v0}, Lcom/mobile/auth/f/b;->a()Lcom/mobile/auth/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/f/c;->c:Lcom/mobile/auth/f/a;

    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "UmcConfigManager"

    const-string v1, "delete localConfig"

    invoke-static {v0, v1}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/f/c;->d:Lcom/mobile/auth/f/b;

    invoke-virtual {v0}, Lcom/mobile/auth/f/b;->c()V

    return-void
.end method


# virtual methods
.method public a()Lcom/mobile/auth/f/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/f/c;->b:Lcom/mobile/auth/f/a;

    invoke-virtual {v0}, Lcom/mobile/auth/f/a;->r()Lcom/mobile/auth/f/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lcom/mobile/auth/f/c;->c:Lcom/mobile/auth/f/a;

    return-object v0
.end method

.method public a(Lcom/cmic/sso/sdk/a;)V
    .locals 2

    iget-object v0, p0, Lcom/mobile/auth/f/c;->d:Lcom/mobile/auth/f/b;

    iget-object v1, p0, Lcom/mobile/auth/f/c;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/mobile/auth/f/b;->a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public a(Lcom/mobile/auth/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/f/c;->b:Lcom/mobile/auth/f/a;

    return-void
.end method
