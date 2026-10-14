.class public Lcom/iflytek/cloud/msc/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/iflytek/cloud/msc/util/f;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/cloud/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/cloud/util/FileDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Lcom/iflytek/cloud/msc/util/b;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field protected j:Ljava/lang/Object;

.field private k:Lcom/iflytek/cloud/msc/util/l/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/msc/util/f;->f:Lcom/iflytek/cloud/msc/util/b;

    const-string v0, "download_uri"

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/msc/util/f;->g:Ljava/lang/String;

    const-string v0, "file_path"

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/msc/util/f;->h:Ljava/lang/String;

    const-string v0, "file_md5"

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/msc/util/f;->i:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/msc/util/f;->j:Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/iflytek/cloud/msc/util/f$a;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/msc/util/f$a;-><init>(Lcom/iflytek/cloud/msc/util/f;)V

    iput-object v0, p0, Lcom/iflytek/cloud/msc/util/f;->k:Lcom/iflytek/cloud/msc/util/l/a;

    .line 8
    iput-object p1, p0, Lcom/iflytek/cloud/msc/util/f;->e:Landroid/content/Context;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/msc/util/f;->b:Ljava/util/HashMap;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/msc/util/f;->d:Ljava/util/HashMap;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/msc/util/f;->c:Ljava/util/HashMap;

    .line 12
    iget-object p1, p0, Lcom/iflytek/cloud/msc/util/f;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/b;->a(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/b;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/msc/util/f;->f:Lcom/iflytek/cloud/msc/util/b;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/msc/util/f;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/msc/util/f;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/cloud/b/a;

    const-string v5, "download_uri"

    .line 22
    invoke-virtual {v2, v5}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "file_path"

    .line 23
    invoke-virtual {v2, v5}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "file_md5"

    .line 24
    invoke-virtual {v2, v5}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    monitor-exit v0

    return-wide v3

    :cond_1
    const-wide/16 p1, 0x0

    .line 26
    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/util/f;->a:Lcom/iflytek/cloud/msc/util/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/iflytek/cloud/msc/util/f;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/msc/util/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/msc/util/f;->a:Lcom/iflytek/cloud/msc/util/f;

    .line 3
    :cond_0
    sget-object p0, Lcom/iflytek/cloud/msc/util/f;->a:Lcom/iflytek/cloud/msc/util/f;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/util/FileDownloadListener;)I
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/msc/util/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/iflytek/cloud/msc/util/f;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 6
    iget-object p1, p0, Lcom/iflytek/cloud/msc/util/f;->c:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    return p1

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p4, :cond_1

    .line 8
    iget-object v2, p0, Lcom/iflytek/cloud/msc/util/f;->c:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    new-instance p4, Lcom/iflytek/cloud/b/a;

    invoke-direct {p4}, Lcom/iflytek/cloud/b/a;-><init>()V

    const-string v2, "download_uri"

    .line 10
    invoke-virtual {p4, v2, p1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "file_path"

    .line 11
    invoke-virtual {p4, v2, p2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "file_md5"

    .line 12
    invoke-virtual {p4, p2, p3}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/iflytek/cloud/msc/util/f;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p2, p0, Lcom/iflytek/cloud/msc/util/f;->f:Lcom/iflytek/cloud/msc/util/b;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/iflytek/cloud/msc/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tempFile:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
