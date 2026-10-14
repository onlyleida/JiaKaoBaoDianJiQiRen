.class public Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/socket/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Z

.field private volatile d:Lcn/mucang/jiakaoyi/uilib/socket/r;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/socket/o;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private g:I

.field private h:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/Handler;

.field private volatile k:Z

.field private volatile l:I

.field private final m:Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;

.field private final p:Lcn/mucang/jiakaoyi/uilib/socket/p$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->f:Z

    .line 5
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/socket/f;->a:Lcn/mucang/jiakaoyi/uilib/socket/f;

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->m:Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;

    .line 6
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$a;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$a;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->n:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/c;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/c;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->o:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$c;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->p:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    .line 9
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->c:Z

    .line 10
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->a:Z

    .line 11
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->b:Z

    .line 12
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g:I

    .line 13
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->k:Z

    return-void
.end method

.method static synthetic A(Lcn/mucang/jiakaoyi/uilib/socket/r;[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->p([B)Z

    return-void
.end method

.method static synthetic B(Lcn/mucang/jiakaoyi/uilib/socket/r;B[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/r;->q(B[B)Z

    return-void
.end method

.method private synthetic C()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->f:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u7ecf\u6210\u529fstart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->R()V

    .line 5
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->f:Z

    return-void
.end method

.method private declared-synchronized J(Ljava/lang/Runnable;I)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c\u52a8\u4f5c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    :cond_0
    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->l:I

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->l()V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "GpsService"

    goto :goto_0

    :cond_0
    const-string v0, "BusinessService"

    :goto_0
    return-object v0
.end method

.method private P()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->High:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->h:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;->Network:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

    if-ne v1, v2, :cond_1

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u8bbe\u5907\u7f51\u7edc\u72b6\u6001"

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;->Service:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

    if-ne v1, v2, :cond_2

    .line 6
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;->Middle:Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;

    const-string v1, "\u4e0e\u670d\u52a1\u5668\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u8054\u7cfb\u6559\u7ec3"

    goto :goto_0

    :cond_2
    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7f51\u7edc\u6743\u9650\u662f\u5426\u6253\u5f00"

    .line 7
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u663e\u793a\u8fde\u63a5\u9519\u8bef\u5f39\u7a97:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v1, v3, v0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->j(Ljava/lang/String;Ljava/lang/Runnable;Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil$DialogGrade;)Z

    .line 9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->m:Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->d(Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "showConnectError"

    .line 10
    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->i(Ljava/lang/String;)V

    return-void
.end method

.method private R()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u8fde\u63a5, \u4f46\u5df2\u7ecf\u9500\u6bc1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u8fde\u63a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->a:Z

    if-nez v1, :cond_2

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u5907\u53f7\u4e3a\u7a7a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    .line 8
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/r;

    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->c:Z

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->p:Lcn/mucang/jiakaoyi/uilib/socket/p$a;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->o:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/socket/r;-><init>(ZLcn/mucang/jiakaoyi/uilib/socket/p$a;Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->t()V

    .line 11
    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    .line 12
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g:I

    .line 13
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/m;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/m;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u8fde\u63a5\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \uff0c retryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 15
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->j()V

    .line 16
    instance-of v2, v1, Ljava/net/ConnectException;

    const-wide/16 v3, 0xbb8

    if-eqz v2, :cond_3

    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {p0, v3, v4}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->I(J)V

    const-string v0, "\u670d\u52a1\u5668\u5728\u91cd\u542f\uff0c3\u79d2\u540e\u91cd\u8bd5"

    .line 18
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_3
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->h:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

    sget-object v5, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;->Network:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

    if-eq v2, v5, :cond_5

    .line 21
    iput-object v5, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->h:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

    .line 22
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g:I

    goto :goto_2

    .line 23
    :cond_4
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->h:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

    sget-object v5, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;->Service:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

    if-eq v2, v5, :cond_5

    .line 24
    iput-object v5, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->h:Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$ConnectErrorType;

    .line 25
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g:I

    .line 26
    :cond_5
    :goto_2
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_7

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 27
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/h;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/h;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    .line 28
    :cond_7
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/n;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/n;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 29
    instance-of v0, v1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_8

    .line 30
    check-cast v1, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v1}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_8
    instance-of v0, v1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GaiException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    .line 32
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 33
    :cond_a
    :goto_3
    invoke-virtual {p0, v3, v4}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->I(J)V

    :goto_4
    return-void
.end method

.method static synthetic b(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g:I

    return p1
.end method

.method static synthetic d(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->m:Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->k:Z

    return p1
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", isHandling = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->c()V

    :cond_0
    return-void
.end method

.method private declared-synchronized l()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "McGpsTd"

    goto :goto_0

    :cond_1
    const-string v1, "McBusinessTd"

    :goto_0
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->i:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager$b;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->j:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic n(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->j()V

    return-void
.end method

.method private synthetic o(J)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->j()V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 2
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->b:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u91cd\u8bd5\u9519\u8bef\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 6
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->b:Z

    throw p1
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->P()V

    return-void
.end method

.method static synthetic r()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->c()Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/util/NetworkErrorUtil;->b()V

    return-void
.end method

.method private synthetic s()V
    .locals 1

    const-string v0, "\u6765\u81easocket\u7684\u91cd\u542f"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->i(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->Q()V

    return-void
.end method

.method private synthetic u(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    if-nez v0, :cond_0

    const-wide/16 p1, 0x3e8

    .line 2
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->I(J)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/r;->n(Ljava/lang/String;I)V

    .line 4
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/socket/m;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/m;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic w()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->j()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic y(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->k(J)V

    return-void
.end method


# virtual methods
.method public synthetic D()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->C()V

    return-void
.end method

.method public E(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/k;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/k;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;Ljava/lang/String;I)V

    const/4 p1, 0x3

    invoke-direct {p0, v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->J(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public F(Lcn/mucang/jiakaoyi/uilib/socket/o;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ce8\u518cSocket\u76d1\u542c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public G()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u56de\u6536"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->a:Z

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/l;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/l;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->J(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public declared-synchronized H()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->a:Z

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->f:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->b:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->i:Landroid/os/HandlerThread;

    .line 7
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->j:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->f:Z

    .line 9
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->b:Z

    .line 10
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->a:Z

    const-string v0, "resetAndStart"

    .line 11
    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->i(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->Q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method I(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u91cd\u8fde"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/d;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/d;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;J)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public K([B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->b()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 4
    :cond_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/j;

    invoke-direct {v1, v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/j;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/r;[B)V

    const/4 p1, 0x6

    invoke-direct {p0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->J(Ljava/lang/Runnable;I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method L(B[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->b()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 4
    :cond_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/g;

    invoke-direct {v1, v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/g;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/r;B[B)V

    const/4 p1, 0x6

    invoke-direct {p0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->J(Ljava/lang/Runnable;I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public M(IZ)Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    const/16 p1, 0x63

    goto :goto_0

    :cond_0
    const/16 p1, 0x60

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {p2, p1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p1

    return p1
.end method

.method public O(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/r;->s(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized Q()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->a:Z

    .line 2
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->f:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u7ecf\u5728\u5f00\u59cb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->f:Z

    .line 7
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/socket/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/b;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    invoke-direct {p0, v1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->J(Ljava/lang/Runnable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public S(Lcn/mucang/jiakaoyi/uilib/socket/o;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ce8\u9500Socket\u76d1\u542c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/socket/o;

    .line 3
    invoke-interface {v2}, Lcn/mucang/jiakaoyi/uilib/socket/o;->a()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/socket/o;

    .line 3
    instance-of v3, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/DiffDataModel;

    if-eqz v3, :cond_1

    .line 4
    iget-boolean v3, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->c:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2, p1}, Lcn/mucang/jiakaoyi/uilib/socket/o;->c(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2, p1}, Lcn/mucang/jiakaoyi/uilib/socket/o;->c(Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;)V

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/r;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,\u5173\u95ed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/socket/e;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/e;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->J(Ljava/lang/Runnable;I)V

    return-void
.end method

.method declared-synchronized k(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->b:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u5df2\u7ecf\u5728\u91cd\u8fde"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u91cd\u8fde"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->b:Z

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/socket/i;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/i;-><init>(Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;J)V

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->J(Ljava/lang/Runnable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->d:Lcn/mucang/jiakaoyi/uilib/socket/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConnect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/socket/o;

    .line 3
    invoke-interface {v2}, Lcn/mucang/jiakaoyi/uilib/socket/o;->onConnect()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic p(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->o(J)V

    return-void
.end method

.method public synthetic t()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->s()V

    return-void
.end method

.method public synthetic v(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->u(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic x()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->w()V

    return-void
.end method

.method public synthetic z(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->y(J)V

    return-void
.end method
