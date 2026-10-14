.class Lcom/coloros/ocs/base/common/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/coloros/ocs/base/common/c/a$c;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static volatile d:Lcom/coloros/ocs/base/common/c/j;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/ocs/base/common/c/a$f;",
            "Lcom/coloros/ocs/base/common/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/ocs/base/common/c/a$f;",
            "Lcom/coloros/ocs/base/common/c/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field b:Lcom/coloros/ocs/base/common/b;

.field private c:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/coloros/ocs/base/common/c/j;->f:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/c/j;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/coloros/ocs/base/common/c/j;->c:Landroid/os/Looper;

    .line 4
    new-instance p1, Lcom/coloros/ocs/base/common/b;

    iget-object p2, p0, Lcom/coloros/ocs/base/common/c/j;->c:Landroid/os/Looper;

    invoke-direct {p1, p2, p0}, Lcom/coloros/ocs/base/common/b;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/coloros/ocs/base/common/c/j;->b:Lcom/coloros/ocs/base/common/b;

    return-void
.end method

.method private static a(Lcom/coloros/ocs/base/common/c/d;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/c/d;->b()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/c/d;->b()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/AuthResult;->a()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Lcom/coloros/ocs/base/common/c/j;
    .locals 4

    .line 1
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->d:Lcom/coloros/ocs/base/common/c/j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/coloros/ocs/base/common/c/j;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/coloros/ocs/base/common/c/j;->d:Lcom/coloros/ocs/base/common/c/j;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ColorApiManager"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v2, Lcom/coloros/ocs/base/common/c/j;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/coloros/ocs/base/common/c/j;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lcom/coloros/ocs/base/common/c/j;->d:Lcom/coloros/ocs/base/common/c/j;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/ocs/base/common/c/j;->d:Lcom/coloros/ocs/base/common/c/j;

    return-object p0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->f:Ljava/util/Map;

    return-object v0
.end method

.method static d(Lcom/coloros/ocs/base/common/c/a$f;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static f(Lcom/coloros/ocs/base/common/c/c;Lcom/coloros/ocs/base/common/c/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/c/c;",
            "Lcom/coloros/ocs/base/common/c/g<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addQueue "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorApiManager"

    invoke-static {v1, v0}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colorApi not be null"

    .line 2
    invoke-static {p0, v0}, Lg/b/a/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/c/d;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Lcom/coloros/ocs/base/common/c/d;->c(Lcom/coloros/ocs/base/common/c/g;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/c/d;

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/g;->b()Lcom/coloros/ocs/base/common/c/g$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p0}, Lcom/coloros/ocs/base/common/c/j;->a(Lcom/coloros/ocs/base/common/c/d;)I

    move-result p0

    .line 10
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/g;->b()Lcom/coloros/ocs/base/common/c/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/g;->c()Lg/b/a/a/e/b;

    move-result-object p1

    invoke-static {p0}, Lcom/coloros/ocs/base/common/e/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p0, v1}, Lcom/coloros/ocs/base/common/c/g$a;->a(Lg/b/a/a/e/b;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method static h(Lcom/coloros/ocs/base/common/c/a$f;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static i(Lcom/coloros/ocs/base/common/c/c;)Z
    .locals 2

    const-string v0, "colorApi not be null"

    .line 1
    invoke-static {p0, v0}, Lg/b/a/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/c/d;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/c/d;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final e(Lcom/coloros/ocs/base/common/c/c;Lcom/coloros/ocs/base/common/c/f;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "colorApi not be null"

    .line 1
    invoke-static {p1, v0}, Lg/b/a/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/ocs/base/common/c/d;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 6
    :goto_0
    new-instance p3, Lcom/coloros/ocs/base/common/c/j$b;

    invoke-direct {p3, p0, p1, p2}, Lcom/coloros/ocs/base/common/c/j$b;-><init>(Lcom/coloros/ocs/base/common/c/j;Landroid/os/Looper;Lcom/coloros/ocs/base/common/c/f;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 8
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/coloros/ocs/base/common/c/d;->d(Lcom/coloros/ocs/base/common/c/f;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method final g(Lcom/coloros/ocs/base/common/c/c;Lg/b/a/a/d/a;)V
    .locals 5

    const-string v0, "colorApi not be null"

    .line 1
    invoke-static {p1, v0}, Lg/b/a/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clientsettings not be null"

    .line 2
    invoke-static {p2, v0}, Lg/b/a/a/c/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ColorApiManager"

    const-string v1, "addColorClient"

    .line 4
    invoke-static {v0, v1}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/coloros/ocs/base/common/c/k;

    iget-object v2, p0, Lcom/coloros/ocs/base/common/c/j;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v3

    .line 6
    iget-object v4, p1, Lcom/coloros/ocs/base/common/c/c;->c:Lcom/coloros/ocs/base/common/c/a$c;

    .line 7
    invoke-direct {v1, v2, v3, v4, p2}, Lcom/coloros/ocs/base/common/c/k;-><init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/c/a;Lcom/coloros/ocs/base/common/c/a$c;Lg/b/a/a/d/a;)V

    .line 8
    new-instance p2, Lcom/coloros/ocs/base/common/c/j$a;

    invoke-direct {p2, p0, p1, v1}, Lcom/coloros/ocs/base/common/c/j$a;-><init>(Lcom/coloros/ocs/base/common/c/j;Lcom/coloros/ocs/base/common/c/c;Lcom/coloros/ocs/base/common/c/d;)V

    invoke-interface {v1, p2}, Lcom/coloros/ocs/base/common/c/d;->a(Lcom/coloros/ocs/base/common/c/l;)V

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "getClientKey "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "TAG"

    invoke-static {v2, p2}, Lg/b/a/a/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p2, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "handlerConnect"

    .line 11
    invoke-static {v0, p2}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/coloros/ocs/base/common/c/j;->b:Lcom/coloros/ocs/base/common/b;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x0

    .line 13
    iput v0, p2, Landroid/os/Message;->what:I

    .line 14
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/coloros/ocs/base/common/c/j;->b:Lcom/coloros/ocs/base/common/b;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handle message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorApiManager"

    invoke-static {v1, v0}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/ocs/base/common/c/c;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/ocs/base/common/c/d;

    if-eqz v0, :cond_2

    const-string v2, "colorApiClient is not null,will disconnect"

    .line 6
    invoke-static {v1, v2}, Lg/b/a/a/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0}, Lcom/coloros/ocs/base/common/c/d;->disconnect()V

    .line 8
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/ocs/base/common/c/j;->d(Lcom/coloros/ocs/base/common/c/a$f;)V

    .line 9
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/ocs/base/common/c/j;->h(Lcom/coloros/ocs/base/common/c/a$f;)V

    goto :goto_0

    :cond_1
    const-string v0, "handle connect"

    .line 10
    invoke-static {v1, v0}, Lg/b/a/a/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/ocs/base/common/c/c;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lcom/coloros/ocs/base/common/c/j;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/c;->d()Lcom/coloros/ocs/base/common/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/c/a;->b()Lcom/coloros/ocs/base/common/c/a$f;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/ocs/base/common/c/d;

    if-eqz p1, :cond_2

    const-string v0, "colorApiClient is not null,will connect"

    .line 14
    invoke-static {v1, v0}, Lg/b/a/a/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-interface {p1}, Lcom/coloros/ocs/base/common/c/d;->connect()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
