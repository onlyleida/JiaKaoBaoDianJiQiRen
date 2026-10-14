.class public Lcom/iflytek/cloud/a/d/e/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/d/e/b/c$a;,
        Lcom/iflytek/cloud/a/d/e/b/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/iflytek/cloud/a/d/e/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/iflytek/cloud/a/d/e/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z

.field private k:J

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JIJZZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    const/16 v0, 0x200

    .line 4
    iput v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->c:I

    const-wide/16 v0, 0x1400

    .line 5
    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->d:J

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    .line 8
    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->g:J

    .line 9
    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->h:J

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->j:Z

    .line 12
    iput-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->k:J

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    .line 14
    iput-wide p1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    .line 15
    iput-wide p4, p0, Lcom/iflytek/cloud/a/d/e/b/c;->d:J

    .line 16
    iput p3, p0, Lcom/iflytek/cloud/a/d/e/b/c;->c:I

    .line 17
    iput-boolean p6, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    .line 18
    iput-boolean p7, p0, Lcom/iflytek/cloud/a/d/e/b/c;->j:Z

    mul-int/lit8 p3, p3, 0x2

    int-to-long p3, p3

    add-long/2addr p1, p3

    .line 19
    iput-wide p1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->k:J

    if-nez p6, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/c;->h()V

    :cond_0
    return-void
.end method

.method private d()Lcom/iflytek/cloud/a/d/e/b/c$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/a/d/e/b/c$a;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current buffer len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", has match max len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 5
    iget-boolean v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    if-nez v2, :cond_3

    .line 6
    iget v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->c:I

    .line 7
    new-array v1, v0, [B

    .line 8
    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    .line 9
    :cond_3
    new-instance v2, Lcom/iflytek/cloud/a/d/e/b/c$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/iflytek/cloud/a/d/e/b/c$a;-><init>([BLjava/lang/Integer;)V

    move-object v0, v2

    :cond_4
    return-object v0
.end method

.method private h()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 2
    iget v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3
    iget v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->c:I

    new-array v3, v2, [B

    .line 4
    new-instance v4, Lcom/iflytek/cloud/a/d/e/b/c$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lcom/iflytek/cloud/a/d/e/b/c$a;-><init>([BLjava/lang/Integer;)V

    .line 5
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    iget v4, p0, Lcom/iflytek/cloud/a/d/e/b/c;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->k:J

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/a/d/e/b/c$a;

    if-eqz v0, :cond_1

    .line 2
    iget-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->g:J

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/d/e/b/c;->g()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/iflytek/cloud/a/d/e/b/c;->h:J

    sub-long/2addr v5, v1

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/a/d/e/b/c$a;

    .line 5
    iget-boolean v3, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/c$a;->a()V

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    iput-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->g:J

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 6
    :try_start_0
    iput-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->g:J

    .line 7
    iput-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->h:J

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/cloud/a/d/e/b/c$a;

    .line 10
    iget-boolean v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/c$a;->a()V

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    .line 3
    iget p1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->c:I

    mul-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->k:J

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/iflytek/cloud/a/d/e/b/c$a;)V
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 15
    :try_start_0
    iget-boolean v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/e/b/c$a;->a()V

    .line 17
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_0
    iget-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    iget-wide v3, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    array-length p1, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    .line 21
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    add-int v0, p2, p3

    if-eqz p1, :cond_a

    .line 22
    array-length v1, p1

    if-lt v1, v0, :cond_a

    if-ltz p3, :cond_a

    iget-boolean v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    if-eqz v1, :cond_0

    if-gtz p2, :cond_a

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    .line 24
    :try_start_0
    iget-wide v4, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_9

    if-lez p3, :cond_9

    .line 25
    iget-boolean v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->j:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->h:J

    iget-wide v6, p0, Lcom/iflytek/cloud/a/d/e/b/c;->g:J

    sub-long/2addr v2, v6

    int-to-long v6, p3

    add-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current start="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->g:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", current end="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->h:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", data len="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", has over max len="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 27
    iget-boolean v3, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    if-nez v3, :cond_3

    .line 28
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/cloud/a/d/e/b/c$a;

    :cond_3
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 29
    invoke-virtual {v2}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {v2}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    .line 31
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/c;->d()Lcom/iflytek/cloud/a/d/e/b/c$a;

    move-result-object v2

    :goto_2
    const/4 v4, 0x0

    :cond_6
    :goto_3
    if-ge p2, v0, :cond_9

    .line 32
    iget-boolean v5, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    if-eqz v5, :cond_7

    .line 33
    invoke-virtual {v2, p1}, Lcom/iflytek/cloud/a/d/e/b/c$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, p3

    goto :goto_4

    :cond_7
    sub-int v5, v0, p2

    .line 34
    invoke-virtual {v2}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 35
    invoke-virtual {v2}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, p2, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    add-int/2addr p2, v5

    add-int v6, v4, v5

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/iflytek/cloud/a/d/e/b/c$a;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-wide v6, p0, Lcom/iflytek/cloud/a/d/e/b/c;->h:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/iflytek/cloud/a/d/e/b/c;->h:J

    .line 38
    iget-object v5, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 39
    iget-object v5, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_8
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/c;->l()V

    if-ge p2, v0, :cond_6

    .line 41
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/c;->d()Lcom/iflytek/cloud/a/d/e/b/c$a;

    move-result-object v2

    goto :goto_2

    .line 42
    :cond_9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 43
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->d:J

    iget-wide v4, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 4
    iget-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    iget v3, p0, Lcom/iflytek/cloud/a/d/e/b/c;->c:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->c:I

    mul-int v1, v1, v2

    int-to-long v1, v1

    .line 3
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->h:J

    iget-wide v3, p0, Lcom/iflytek/cloud/a/d/e/b/c;->g:J

    sub-long/2addr v1, v3

    .line 3
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->e:J

    .line 3
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    .line 3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k()Lcom/iflytek/cloud/a/d/e/b/c$a;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/cloud/a/d/e/b/c$a;

    .line 4
    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->g:J

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->g:J

    .line 5
    iget-boolean v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->i:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/iflytek/cloud/a/d/e/b/c;->f:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
