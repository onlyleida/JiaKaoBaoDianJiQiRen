.class Lcom/iflytek/cloud/a/d/e/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/msc/AIMIC$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/d/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/iflytek/cloud/a/d/e/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/iflytek/cloud/a/d/e/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Lcom/iflytek/cloud/a/d/e/b/c;

.field private final j:I

.field private k:Z

.field private l:I


# direct methods
.method private constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->a:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->b:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->d:Ljava/lang/Object;

    const/16 v0, 0x20

    .line 6
    iput v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->e:I

    const/16 v0, 0xfa0

    .line 7
    iput v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->f:I

    const v0, 0x1f400

    .line 8
    iput v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->g:I

    const/16 v1, 0x200

    .line 9
    iput v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->h:I

    .line 10
    new-instance v1, Lcom/iflytek/cloud/a/d/e/b/c;

    const-wide/32 v3, 0x1f400

    const/16 v5, 0x200

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/iflytek/cloud/a/d/e/b/c;-><init>(JIJZZ)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->j:I

    .line 12
    iput-boolean v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->k:Z

    .line 13
    iput v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->l:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/a/d/e/b/a$a;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    mul-int/lit8 p1, p1, 0x20

    .line 5
    iput p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->l:I

    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 4

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 13
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/cloud/a/d/e/a$b;

    .line 16
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/iflytek/cloud/a/d/e/a$b;->onError(I)V

    goto :goto_0

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/cloud/a/d/e/a$a;

    .line 21
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/iflytek/cloud/a/d/e/a$a;->onError(I)V

    goto :goto_1

    .line 22
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 23
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(Lcom/iflytek/cloud/a/d/e/a$a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
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

.method public a(Lcom/iflytek/cloud/a/d/e/a$b;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
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

.method public b(Lcom/iflytek/cloud/a/d/e/a$a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
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

.method public b(Lcom/iflytek/cloud/a/d/e/a$b;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5
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

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onRecogAudio([BIILjava/lang/Object;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->k:Z

    if-eqz v1, :cond_2

    .line 3
    iget-object p3, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {p3}, Lcom/iflytek/cloud/a/d/e/b/c;->e()J

    move-result-wide p3

    int-to-long v3, p2

    add-long/2addr v3, p3

    .line 4
    iget v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->l:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " matched max buffering len: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->l:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", will be clean"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 6
    iput-boolean v2, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->k:Z

    .line 7
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/d/e/b/c;->a()V

    goto :goto_3

    .line 8
    :cond_1
    iget-object p3, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {p3, p1, v2, p2}, Lcom/iflytek/cloud/a/d/e/b/c;->a([BII)V

    goto :goto_3

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/cloud/a/d/e/a$a;

    .line 11
    iget-object v4, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v4}, Lcom/iflytek/cloud/a/d/e/b/c;->i()Z

    move-result v4

    if-nez v4, :cond_4

    .line 12
    iget-object v4, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    :goto_2
    invoke-virtual {v4}, Lcom/iflytek/cloud/a/d/e/b/c;->k()Lcom/iflytek/cloud/a/d/e/b/c$a;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v4}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v4}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v2, v7}, Lcom/iflytek/cloud/a/d/e/a$a;->onRecogAudio([BIILjava/lang/Object;)V

    .line 14
    iget-object v5, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v5, v4}, Lcom/iflytek/cloud/a/d/e/b/c;->a(Lcom/iflytek/cloud/a/d/e/b/c$a;)V

    .line 15
    iget-object v4, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    goto :goto_2

    .line 16
    :cond_3
    iget-object v4, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->i:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v4}, Lcom/iflytek/cloud/a/d/e/b/c;->a()V

    .line 17
    :cond_4
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/iflytek/cloud/a/d/e/a$a;->onRecogAudio([BIILjava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_5
    :goto_3
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 20
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    const/16 p3, 0x5207

    invoke-direct {p2, p1, p3}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/SpeechError;)V

    :goto_4
    return-void
.end method

.method public onWakeupAudio([BIILjava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$b;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/cloud/a/d/e/a$b;

    .line 4
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/iflytek/cloud/a/d/e/a$b;->onWakeupAudio([BIILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 6
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    const/16 p3, 0x5207

    invoke-direct {p2, p1, p3}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/SpeechError;)V

    :goto_1
    return-void
.end method

.method public onWakeupMsg(III[BI[BI[BI)V
    .locals 14

    move-object v1, p0

    :try_start_0
    const-string v0, "onWakeupMsg enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    const/4 v0, 0x1

    move v12, p1

    if-ne v0, v12, :cond_1

    .line 2
    iget-object v2, v1, Lcom/iflytek/cloud/a/d/e/b/a$b;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iget v3, v1, Lcom/iflytek/cloud/a/d/e/b/a$b;->l:I

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/iflytek/cloud/a/d/e/b/a$b;->k:Z

    .line 4
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 5
    :cond_1
    :goto_1
    iget-object v13, v1, Lcom/iflytek/cloud/a/d/e/b/a$b;->c:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6
    :try_start_3
    iget-object v0, v1, Lcom/iflytek/cloud/a/d/e/b/a$b;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/cloud/a/d/e/a$b;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 8
    invoke-interface/range {v2 .. v11}, Lcom/iflytek/cloud/a/d/e/a$b;->onWakeupMsg(III[BI[BI[BI)V

    goto :goto_2

    .line 9
    :cond_2
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v0, "onWakeupMsg leave"

    .line 10
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 11
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 13
    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    const/16 v3, 0x5207

    invoke-direct {v2, v0, v3}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/SpeechError;)V

    :goto_3
    return-void
.end method
