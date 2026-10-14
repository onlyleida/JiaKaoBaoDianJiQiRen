.class Lcom/iflytek/cloud/a/d/e/b/a$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/d/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/iflytek/cloud/a/d/e/b/c;

.field private e:I

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/iflytek/cloud/SpeechError;

.field private h:J

.field private i:Z

.field final synthetic j:Lcom/iflytek/cloud/a/d/e/b/a;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/a/d/e/b/a;Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->j:Lcom/iflytek/cloud/a/d/e/b/a;

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    iput p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->a:I

    const/16 v1, 0x10

    .line 5
    iput v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->b:I

    const/16 v1, 0x3e8

    .line 6
    iput v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->c:I

    .line 7
    invoke-static {p1}, Lcom/iflytek/cloud/a/d/e/b/a;->a(Lcom/iflytek/cloud/a/d/e/b/a;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->d:Lcom/iflytek/cloud/a/d/e/b/c;

    const/16 p1, 0xa

    .line 8
    iput p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->e:I

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->f:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->g:Lcom/iflytek/cloud/SpeechError;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->h:J

    .line 12
    iput-boolean p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->i:Z

    const/4 p2, 0x0

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x5

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()V
    .locals 6

    .line 21
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->j:Lcom/iflytek/cloud/a/d/e/b/a;

    invoke-static {v0}, Lcom/iflytek/cloud/a/d/e/b/a;->d(Lcom/iflytek/cloud/a/d/e/b/a;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->h:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->d:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/c;->c()J

    move-result-wide v2

    const-wide/32 v4, 0xc000

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->d:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 25
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/c;->e()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x78000

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 26
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->i:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->i:Z

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->d:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/c;->b()V

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->h:J

    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update priority enter, target priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread group name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v2

    if-gt p1, v2, :cond_0

    const-string v1, "get a thread group has target priority"

    .line 7
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "exception while improve thread group priority"

    .line 11
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 12
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 13
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    .line 14
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v2

    if-le p1, v2, :cond_2

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set thread priority to target, after that is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    const-string v0, "exception while set thread priority"

    .line 18
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    const-string p1, "update priority leave"

    .line 20
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/iflytek/cloud/SpeechError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->g:Lcom/iflytek/cloud/SpeechError;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->e:I

    :goto_0
    iput v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->e:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set priority, target aimic priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", real target priority: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->e:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 5
    iget p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->e:I

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/e/b/a$d;->b(I)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->g:Lcom/iflytek/cloud/SpeechError;

    return-void
.end method

.method public run()V
    .locals 8

    const-string v0, "aimic audio writing thread enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->e:I

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/a/d/e/b/a$d;->b(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_1
    iget-object v4, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->j:Lcom/iflytek/cloud/a/d/e/b/a;

    invoke-static {v4}, Lcom/iflytek/cloud/a/d/e/b/a;->b(Lcom/iflytek/cloud/a/d/e/b/a;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->d:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v4}, Lcom/iflytek/cloud/a/d/e/b/c;->k()Lcom/iflytek/cloud/a/d/e/b/c$a;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x1e

    if-gt v5, v1, :cond_1

    .line 5
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current buf container size in aimic thread is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->d:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v5}, Lcom/iflytek/cloud/a/d/e/b/c;->f()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_2

    :catchall_0
    move-exception v1

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 6
    :cond_1
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/iflytek/msc/AIMIC;->getHandler()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v4}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v2, v3, v5, v0, v6}, Lcom/iflytek/msc/AIMIC;->AIMICAudioWrite(J[BII)I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->d:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/a/d/e/b/c;->a(Lcom/iflytek/cloud/a/d/e/b/c$a;)V

    if-eqz v2, :cond_0

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIMICAudioWrite error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->j:Lcom/iflytek/cloud/a/d/e/b/a;

    invoke-static {v3}, Lcom/iflytek/cloud/a/d/e/b/a;->c(Lcom/iflytek/cloud/a/d/e/b/a;)Lcom/iflytek/cloud/a/d/e/b/a$b;

    move-result-object v3

    new-instance v4, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v4, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/SpeechError;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    move-object v7, v2

    move v2, v1

    move-object v1, v7

    goto :goto_5

    :catch_1
    move-exception v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    move-object v7, v2

    move v2, v1

    move-object v1, v7

    goto :goto_6

    .line 10
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a$d;->b()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 v4, 0x3e8

    if-gt v4, v2, :cond_4

    .line 11
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 12
    :try_start_5
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->d:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/d/e/b/c;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "aimic audio writing will suspend"

    .line 13
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string v2, "aimic audio writing is waked"

    .line 15
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 16
    :cond_3
    monitor-exit p0

    const/4 v2, 0x0

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v2

    move v4, v3

    const/4 v3, 0x0

    goto :goto_3

    :catch_2
    move-exception v2

    move v4, v3

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x10

    .line 17
    :try_start_7
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v4, v3

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_1

    :catchall_4
    move-exception v4

    move v7, v2

    move v2, v1

    move-object v1, v4

    move v4, v3

    move v3, v7

    .line 19
    :goto_5
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 20
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v5, 0x5207

    invoke-direct {v1, v5}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->g:Lcom/iflytek/cloud/SpeechError;

    goto :goto_7

    :catch_3
    move-exception v4

    move v7, v2

    move v2, v1

    move-object v1, v4

    move v4, v3

    move v3, v7

    .line 21
    :goto_6
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 22
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v5, 0x4e35

    invoke-direct {v1, v5}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->g:Lcom/iflytek/cloud/SpeechError;

    :goto_7
    move v1, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_1

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$d;->d:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/c;->a()V

    const-string v0, "aimic audio writing thread exited"

    .line 24
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method
