.class public Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

.field private final d:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

.field private final e:Ljava/lang/Runnable;

.field private final f:Lcn/mucang/android/jiakaoyi/framework/utils/v;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->e:Ljava/lang/Runnable;

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->c:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->d:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    const/4 p2, 0x5

    .line 7
    iput p2, p1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->intervalSeconds:I

    .line 8
    iput p2, p1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->stopBeatDiff:I

    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->d:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    .line 10
    :goto_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/utils/v;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->d:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->intervalSeconds:I

    mul-int/lit16 p2, p2, 0x3e8

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/framework/utils/v;-><init>(Ljava/lang/Runnable;I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->f:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->c:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->d:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->stopBeatDiff:I

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->c:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5fc3\u8df3\u5dee\u5f02\u592a\u5927,\u91cd\u8fde,receiveIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sendIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->i()V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->c:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;->a(I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private h()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->c:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u5fc3\u8df3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->f:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->g()V

    return-void
.end method


# virtual methods
.method public e(Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->d:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->stopBeatDiff:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->stopBeatDiff:I

    .line 2
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->intervalSeconds:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->intervalSeconds:I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->f:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/HeartBeatPolicy;->intervalSeconds:I

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->f(I)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->i()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->h()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->c:Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a$b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u505c\u6b62\u5fc3\u8df3,receiveIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sendIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->f:Lcn/mucang/android/jiakaoyi/framework/utils/v;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/v;->h()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/heartbeat/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
