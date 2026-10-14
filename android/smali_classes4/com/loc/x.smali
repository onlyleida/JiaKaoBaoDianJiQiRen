.class public Lcom/loc/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/loc/x;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/loc/x;->b:Landroid/content/Context;

    const-string p1, "RYW1hcF9kZXZpY2VfYWRpdQ"

    invoke-static {p1}, Lcom/loc/w;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/loc/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/loc/x;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/loc/x;
    .locals 2

    sget-object v0, Lcom/loc/x;->a:Lcom/loc/x;

    if-nez v0, :cond_1

    const-class v0, Lcom/loc/x;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/loc/x;->a:Lcom/loc/x;

    if-nez v1, :cond_0

    new-instance v1, Lcom/loc/x;

    invoke-direct {v1, p0}, Lcom/loc/x;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/loc/x;->a:Lcom/loc/x;

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
    sget-object p0, Lcom/loc/x;->a:Lcom/loc/x;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/loc/n;->c()Lcom/loc/n$a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/loc/ab;->a()Lcom/loc/n$a;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/n;->a(Lcom/loc/n$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/x;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/y;->a(Landroid/content/Context;)Lcom/loc/y;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loc/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/x;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/y;->a(Landroid/content/Context;)Lcom/loc/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/y;->b(Ljava/lang/String;)V

    return-void
.end method
