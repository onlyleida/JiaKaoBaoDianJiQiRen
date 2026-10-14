.class public Lf/a/a/a/r/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/r/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c*\u0001\n\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\u0008\u0010\u0017\u001a\u00020\u0011H\u0016J\u0012\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u000fH\u0016J\u0008\u0010\u001c\u001a\u00020\u0005H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/core/storage/ShareMultiProcessStorage;",
        "Lcn/mucang/android/core/storage/Storage;",
        "name",
        "",
        "logEnable",
        "",
        "(Ljava/lang/String;Z)V",
        "internalFileStorage",
        "Lcn/mucang/android/core/storage/InternalFileStorage;",
        "observer",
        "cn/mucang/android/core/storage/ShareMultiProcessStorage$observer$1",
        "Lcn/mucang/android/core/storage/ShareMultiProcessStorage$observer$1;",
        "released",
        "strCache",
        "valueChangedListener",
        "Lcn/mucang/android/core/storage/ValueChangedListener;",
        "clear",
        "",
        "doGet",
        "force",
        "get",
        "log",
        "msg",
        "release",
        "save",
        "string",
        "setValueChangedListener",
        "l",
        "valid",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private c:Lf/a/a/a/r/i;

.field private d:Ljava/lang/String;

.field private final e:Lf/a/a/a/r/c;

.field private f:Z

.field private final g:Lf/a/a/a/r/e$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/a/r/e;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lf/a/a/a/r/e;->b:Z

    .line 4
    new-instance p2, Lf/a/a/a/r/c;

    invoke-direct {p2, p1}, Lf/a/a/a/r/c;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lf/a/a/a/r/e;->e:Lf/a/a/a/r/c;

    .line 5
    invoke-virtual {p2}, Lf/a/a/a/r/c;->c()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Lf/a/a/a/r/e$a;

    const/16 v0, 0x408

    invoke-direct {p2, p0, p1, v0}, Lf/a/a/a/r/e$a;-><init>(Lf/a/a/a/r/e;Ljava/lang/String;I)V

    iput-object p2, p0, Lf/a/a/a/r/e;->g:Lf/a/a/a/r/e$a;

    .line 7
    invoke-virtual {p2}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lf/a/a/a/r/e;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic c(Lf/a/a/a/r/e;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/a/r/e;->g(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lf/a/a/a/r/e;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/a/r/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lf/a/a/a/r/e;)Lf/a/a/a/r/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/a/r/e;->c:Lf/a/a/a/r/i;

    return-object p0
.end method

.method public static final synthetic f(Lf/a/a/a/r/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/a/r/e;->h(Ljava/lang/String;)V

    return-void
.end method

.method private final g(Z)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/r/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lf/a/a/a/r/e;->e:Lf/a/a/a/r/c;

    invoke-virtual {p1}, Lf/a/a/a/r/c;->get()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/a/r/e;->d:Ljava/lang/String;

    .line 3
    :cond_1
    iget-object p1, p0, Lf/a/a/a/r/e;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lf/a/a/a/r/e;->d:Ljava/lang/String;

    const-string v0, "newValue\uff1a"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lf/a/a/a/r/e;->h(Ljava/lang/String;)V

    .line 5
    :cond_2
    iget-object p1, p0, Lf/a/a/a/r/e;->d:Ljava/lang/String;

    return-object p1
.end method

.method private final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/a/a/a/r/e;->b:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/a/r/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "coreMulti"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/r/e;->e:Lf/a/a/a/r/c;

    invoke-virtual {v0}, Lf/a/a/a/r/c;->a()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/a/a/a/r/e;->e:Lf/a/a/a/r/c;

    invoke-virtual {v0, p1}, Lf/a/a/a/r/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lf/a/a/a/r/e;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lf/a/a/a/r/e;->g(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/a/a/a/r/e;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/a/a/a/r/e;->g:Lf/a/a/a/r/e$a;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/a/a/a/r/e;->f:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lf/a/a/a/r/e;->c:Lf/a/a/a/r/i;

    const-string v0, "release"

    .line 5
    invoke-direct {p0, v0}, Lf/a/a/a/r/e;->h(Ljava/lang/String;)V

    return-void
.end method
