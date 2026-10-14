.class public Lcn/mucang/android/core/callphone/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcn/mucang/android/core/callphone/a;


# instance fields
.field private a:Ljava/util/concurrent/locks/ReentrantLock;

.field private final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/callphone/a;

    invoke-direct {v0}, Lcn/mucang/android/core/callphone/a;-><init>()V

    sput-object v0, Lcn/mucang/android/core/callphone/a;->d:Lcn/mucang/android/core/callphone/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/callphone/a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/callphone/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/callphone/a;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/callphone/a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/core/callphone/a;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/callphone/a;->g(J)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/core/callphone/a;Lcn/mucang/android/core/callphone/PhoneCallRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/a;->k(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V

    return-void
.end method

.method private g(J)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/callphone/a;->n()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v2, p0, Lcn/mucang/android/core/callphone/a;->c:Z

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/core/callphone/PhoneCallLog;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6
    invoke-virtual {v3}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->getCallTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    invoke-virtual {v3}, Lcn/mucang/android/core/callphone/PhoneCallLog;->getAppSwitchInterval()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    sub-long/2addr v4, p1

    .line 7
    invoke-virtual {v3}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->getCallTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 9
    invoke-virtual {v3, v4}, Lcn/mucang/android/core/callphone/PhoneCallLog;->setAppSwitchInterval(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x14

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_7

    .line 13
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/core/callphone/PhoneCallLog;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_3

    add-int/lit8 v5, p2, -0x1

    if-ge v4, v5, :cond_3

    goto :goto_4

    .line 15
    :cond_3
    new-instance v5, Lcn/mucang/android/core/callphone/b;

    invoke-direct {v5}, Lcn/mucang/android/core/callphone/b;-><init>()V

    invoke-virtual {v5, v1}, Lcn/mucang/android/core/callphone/b;->b(Ljava/util/List;)Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 16
    invoke-virtual {v5}, Lcn/mucang/android/core/api/ApiResponse;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 17
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sent batch logs with size of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", success:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " message:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_5

    .line 18
    invoke-virtual {v5}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CallPhoneManager"

    .line 19
    invoke-static {v7, v5}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_6

    .line 20
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22
    :cond_7
    invoke-direct {p0, v3}, Lcn/mucang/android/core/callphone/a;->o(Ljava/util/List;)V

    .line 23
    iput-boolean v2, p0, Lcn/mucang/android/core/callphone/a;->c:Z

    return-void
.end method

.method public static h()Lcn/mucang/android/core/callphone/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/callphone/a;->d:Lcn/mucang/android/core/callphone/a;

    return-object v0
.end method

.method private i(Ljava/lang/String;)Lcn/mucang/android/core/callphone/PhoneCallLog;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/callphone/a;->n()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/core/callphone/PhoneCallLog;

    .line 4
    invoke-virtual {v3}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private k(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/callphone/a;->n()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/core/callphone/a;->c:Z

    .line 4
    new-instance v1, Lcn/mucang/android/core/callphone/PhoneCallLog;

    invoke-direct {v1, p1}, Lcn/mucang/android/core/callphone/PhoneCallLog;-><init>(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0, v0}, Lcn/mucang/android/core/callphone/a;->o(Ljava/util/List;)V

    return-void
.end method

.method private l(Lcn/mucang/android/core/callphone/PhoneCallRequest;)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->setCallTime(J)V

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private static m(Lcn/mucang/android/core/callphone/PhoneCallLog;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/callphone/PhoneCallLog;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/callphone/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    const-string v0, "failed_records_new_api_2.txt"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->n(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcn/mucang/android/core/callphone/a;->t(Ljava/lang/String;)Lcn/mucang/android/core/callphone/PhoneCallLog;

    move-result-object v2

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "\u9ed8\u8ba4\u66ff\u6362"

    .line 9
    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/core/callphone/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/mucang/android/core/callphone/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 11
    throw v0
.end method

.method private o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/callphone/PhoneCallLog;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/callphone/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/callphone/PhoneCallLog;

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/callphone/a;->m(Lcn/mucang/android/core/callphone/PhoneCallLog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "failed_records_new_api_2.txt"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/j;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/j;->s(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcn/mucang/android/core/callphone/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/mucang/android/core/callphone/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 10
    throw p1
.end method

.method private p(Lcn/mucang/android/core/callphone/PhoneCallLog;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/callphone/a;->n()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/android/core/callphone/a;->o(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private q(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/callphone/a$b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/callphone/a$b;-><init>(Lcn/mucang/android/core/callphone/a;Lcn/mucang/android/core/callphone/PhoneCallRequest;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static t(Ljava/lang/String;)Lcn/mucang/android/core/callphone/PhoneCallLog;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/core/callphone/PhoneCallLog;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/core/callphone/PhoneCallLog;

    return-object p0
.end method


# virtual methods
.method public d(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/callphone/a;->s(Lcn/mucang/android/core/callphone/PhoneCallRequest;)Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/a;->i(Ljava/lang/String;)Lcn/mucang/android/core/callphone/PhoneCallLog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->isNeedConfirm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/core/callphone/PhoneCallLog;->getConfirmed()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/callphone/PhoneCallLog;->setConfirmed(I)V

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/a;->p(Lcn/mucang/android/core/callphone/PhoneCallLog;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/core/callphone/a;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/a;->i(Ljava/lang/String;)Lcn/mucang/android/core/callphone/PhoneCallLog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->isNeedConfirm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/core/callphone/PhoneCallLog;->getConfirmed()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/a;->l(Lcn/mucang/android/core/callphone/PhoneCallRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/callphone/PhoneCallLog;->setConfirmed(I)V

    .line 5
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/a;->p(Lcn/mucang/android/core/callphone/PhoneCallLog;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/callphone/a;->c:Z

    return v0
.end method

.method public r()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/callphone/a;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/core/callphone/a$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/callphone/a$a;-><init>(Lcn/mucang/android/core/callphone/a;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s(Lcn/mucang/android/core/callphone/PhoneCallRequest;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/callphone/PhoneCallRequest;->isNeedConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/a;->q(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/a;->l(Lcn/mucang/android/core/callphone/PhoneCallRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/core/callphone/a;->q(Lcn/mucang/android/core/callphone/PhoneCallRequest;)V

    :cond_1
    return v0
.end method
