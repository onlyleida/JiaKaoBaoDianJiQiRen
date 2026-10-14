.class public final Lcn/mucang/android/download/client/DownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/download/client/DownloadManager$f;,
        Lcn/mucang/android/download/client/DownloadManager$Request;,
        Lcn/mucang/android/download/client/DownloadManager$e;
    }
.end annotation


# static fields
.field static final c:[I


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/download/client/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcn/mucang/android/download/client/DownloadManager;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/download/client/DownloadManager;->b:Ljava/util/List;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcn/mucang/android/download/a;->H()V

    .line 6
    invoke-static {}, Lcn/mucang/android/download/notification/a;->j()Lcn/mucang/android/download/notification/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/download/client/DownloadManager;->b(Lcn/mucang/android/download/client/b;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    const-class v3, Lcn/mucang/android/download/service/DownloadMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/i0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/download/client/DownloadManager$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/download/client/DownloadManager;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/DownloadManager$Request;)Lcn/mucang/android/download/DownloadEntity;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/client/DownloadManager;->f(Lcn/mucang/android/download/client/DownloadManager$Request;)Lcn/mucang/android/download/DownloadEntity;

    move-result-object p0

    return-object p0
.end method

.method private f(Lcn/mucang/android/download/client/DownloadManager$Request;)Lcn/mucang/android/download/DownloadEntity;
    .locals 6

    const-string v0, "DownloadManager"

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/download/DownloadEntity;->createFromRequest(Lcn/mucang/android/download/client/DownloadManager$Request;)Lcn/mucang/android/download/DownloadEntity;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p1, Lcn/mucang/android/download/client/DownloadManager$Request;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/download/client/DownloadManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/mucang/android/download/DownloadEntity;->setStorePath(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/download/a;->G()Lcn/mucang/android/download/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue inserted entity "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 7
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    const-class v5, Lcn/mucang/android/download/service/DownloadService;

    invoke-direct {p1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "ACTION_ENQUEUE"

    .line 8
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "PARAM_TASK_ID"

    .line 9
    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10
    iget-object v2, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/i0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue finished, returning "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "Exception"

    .line 12
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public static i()Lcn/mucang/android/download/client/DownloadManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/download/client/DownloadManager$e;->a:Lcn/mucang/android/download/client/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public b(Lcn/mucang/android/download/client/b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Lcn/mucang/android/download/client/a;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    const-class v2, Lcn/mucang/android/download/service/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Lcn/mucang/android/download/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/download/c;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/download/c;->c()Ljava/io/File;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lcn/mucang/android/download/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcn/mucang/android/download/client/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcn/mucang/android/download/client/a;->e()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect,e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public g(Lcn/mucang/android/download/client/DownloadManager$Request;Lcn/mucang/android/download/client/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/download/client/DownloadManager$Request;",
            "Lcn/mucang/android/download/client/c<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueue entered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p1, Lcn/mucang/android/download/client/DownloadManager$Request;->g:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/download/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u65e0\u6548\u7684\u5b58\u50a8\u8def\u5f84"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p2, p1}, Lcn/mucang/android/download/client/DownloadManager;->u(Lcn/mucang/android/download/client/c;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcn/mucang/android/download/client/DownloadManager$a;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/download/client/DownloadManager$a;-><init>(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/DownloadManager$Request;Lcn/mucang/android/download/client/c;)V

    invoke-virtual {p0, v0}, Lcn/mucang/android/download/client/DownloadManager;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected h(Lcn/mucang/android/download/client/DownloadManager$f;)Lcn/mucang/android/core/db/e;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p1, Lcn/mucang/android/download/client/DownloadManager$f;->a:[J

    const-string v3, ")"

    const-string v4, "("

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    array-length v2, v2

    if-lez v2, :cond_2

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v6, p1, Lcn/mucang/android/download/client/DownloadManager$f;->a:[J

    array-length v6, v6

    if-ge v2, v6, :cond_1

    const-string v6, "_id = ?"

    .line 6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget-object v6, p1, Lcn/mucang/android/download/client/DownloadManager$f;->a:[J

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_0

    const-string v6, " or "

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    :cond_0
    iget-object v6, p1, Lcn/mucang/android/download/client/DownloadManager$f;->a:[J

    aget-wide v7, v6, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget v7, p1, Lcn/mucang/android/download/client/DownloadManager$f;->b:I

    .line 14
    sget-object v8, Lcn/mucang/android/download/client/DownloadManager;->c:[I

    array-length v9, v8

    :goto_1
    if-ge v5, v9, :cond_4

    aget v10, v8, v5

    and-int v11, v10, v7

    if-eqz v11, :cond_3

    const-string v11, "download_status = ? or "

    .line 15
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v7, 0x4

    if-le v5, v7, :cond_5

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 19
    :cond_5
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v7, " and "

    if-lez v1, :cond_7

    .line 22
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 23
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_7
    iget-object v1, p1, Lcn/mucang/android/download/client/DownloadManager$f;->c:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 29
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 30
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const-string v1, "download_group = ?"

    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    iget-object p1, p1, Lcn/mucang/android/download/client/DownloadManager$f;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_9
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "select * from t_download"

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, " where "

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 36
    :cond_a
    new-instance v1, Lcn/mucang/android/core/db/e;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcn/mucang/android/core/db/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/db/e;->a(Ljava/util/List;)Lcn/mucang/android/core/db/e;

    return-object v1
.end method

.method public j(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/download/client/b;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, p1, p2}, Lcn/mucang/android/download/client/b;->b(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadProgress;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/download/client/b;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, p1}, Lcn/mucang/android/download/client/b;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(Lcn/mucang/android/download/DownloadStatusChange;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/download/client/b;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, p1}, Lcn/mucang/android/download/client/b;->c(Lcn/mucang/android/download/DownloadStatusChange;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public m(J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    const-class v2, Lcn/mucang/android/download/service/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_PAUSE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PARAM_TASK_ID"

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/i0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public n(Lcn/mucang/android/download/client/DownloadManager$f;Lcn/mucang/android/download/client/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/download/client/DownloadManager$f;",
            "Lcn/mucang/android/download/client/c<",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/download/client/DownloadManager$b;

    invoke-direct {v0, p0, p2, p1}, Lcn/mucang/android/download/client/DownloadManager$b;-><init>(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/c;Lcn/mucang/android/download/client/DownloadManager$f;)V

    invoke-virtual {p0, v0}, Lcn/mucang/android/download/client/DownloadManager;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(JLcn/mucang/android/download/client/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/download/client/c<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/download/client/DownloadManager$c;

    invoke-direct {v0, p0, p3, p1, p2}, Lcn/mucang/android/download/client/DownloadManager$c;-><init>(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/c;J)V

    invoke-virtual {p0, v0}, Lcn/mucang/android/download/client/DownloadManager;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p(J)Lcn/mucang/android/download/DownloadEntity;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/download/client/DownloadManager$f;

    invoke-direct {v0}, Lcn/mucang/android/download/client/DownloadManager$f;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Lcn/mucang/android/download/client/DownloadManager$f;->a([J)Lcn/mucang/android/download/client/DownloadManager$f;

    invoke-virtual {p0, v0}, Lcn/mucang/android/download/client/DownloadManager;->q(Lcn/mucang/android/download/client/DownloadManager$f;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/download/DownloadEntity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public q(Lcn/mucang/android/download/client/DownloadManager$f;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/download/client/DownloadManager$f;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadEntity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/download/client/DownloadManager;->h(Lcn/mucang/android/download/client/DownloadManager$f;)Lcn/mucang/android/core/db/e;

    move-result-object p1

    .line 2
    invoke-static {}, Lcn/mucang/android/download/a;->G()Lcn/mucang/android/download/a;

    move-result-object v0

    const-class v1, Lcn/mucang/android/download/DownloadEntity;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public r(J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    const-class v2, Lcn/mucang/android/download/service/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_REMOVE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PARAM_TASK_ID"

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/i0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public s(J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    const-class v2, Lcn/mucang/android/download/service/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_RESTART"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PARAM_TASK_ID"

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/i0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public t(J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    const-class v2, Lcn/mucang/android/download/service/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_RESUME"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PARAM_TASK_ID"

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/download/client/DownloadManager;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/i0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method u(Lcn/mucang/android/download/client/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/mucang/android/download/client/c<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/download/client/DownloadManager$d;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/download/client/DownloadManager$d;-><init>(Lcn/mucang/android/download/client/DownloadManager;Lcn/mucang/android/download/client/c;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/mucang/android/download/client/DownloadManager;->v(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method v(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method w(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method
