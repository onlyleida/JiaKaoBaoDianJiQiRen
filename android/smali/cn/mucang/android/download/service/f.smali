.class public Lcn/mucang/android/download/service/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/download/service/f$d;,
        Lcn/mucang/android/download/service/f$b;,
        Lcn/mucang/android/download/service/f$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcn/mucang/android/download/service/f$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Lcn/mucang/android/download/a;

.field private d:Z

.field private e:[Lcn/mucang/android/download/service/f$d;

.field private f:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    .line 3
    invoke-static {}, Lcn/mucang/android/download/a;->G()Lcn/mucang/android/download/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/download/a;->H()V

    :cond_0
    const-string v0, "download_module_check_etag"

    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcn/mucang/android/download/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/download/service/f;->d:Z

    .line 6
    invoke-static {}, Lcn/mucang/android/download/a;->G()Lcn/mucang/android/download/a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/download/service/f;->c:Lcn/mucang/android/download/a;

    .line 7
    iput-object p2, p0, Lcn/mucang/android/download/service/f;->b:Landroid/os/Handler;

    .line 8
    new-instance v0, Lcn/mucang/android/download/service/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/mucang/android/download/service/f$b;-><init>(Lcn/mucang/android/download/service/f;Z)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    new-array p2, p1, [Lcn/mucang/android/download/service/f$d;

    iput-object p2, p0, Lcn/mucang/android/download/service/f;->e:[Lcn/mucang/android/download/service/f$d;

    :goto_0
    if-ge v1, p1, :cond_1

    .line 10
    iget-object p2, p0, Lcn/mucang/android/download/service/f;->e:[Lcn/mucang/android/download/service/f$d;

    new-instance v0, Lcn/mucang/android/download/service/f$d;

    invoke-direct {v0, p0}, Lcn/mucang/android/download/service/f$d;-><init>(Lcn/mucang/android/download/service/f;)V

    aput-object v0, p2, v1

    .line 11
    iget-object p2, p0, Lcn/mucang/android/download/service/f;->e:[Lcn/mucang/android/download/service/f$d;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private B([ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    const-string v1, "("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    const-string v3, "download_status = "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    array-length v3, p1

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_0

    const-string v3, " or "

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " and download_group in ("

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    sget-object v1, Lcn/mucang/android/download/service/b;->a:Lcn/mucang/android/download/service/b;

    invoke-static {p2, v1}, Lcn/mucang/android/core/utils/g;->f(Ljava/util/List;Lcn/mucang/android/core/utils/g$a;)Ljava/util/List;

    move-result-object v1

    const-string v3, ","

    .line 13
    invoke-static {v1, v3}, Lcn/mucang/android/core/utils/n0;->h(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "download_status"

    const/16 v4, 0x10

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-static {}, Lcn/mucang/android/download/a;->G()Lcn/mucang/android/download/a;

    move-result-object v3

    const-class v4, Lcn/mucang/android/download/DownloadEntity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, p1, v5}, Lcn/mucang/android/core/db/a;->B(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "select * from t_download where "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " and download_group not in ("

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    sget-object v3, Lcn/mucang/android/download/service/c;->a:Lcn/mucang/android/download/service/c;

    invoke-static {p2, v3}, Lcn/mucang/android/core/utils/g;->f(Ljava/util/List;Lcn/mucang/android/core/utils/g$a;)Ljava/util/List;

    move-result-object p2

    const-string v3, ","

    .line 23
    invoke-static {p2, v3}, Lcn/mucang/android/core/utils/n0;->h(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p2, p0, Lcn/mucang/android/download/service/f;->c:Lcn/mucang/android/download/a;

    const-class v0, Lcn/mucang/android/download/DownloadEntity;

    new-instance v1, Lcn/mucang/android/core/db/e;

    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcn/mucang/android/core/db/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 28
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/DownloadEntity;

    .line 30
    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcn/mucang/android/download/service/f;->q(J)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 31
    :cond_6
    new-instance v1, Lcn/mucang/android/download/service/f$c;

    invoke-direct {v1, v0}, Lcn/mucang/android/download/service/f$c;-><init>(Lcn/mucang/android/download/DownloadEntity;)V

    .line 32
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-direct {p0, v1, v2}, Lcn/mucang/android/download/service/f;->I(Lcn/mucang/android/download/service/f$c;I)V

    goto :goto_1

    .line 34
    :cond_7
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private E(Landroid/content/ContentValues;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->c:Lcn/mucang/android/download/a;

    const-class v1, Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/mucang/android/core/db/a;->A(Ljava/lang/Class;Landroid/content/ContentValues;J)I

    return-void
.end method

.method private F(Lcn/mucang/android/download/DownloadEntity;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getEtag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "etag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/download/service/f;->E(Landroid/content/ContentValues;J)V

    return-void
.end method

.method private G(Lcn/mucang/android/download/DownloadEntity;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "content_length"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "downloaded_length"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/download/service/f;->E(Landroid/content/ContentValues;J)V

    return-void
.end method

.method private H(Lcn/mucang/android/download/service/f$c;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-object v1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v1}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "content_length"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    iget-object v1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v1}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "downloaded_length"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    iget-object p1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/download/service/f;->E(Landroid/content/ContentValues;J)V

    return-void
.end method

.method private I(Lcn/mucang/android/download/service/f$c;I)V
    .locals 6

    .line 1
    iget-object p1, p1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQueueManager setStatus Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadManager"

    .line 5
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    new-instance v2, Lcn/mucang/android/download/DownloadStatusChange;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result v5

    invoke-direct {v2, v3, v4, v5, p2}, Lcn/mucang/android/download/DownloadStatusChange;-><init>(JII)V

    const-string v3, "MSG_DATA_STATUS_CHANGE"

    .line 10
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 14
    invoke-virtual {p1, p2}, Lcn/mucang/android/download/DownloadEntity;->setDownloadStatus(I)V

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v1, 0x20

    if-ne p2, v1, :cond_0

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcn/mucang/android/download/DownloadEntity;->setFinishTime(J)V

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getFinishTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "finish_time"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lcn/mucang/android/download/service/f;->E(Landroid/content/ContentValues;J)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/DownloadEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/service/f;->F(Lcn/mucang/android/download/DownloadEntity;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/DownloadEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/service/f;->G(Lcn/mucang/android/download/DownloadEntity;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/service/f;->H(Lcn/mucang/android/download/service/f$c;)V

    return-void
.end method

.method static synthetic d(Lcn/mucang/android/download/service/f;)[Lcn/mucang/android/download/service/f$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/download/service/f;->e:[Lcn/mucang/android/download/service/f$d;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/download/service/f;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/download/service/f;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/download/service/f;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/download/service/f;Lcn/mucang/android/download/service/f$c;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->I(Lcn/mucang/android/download/service/f$c;I)V

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/download/service/f;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->n(J)V

    return-void
.end method

.method static synthetic i(Lcn/mucang/android/download/service/f;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/download/service/f;->m()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/download/service/f;Lokhttp3/OkHttpClient;Lcn/mucang/android/download/DownloadEntity;)Lokhttp3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->p(Lokhttp3/OkHttpClient;Lcn/mucang/android/download/DownloadEntity;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/download/service/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/download/service/f;->d:Z

    return p0
.end method

.method private m()Lokhttp3/OkHttpClient;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->f:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/http/a;->r()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/download/service/f;->f:Lokhttp3/OkHttpClient;

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->f:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private n(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->c:Lcn/mucang/android/download/a;

    const-class v1, Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/android/core/db/a;->m(Ljava/lang/Class;J)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/DownloadEntity;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->c:Lcn/mucang/android/download/a;

    const-class v1, Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/android/core/db/a;->h(Ljava/lang/Class;J)I

    .line 8
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MSG_DATA_REMOVED"

    .line 10
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private o(J)Lcn/mucang/android/download/service/f$c;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->e:[Lcn/mucang/android/download/service/f$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcn/mucang/android/download/service/f$d;->f()Lcn/mucang/android/download/service/f$c;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3
    iget-object v5, v4, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v5}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_1

    .line 4
    iget-object p1, v4, Lcn/mucang/android/download/service/f$c;->b:Lcn/mucang/android/download/service/f$d;

    if-nez p1, :cond_0

    .line 5
    iput-object v3, v4, Lcn/mucang/android/download/service/f$c;->b:Lcn/mucang/android/download/service/f$d;

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private p(Lokhttp3/OkHttpClient;Lcn/mucang/android/download/DownloadEntity;)Lokhttp3/Response;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/download/DownloadEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v1

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v3

    .line 4
    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v6, v1, v7

    if-nez v6, :cond_1

    cmp-long v6, v3, v7

    if-nez v6, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    move-wide v9, v7

    :cond_1
    cmp-long v3, v1, v9

    if-eqz v3, :cond_2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local.size != db.size, download error\uff01local:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " -- db:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadManager"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p2, v9, v10}, Lcn/mucang/android/download/DownloadEntity;->setDownloadedLength(J)V

    .line 10
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "downloaded_length"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    invoke-virtual {p2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcn/mucang/android/download/service/f;->E(Landroid/content/ContentValues;J)V

    move-wide v1, v9

    .line 13
    :cond_2
    :try_start_1
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {p2}, Lcn/mucang/android/download/DownloadEntity;->getHeaders()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 15
    invoke-virtual {p2}, Lcn/mucang/android/download/DownloadEntity;->getHeaders()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lcn/mucang/android/download/service/f$a;

    invoke-direct {v3, p0}, Lcn/mucang/android/download/service/f$a;-><init>(Lcn/mucang/android/download/service/f;)V

    new-array v5, v4, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p2, v3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_3

    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/download/client/DownloadManager$Request$Header;

    .line 17
    iget-object v5, v3, Lcn/mucang/android/download/client/DownloadManager$Request$Header;->a:Ljava/lang/String;

    iget-object v3, v3, Lcn/mucang/android/download/client/DownloadManager$Request$Header;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_3
    cmp-long p2, v1, v7

    if-lez p2, :cond_4

    const-string p2, "Range"

    const-string v3, "bytes=%d-"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 19
    :cond_4
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "Exception"

    .line 20
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private q(J)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->o(J)Lcn/mucang/android/download/service/f$c;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/download/service/f$c;

    .line 4
    iget-object v2, v2, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic r(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(J)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->c:Lcn/mucang/android/download/a;

    const-class v1, Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/android/core/db/a;->m(Ljava/lang/Class;J)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/DownloadEntity;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    const-wide/16 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/download/DownloadEntity;->setDownloadedLength(J)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/download/DownloadEntity;->setContentLength(J)V

    .line 9
    invoke-direct {p0, v0}, Lcn/mucang/android/download/service/f;->G(Lcn/mucang/android/download/DownloadEntity;)V

    .line 10
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/download/service/f;->D(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Exception"

    .line 11
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected C(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-direct {p0, v0, p1}, Lcn/mucang/android/download/service/f;->B([ILjava/util/List;)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x100
        0x40
    .end array-data
.end method

.method public D(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/download/service/f;->l(J)V

    return-void
.end method

.method public l(J)V
    .locals 3

    const-string v0, "DownloadManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueueManager add id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->c:Lcn/mucang/android/download/a;

    const-class v1, Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/android/core/db/a;->m(Ljava/lang/Class;J)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/DownloadEntity;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->o(J)Lcn/mucang/android/download/service/f$c;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->q(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "DownloadManager"

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQueueManager entities found id:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, Lcn/mucang/android/download/service/f$c;

    invoke-direct {p1, v0}, Lcn/mucang/android/download/service/f$c;-><init>(Lcn/mucang/android/download/DownloadEntity;)V

    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->I(Lcn/mucang/android/download/service/f$c;I)V

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object p2, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string p1, "DownloadManager"

    const-string p2, "DownloadQueueManager added to queue notified"

    .line 11
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected u()V
    .locals 2

    const-string v0, "DownloadManager"

    const-string v1, "DownloadQueueManager networkStatusChanged"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/download/service/f;->B([ILjava/util/List;)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->b:Landroid/os/Handler;

    new-instance v1, Lcn/mucang/android/download/service/f$b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcn/mucang/android/download/service/f$b;-><init>(Lcn/mucang/android/download/service/f;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w(J)V
    .locals 5

    const-string v0, "DownloadManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " at\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->o(J)Lcn/mucang/android/download/service/f$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lcn/mucang/android/download/service/f$c;->b:Lcn/mucang/android/download/service/f$d;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, v0, Lcn/mucang/android/download/service/f$c;->b:Lcn/mucang/android/download/service/f$d;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/download/service/f$c;

    .line 7
    iget-object v2, v1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    .line 8
    iget-object p1, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    const/16 p1, 0x10

    .line 9
    invoke-direct {p0, v1, p1}, Lcn/mucang/android/download/service/f;->I(Lcn/mucang/android/download/service/f$c;I)V

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public x(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/download/service/f$c;

    .line 7
    iget-object v3, v1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v3}, Lcn/mucang/android/download/DownloadEntity;->getDownloadGroup()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 9
    invoke-direct {p0, v1, v2}, Lcn/mucang/android/download/service/f;->I(Lcn/mucang/android/download/service/f$c;I)V

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->e:[Lcn/mucang/android/download/service/f$d;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 12
    invoke-virtual {v4}, Lcn/mucang/android/download/service/f$d;->f()Lcn/mucang/android/download/service/f$c;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 13
    iget-object v6, v5, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    if-eqz v6, :cond_3

    iget-object v5, v5, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v5}, Lcn/mucang/android/download/DownloadEntity;->getDownloadGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from t_download where download_status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " and download_group in ("

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object v3, Lcn/mucang/android/download/service/a;->a:Lcn/mucang/android/download/service/a;

    invoke-static {p1, v3}, Lcn/mucang/android/core/utils/g;->f(Ljava/util/List;Lcn/mucang/android/core/utils/g$a;)Ljava/util/List;

    move-result-object p1

    const-string v3, ","

    .line 20
    invoke-static {p1, v3}, Lcn/mucang/android/core/utils/n0;->h(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 23
    iget-object p1, p0, Lcn/mucang/android/download/service/f;->c:Lcn/mucang/android/download/a;

    const-class v1, Lcn/mucang/android/download/DownloadEntity;

    new-instance v3, Lcn/mucang/android/core/db/e;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcn/mucang/android/core/db/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/DownloadEntity;

    .line 25
    new-instance v1, Lcn/mucang/android/download/service/f$c;

    invoke-direct {v1, v0}, Lcn/mucang/android/download/service/f$c;-><init>(Lcn/mucang/android/download/DownloadEntity;)V

    invoke-direct {p0, v1, v2}, Lcn/mucang/android/download/service/f;->I(Lcn/mucang/android/download/service/f$c;I)V

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->e:[Lcn/mucang/android/download/service/f$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 2
    invoke-static {v3, v4}, Lcn/mucang/android/download/service/f$d;->b(Lcn/mucang/android/download/service/f$d;Z)Z

    .line 3
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z(J)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/download/service/f$c;

    .line 3
    iget-object v2, v1, Lcn/mucang/android/download/service/f$c;->a:Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/download/service/f;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->o(J)Lcn/mucang/android/download/service/f$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, v0, Lcn/mucang/android/download/service/f$c;->b:Lcn/mucang/android/download/service/f$d;

    if-eqz v1, :cond_2

    .line 8
    iget-object p1, v0, Lcn/mucang/android/download/service/f$c;->b:Lcn/mucang/android/download/service/f$d;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/mucang/android/download/service/f$d;->a(Lcn/mucang/android/download/service/f$d;Z)Z

    .line 9
    iget-object p1, v0, Lcn/mucang/android/download/service/f$c;->b:Lcn/mucang/android/download/service/f$d;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/download/service/f;->n(J)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
