.class public Lf/a/a/a/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/l/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lf/a/a/a/l/c;

.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    const-string v1, "exception"

    invoke-direct {v0, v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/a/l/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p1, p0, Lf/a/a/a/l/a;->a:Landroid/content/Context;

    .line 4
    new-instance v0, Lf/a/a/a/l/c;

    invoke-direct {v0, p1}, Lf/a/a/a/l/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/a/a/a/l/a;->b:Lf/a/a/a/l/c;

    .line 5
    iget-object p1, p0, Lf/a/a/a/l/a;->a:Landroid/content/Context;

    new-instance v0, Lf/a/a/a/l/a$a;

    invoke-direct {v0, p0}, Lf/a/a/a/l/a$a;-><init>(Lf/a/a/a/l/a;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic b(Lf/a/a/a/l/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a/l/a;->d()V

    return-void
.end method

.method static synthetic c(Lf/a/a/a/l/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a/l/a;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/a/l/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lf/a/a/a/l/a$b;

    invoke-direct {v1, p0}, Lf/a/a/a/l/a$b;-><init>(Lf/a/a/a/l/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private e()V
    .locals 4

    const-string v0, "HadesLee"

    const-string v1, "doSubmitHistory0,fuckshit"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lf/a/a/a/l/a;->g()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSubmitHistory0,list.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/l/b;

    .line 6
    invoke-direct {p0, v1}, Lf/a/a/a/l/a;->i(Lf/a/a/a/l/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/p0;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 4
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 6
    :try_start_0
    iget-object p2, p0, Lf/a/a/a/l/a;->b:Lf/a/a/a/l/c;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "insert into t_exception(time,message,stacktrace)values(?,?,?)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    .line 7
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    .line 8
    invoke-virtual {p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 9
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_1
    iget-object p1, p0, Lf/a/a/a/l/a;->b:Lf/a/a/a/l/c;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :goto_2
    iget-object p2, p0, Lf/a/a/a/l/a;->b:Lf/a/a/a/l/c;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 11
    throw p1
.end method

.method private g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/a/a/a/l/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lf/a/a/a/l/a;->b:Lf/a/a/a/l/c;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "select * from t_exception order by _id asc limit 20 "

    .line 3
    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lf/a/a/a/l/b;

    invoke-direct {v2}, Lf/a/a/a/l/b;-><init>()V

    const-string v3, "errorcount"

    .line 6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lf/a/a/a/l/b;->e:I

    const-string v3, "_id"

    .line 7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lf/a/a/a/l/b;->a:I

    const-string v3, "message"

    .line 8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lf/a/a/a/l/b;->c:Ljava/lang/String;

    const-string v3, "stacktrace"

    .line 9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lf/a/a/a/l/b;->d:Ljava/lang/String;

    const-string v3, "time"

    .line 10
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lf/a/a/a/l/b;->b:Ljava/lang/String;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "\u9ed8\u8ba4\u66ff\u6362"

    .line 12
    invoke-static {v3, v2}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 13
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_2
    throw v0
.end method

.method private h(Lf/a/a/a/l/b;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/a/a/a/l/a;->b:Lf/a/a/a/l/c;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from t_exception where _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lf/a/a/a/l/b;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 2
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private i(Lf/a/a/a/l/b;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "submit,data.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lf/a/a/a/l/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HadesLee"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "time"

    .line 3
    iget-object v3, p1, Lf/a/a/a/l/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "message"

    .line 4
    iget-object v3, p1, Lf/a/a/a/l/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "stacktrace"

    .line 5
    iget-object v3, p1, Lf/a/a/a/l/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "package"

    .line 6
    iget-object v3, p0, Lf/a/a/a/l/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "retrycount"

    .line 8
    iget v4, p1, Lf/a/a/a/l/b;->e:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "extra"

    .line 9
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://error.kakamobi.com/submit"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "4.3"

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 12
    invoke-static {v3, v4, v6, v5, v6}, Lcn/mucang/android/core/api/f/c;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;)V

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit.url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit.json="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcn/mucang/android/core/http/a;->q()Lcn/mucang/android/core/http/a;

    move-result-object v0

    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcn/mucang/android/core/api/request/e/b;->l(Ljava/lang/String;)Lcn/mucang/android/core/api/request/e/b;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v6}, Lcn/mucang/android/core/http/a;->z(Ljava/lang/String;Lcn/mucang/android/core/api/request/e/b;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submit.back="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    .line 19
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0, p1}, Lf/a/a/a/l/a;->h(Lf/a/a/a/l/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submit,ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 22
    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :cond_0
    invoke-direct {p0, p1}, Lf/a/a/a/l/a;->j(Lf/a/a/a/l/b;)V

    const-string p1, "updateDataErrorCount"

    .line 24
    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private j(Lf/a/a/a/l/b;)V
    .locals 4

    const-string v0, "HadesLee"

    const-string v1, "updateDataErrorCount.start"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/a/a/a/l/a;->b:Lf/a/a/a/l/c;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update t_exception set errorcount=errorcount+1 where _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lf/a/a/a/l/b;->a:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "updateDataErrorCount.end"

    .line 4
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 5
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf/a/a/a/l/a;->f(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
