.class Lcom/iflytek/cloud/a/d/e/b/a$c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cloud/a/d/e/b/a$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/a/d/e/b/a$c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/a/d/e/b/a$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "alsa data save thread enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/16 v0, 0x5207

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Landroid/os/MemoryFile;

    const v3, 0x3b15000

    invoke-direct {v2, v1, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v3, 0x0

    .line 3
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget-object v6, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v6}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a(Lcom/iflytek/cloud/a/d/e/b/a$c;)Z

    move-result v6

    const v7, 0x3a98000

    if-eqz v6, :cond_3

    .line 5
    iget-object v6, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v6}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 6
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v8}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c;->i()Z

    move-result v8

    if-nez v8, :cond_0

    .line 7
    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v8}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c;->k()Lcom/iflytek/cloud/a/d/e/b/c$a;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v9, v3, v4, v10}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 9
    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v4, v9

    .line 10
    iget-object v9, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v9}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/iflytek/cloud/a/d/e/b/c;->a(Lcom/iflytek/cloud/a/d/e/b/c$a;)V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v8}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c;->a()V

    .line 12
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gt v7, v4, :cond_1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    :cond_1
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 14
    :try_start_4
    iget-object v6, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v6}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/cloud/a/d/e/b/c;->i()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 16
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_1
    move-exception v3

    .line 17
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 18
    :cond_3
    iget-object v6, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v6}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v6

    monitor-enter v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 19
    :goto_2
    :try_start_8
    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v8}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c;->i()Z

    move-result v8

    if-nez v8, :cond_4

    .line 20
    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v8}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c;->k()Lcom/iflytek/cloud/a/d/e/b/c$a;

    move-result-object v8

    .line 21
    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v9, v3, v4, v10}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 22
    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c$a;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v4, v9

    .line 23
    iget-object v9, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v9}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/iflytek/cloud/a/d/e/b/c;->a(Lcom/iflytek/cloud/a/d/e/b/c$a;)V

    goto :goto_2

    .line 24
    :cond_4
    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v8}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iflytek/cloud/a/d/e/b/c;->a()V

    .line 25
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 26
    :try_start_9
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v8}, Lcom/iflytek/cloud/a/d/e/b/a$c;->c(Lcom/iflytek/cloud/a/d/e/b/a$c;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "rw"

    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v5, :cond_5

    sub-int v5, v7, v4

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-lez v5, :cond_6

    .line 27
    :try_start_a
    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    .line 28
    invoke-static {v8, v6, v2, v4, v5}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a(Lcom/iflytek/cloud/a/d/e/b/a$c;Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 29
    new-instance v5, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v5, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    const-string v8, "save last memory file data failed!"

    .line 30
    invoke-static {v8}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v3

    goto :goto_5

    :cond_6
    move-object v5, v1

    :goto_4
    if-nez v5, :cond_7

    .line 31
    iget-object v8, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    .line 32
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v8, v6, v2, v3, v4}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a(Lcom/iflytek/cloud/a/d/e/b/a$c;Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z

    move-result v3

    if-nez v3, :cond_7

    .line 33
    new-instance v5, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v5, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    const-string v3, "save current memory file data failed!"

    .line 34
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_6

    :catchall_3
    move-exception v3

    .line 35
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v3

    move-object v6, v1

    goto :goto_5

    :catchall_5
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v6, v2

    .line 36
    :goto_5
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const-string v4, "\u4fdd\u5b58\u6587\u4ef6\u5931\u8d25\uff01"

    .line 37
    invoke-static {v4}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 38
    new-instance v5, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v5, v3, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 39
    :try_start_d
    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    goto :goto_7

    :catchall_6
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    if-eqz v6, :cond_9

    .line 40
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_9

    .line 41
    :goto_8
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const-string v0, "\u5173\u95ed\u6587\u4ef6\u5f02\u5e38\uff01"

    .line 42
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 43
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a(Lcom/iflytek/cloud/a/d/e/b/a$c;Ljava/lang/Thread;)Ljava/lang/Thread;

    if-eqz v5, :cond_a

    .line 44
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;->a:Lcom/iflytek/cloud/a/d/e/b/a$c;

    iget-object v0, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->m:Lcom/iflytek/cloud/a/d/e/b/a;

    invoke-static {v0}, Lcom/iflytek/cloud/a/d/e/b/a;->c(Lcom/iflytek/cloud/a/d/e/b/a;)Lcom/iflytek/cloud/a/d/e/b/a$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_a
    const-string v0, "alsa data save thread exit"

    .line 45
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method
