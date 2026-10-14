.class public final Lcom/tencent/bugly/proguard/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/t$a;,
        Lcom/tencent/bugly/proguard/t$b;,
        Lcom/tencent/bugly/proguard/t$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/text/SimpleDateFormat;

.field private final b:Lcom/tencent/bugly/proguard/r;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->a:Ljava/text/SimpleDateFormat;

    .line 4
    new-instance v0, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/r;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Lcom/tencent/bugly/proguard/r;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/t;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/bugly/proguard/t;
    .locals 1

    .line 2
    invoke-static {}, Lcom/tencent/bugly/proguard/t$a;->a()Lcom/tencent/bugly/proguard/t;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/tencent/bugly/proguard/t$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/t$b;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/t$b;->a(Lcom/tencent/bugly/proguard/t$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/t$b;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/t$b;->a(Lcom/tencent/bugly/proguard/t$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/t;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/t;->c(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/t$b;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 16
    invoke-static {}, Lcom/tencent/bugly/proguard/x;->a()Lcom/tencent/bugly/proguard/x;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/t$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/t$1;-><init>(Lcom/tencent/bugly/proguard/t;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Runnable;)Z

    return-void

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/t;->c(Ljava/util/List;)V

    return-void
.end method

.method private static c()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/t$b;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "_tm"

    const-string v2, "_dt"

    .line 13
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "t_sla"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "_tm"

    const-string v12, "30"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v3 .. v14}, Lcom/tencent/bugly/proguard/o;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 15
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v4

    .line 17
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 19
    new-instance v5, Lcom/tencent/bugly/proguard/t$b;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/t$b;-><init>()V

    .line 20
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/bugly/proguard/t$b;->a(Ljava/lang/String;)V

    .line 21
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/bugly/proguard/t$b;->a(J)V

    .line 22
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/bugly/proguard/t$b;->b(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/t$b;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 25
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    return-object v4

    :catchall_1
    move-exception v0

    .line 27
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 28
    throw v0
.end method

.method private c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/t$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "sla batch report list size:%s"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    const/16 v2, 0x1d

    .line 4
    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 5
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/t$b;

    .line 7
    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/t$b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v3, p0, Lcom/tencent/bugly/proguard/t;->b:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/r;->a(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v4, v3, v0

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "sla batch report result, rspCode:%s rspMsg:%s"

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 10
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 11
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/t;->e(Ljava/util/List;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "sla batch report data is empty"

    .line 12
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method private static d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/t$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/t$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/t$b;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/t$b;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/t$b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "sla save id:%s time:%s msg:%s"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_id"

    .line 4
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/t$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_tm"

    .line 5
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/t$b;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_dt"

    .line 6
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/t$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v0

    const-string v2, "t_sla"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;Z)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/t$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "sla batch delete list size:%s"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id in ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-static {v3, p1}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "sla batch delete where:%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v0

    .line 4
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v3

    const-string v4, "t_sla"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/bugly/proguard/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "sla batch delete list is null"

    .line 7
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/t$c;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/t$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "sla report single event"

    .line 4
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/t;->a(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "sla report event is null"

    .line 6
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/t$c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "sla batch report event size:%s"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/t$c;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 11
    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v5

    if-nez v5, :cond_3

    new-array v3, v0, [Ljava/lang/Object;

    const-string v5, "sla convert failed because ComInfoManager is null"

    invoke-static {v5, v3}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "&app_version="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&app_name="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&app_bundle_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&client_type=android&user_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&sdk_version="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&event_code="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&event_result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->d()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "&event_time="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tencent/bugly/proguard/t;->a:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->c()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&event_cost="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->e()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "&device_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&debug="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v5, Lcom/tencent/bugly/crashreport/common/info/a;->t:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "&param_0="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&param_1="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&param_2=ext"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&param_4="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/tencent/bugly/proguard/t$c;->a(Lcom/tencent/bugly/proguard/t$c;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&param_3="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/t$c;->a(Lcom/tencent/bugly/proguard/t$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->c()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->d()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->e()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->f()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->g()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "sla convert eventId:%s eventType:%s, eventTime:%s success:%s cost:%s from:%s uploadMsg:"

    invoke-static {v6, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/bugly/proguard/t$b;

    invoke-direct {v6}, Lcom/tencent/bugly/proguard/t$b;-><init>()V

    invoke-virtual {v6, v5}, Lcom/tencent/bugly/proguard/t$b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/t$c;->c()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/tencent/bugly/proguard/t$b;->a(J)V

    invoke-virtual {v6, v4}, Lcom/tencent/bugly/proguard/t$b;->b(Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_2

    :cond_5
    :goto_1
    new-array v3, v0, [Ljava/lang/Object;

    const-string v5, "sla convert event is null"

    invoke-static {v5, v3}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_2
    if-eqz v4, :cond_1

    .line 12
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 13
    :cond_6
    invoke-static {v2}, Lcom/tencent/bugly/proguard/t;->d(Ljava/util/List;)V

    .line 14
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/t;->b(Ljava/util/List;)V

    return-void

    :cond_7
    :goto_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "sla batch report event is null"

    .line 15
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "sla load local data list size:%s"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/t$b;

    .line 8
    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/t$b;->b()J

    move-result-wide v6

    invoke-static {}, Lcom/tencent/bugly/proguard/ab;->b()J

    move-result-wide v8

    const-wide/32 v10, 0x240c8400

    sub-long/2addr v8, v10

    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    new-array v6, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/t$b;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "sla local data is expired:%s"

    invoke-static {v7, v6}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/t;->e(Ljava/util/List;)V

    .line 13
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/t;->b(Ljava/util/List;)V

    return-void

    :cond_4
    :goto_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "sla local data is null"

    .line 14
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
