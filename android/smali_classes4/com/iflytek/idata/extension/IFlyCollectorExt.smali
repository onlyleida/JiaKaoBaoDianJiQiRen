.class public Lcom/iflytek/idata/extension/IFlyCollectorExt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/iflytek/idata/extension/IFlyCollectorExt;


# instance fields
.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;

.field private d:Landroid/content/Context;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Z

.field private volatile g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->d:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->getClass(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b:Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "init"

    :try_start_1
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->d:Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Lcom/iflytek/idata/extension/IFlyCollectorExt$a;

    invoke-direct {p1, p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt$a;-><init>(Lcom/iflytek/idata/extension/IFlyCollectorExt;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b:Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    invoke-direct {p0, v0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->a(Z)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 12
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 13
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 14
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->deleteFile(Ljava/io/File;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->f:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/idata/extension/a;

    iget-object v2, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->d:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/iflytek/idata/extension/a;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/idata/extension/IFlyCollectorExt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->d:Landroid/content/Context;

    return-object p0
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    aget-object v3, v0, v2

    .line 5
    invoke-static {v3}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private native getClass(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/idata/extension/IFlyCollectorExt;
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->a:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/iflytek/idata/extension/IFlyCollectorExt;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/iflytek/idata/extension/IFlyCollectorExt;->a:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/iflytek/idata/extension/IFlyCollectorExt;

    invoke-direct {v1, p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/iflytek/idata/extension/IFlyCollectorExt;->a:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->a:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    return-object p0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v1, "getVersion"

    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, "-1"

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "iflytek/idata/cache/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method c()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->a(Ljava/io/File;)V

    return-void
.end method

.method d()[B
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v1, "getData"

    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSubId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSubId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->g:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/iflytek/idata/extension/d/b;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "subid"

    .line 5
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
