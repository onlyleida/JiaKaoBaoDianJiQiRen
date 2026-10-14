.class public Lcn/mucang/android/jiakaoyi/engine/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/engine/i/d$b;
    }
.end annotation


# instance fields
.field private volatile a:Landroid/os/HandlerThread;

.field private volatile b:Landroid/os/Handler;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->c:Z

    .line 5
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "EventCheckerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->a:Landroid/os/HandlerThread;

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/engine/i/d;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/i/d;->g(Landroid/os/Message;)V

    return-void
.end method

.method private d()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    const-string v0, "createCheckerHandler null"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/i/d$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/engine/i/d$a;-><init>(Lcn/mucang/android/jiakaoyi/engine/i/d;Landroid/os/Looper;)V

    return-object v1
.end method

.method private g(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    const/16 v3, 0x14

    if-eqz v2, :cond_1

    if-eq v1, v3, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x208

    if-ne v1, v2, :cond_3

    .line 4
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->c:Z

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 6
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/i/d$b;

    .line 8
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/i/d$b;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/i/d$b;->b:[I

    invoke-interface {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    goto :goto_0

    :cond_4
    const/16 v2, 0xe

    if-ne v1, v2, :cond_5

    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 10
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x13

    if-ne v1, v2, :cond_6

    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 12
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    goto :goto_0

    :cond_6
    if-ne v1, v3, :cond_7

    .line 13
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->stop()V

    .line 14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/c/e;

    .line 15
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x15

    if-ne v1, v2, :cond_8

    .line 16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 17
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x16

    if-ne v1, v2, :cond_9

    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 19
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    goto :goto_0

    :cond_9
    const/16 v2, 0x17

    if-ne v1, v2, :cond_a

    .line 20
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->reset()V

    goto :goto_0

    :cond_a
    const/16 v2, 0x18

    if-ne v1, v2, :cond_b

    .line 21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 22
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->e(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    :cond_b
    :goto_0
    return-void
.end method

.method private o(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    const-string v1, "ExamScheduler"

    const-string v2, "\u5f15\u64ce\u6d88\u606f\u53d1\u9001\u5931\u8d25:"

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , reason : checkerHandler is Null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x16

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->o(Landroid/os/Message;)V

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x208

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->o(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x15

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->o(Landroid/os/Message;)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->a:Landroid/os/HandlerThread;

    .line 6
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method public h(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exeThisStep arg1 14 ; obj "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    .line 4
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->o(Landroid/os/Message;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exeThisStep isStop "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ; checkerHandler "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->c:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/engine/i/d$b;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/i/d$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->o(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->c:Z

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x17

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->o(Landroid/os/Message;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->c:Z

    return-void
.end method

.method public p(Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/e;

    return-void
.end method

.method public q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->d()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->c:Z

    const/4 v0, 0x1

    return v0
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->o(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    return-void
.end method

.method public s(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x13

    .line 3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/i/d;->o(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method
