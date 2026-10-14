.class Lcom/nirvana/tools/requestqueue/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/nirvana/tools/requestqueue/a;


# instance fields
.field private b:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirvana/tools/requestqueue/a;->b:Ljava/security/MessageDigest;

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/nirvana/tools/requestqueue/a;->b:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-void
.end method

.method public static a()Lcom/nirvana/tools/requestqueue/a;
    .locals 2

    sget-object v0, Lcom/nirvana/tools/requestqueue/a;->a:Lcom/nirvana/tools/requestqueue/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/nirvana/tools/requestqueue/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nirvana/tools/requestqueue/a;->a:Lcom/nirvana/tools/requestqueue/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/nirvana/tools/requestqueue/a;

    invoke-direct {v1}, Lcom/nirvana/tools/requestqueue/a;-><init>()V

    sput-object v1, Lcom/nirvana/tools/requestqueue/a;->a:Lcom/nirvana/tools/requestqueue/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/nirvana/tools/requestqueue/a;->a:Lcom/nirvana/tools/requestqueue/a;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nirvana/tools/requestqueue/a;->b:Ljava/security/MessageDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nirvana/tools/requestqueue/a;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
