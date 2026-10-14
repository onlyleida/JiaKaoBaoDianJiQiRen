.class public abstract Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic d()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->R()V

    return-void
.end method

.method private e(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p3

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    .line 3
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v3, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Valid:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v6, v7, :cond_0

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->UpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v6, v7, :cond_0

    .line 6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Initialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v6, v7, :cond_0

    .line 7
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ReInitialing:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v6, v7, :cond_0

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->AiUpdatingFirmware:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-eq v6, v7, :cond_0

    .line 9
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->f()Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    move-result-object v6

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->Authorising:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    if-ne v6, v7, :cond_1

    :cond_0
    move v2, v3

    const/4 p2, 0x1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    move-object v5, v2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 10
    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_4

    return v4

    :cond_4
    if-eqz v2, :cond_5

    .line 11
    :try_start_1
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->C()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " release communicator\u5931\u8d25:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 13
    :goto_3
    monitor-enter p3

    .line 14
    :try_start_2
    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 15
    monitor-exit p3

    goto :goto_4

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    :goto_4
    return v1

    :catchall_2
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method


# virtual methods
.method public b(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/i;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/b;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;

    .line 4
    invoke-direct {p0, p1, v1, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/b;->e(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;)V

    .line 6
    invoke-virtual {v2, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->F(Ljava/util/List;)V

    .line 7
    iget-boolean v3, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->g:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_2

    add-int/lit8 v8, v8, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v9

    .line 9
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->a()V

    const-wide/16 v10, 0x3e8

    .line 10
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :cond_2
    move-object v6, v9

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_3

    .line 11
    monitor-enter p3

    .line 12
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit p3

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 14
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->e()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5f00\u5931\u8d25:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    if-nez v3, :cond_4

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u5931\u8d25\uff0c\u4e0d\u9700\u8981\u5f39\u7a97\u663e\u793a\uff0capp\u7ee7\u7eed\u4f7f\u7528\uff0c\u5e76\u57281\u5206\u949f\u540e\u91cd\u8bd5"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 16
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/a;

    const-wide/32 v2, 0xea60

    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 17
    :cond_4
    throw v6

    :cond_5
    return-object p1

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\u901a\u4fe1\u53c2\u6570\u6ca1\u6709\u914d\u7f6e"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/config/McChannelConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation
.end method
