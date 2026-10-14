.class Lcn/mucang/jiakaoyi/uilib/e$b;
.super Lcn/mucang/android/core/config/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/e;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-direct {p0}, Lcn/mucang/android/core/config/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object p2, p2, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8fdb\u5165:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object p2, p2, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/base/b;->b()V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6253\u5f00App\u9875\u9762:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\u5f00\u673a\u65f6\u95f4:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/e$b$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/e$b$a;-><init>(Lcn/mucang/jiakaoyi/uilib/e$b;)V

    invoke-virtual {p2, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->F(Lcn/mucang/jiakaoyi/uilib/socket/o;)V

    .line 7
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/e;->K()V

    .line 8
    :cond_0
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/e;->I(Lcn/mucang/jiakaoyi/uilib/e;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/e;->I(Lcn/mucang/jiakaoyi/uilib/e;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9000\u51fa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/e;->J()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/e;->I(Lcn/mucang/jiakaoyi/uilib/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/l;->onActivityStarted(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/e;->Q(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/e;->E(Lcn/mucang/jiakaoyi/uilib/e;)I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/e;->H(Lcn/mucang/jiakaoyi/uilib/e;Z)Z

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/e;->N()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/e;->F(Lcn/mucang/jiakaoyi/uilib/e;)I

    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/l;->onActivityStopped(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/e;->Q(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/e;->G(Lcn/mucang/jiakaoyi/uilib/e;)I

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/e;->E(Lcn/mucang/jiakaoyi/uilib/e;)I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/e;->H(Lcn/mucang/jiakaoyi/uilib/e;Z)Z

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/e$b;->a:Lcn/mucang/jiakaoyi/uilib/e;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/e;->M()V

    :cond_0
    return-void
.end method
