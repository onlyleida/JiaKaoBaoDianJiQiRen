.class public Lcn/mucang/sundial/android/log/db/JDb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/db/a$b;


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "bd_sundial.db"

.field public static final DB_VERSION:I = 0x1

.field private static jdb:Lcn/mucang/sundial/android/log/db/JDb;


# instance fields
.field private db:Lcn/mucang/android/core/db/a;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/db/b;

    invoke-direct {v0}, Lcn/mucang/android/core/db/b;-><init>()V

    const-string v1, "bd_sundial.db"

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->d(Ljava/lang/String;)Lcn/mucang/android/core/db/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->e(I)Lcn/mucang/android/core/db/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sundial.sql"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->c(Ljava/lang/String;)Lcn/mucang/android/core/db/b;

    invoke-virtual {v0, p0}, Lcn/mucang/android/core/db/b;->b(Lcn/mucang/android/core/db/a$b;)Lcn/mucang/android/core/db/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/db/b;->a()Lcn/mucang/android/core/db/a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/log/db/JDb;->db:Lcn/mucang/android/core/db/a;

    return-void
.end method

.method public static db()Lcn/mucang/android/core/db/a;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/log/db/JDb;->getInstance()Lcn/mucang/sundial/android/log/db/JDb;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/android/log/db/JDb;->db:Lcn/mucang/android/core/db/a;

    return-object v0
.end method

.method public static declared-synchronized getHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/log/db/JDb;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/log/db/JDb;->getInstance()Lcn/mucang/sundial/android/log/db/JDb;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/android/log/db/JDb;->helper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcn/mucang/sundial/android/log/db/JDb;
    .locals 2

    const-class v0, Lcn/mucang/sundial/android/log/db/JDb;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/sundial/android/log/db/JDb;->jdb:Lcn/mucang/sundial/android/log/db/JDb;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/log/db/JDb;

    invoke-direct {v1}, Lcn/mucang/sundial/android/log/db/JDb;-><init>()V

    sput-object v1, Lcn/mucang/sundial/android/log/db/JDb;->jdb:Lcn/mucang/sundial/android/log/db/JDb;

    .line 3
    :cond_0
    sget-object v1, Lcn/mucang/sundial/android/log/db/JDb;->jdb:Lcn/mucang/sundial/android/log/db/JDb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDb()Lcn/mucang/android/core/db/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/db/JDb;->db:Lcn/mucang/android/core/db/a;

    return-object v0
.end method

.method public helper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/db/JDb;->db:Lcn/mucang/android/core/db/a;

    invoke-virtual {v0}, Lcn/mucang/android/core/db/a;->s()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    return-object v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-gt v1, p3, :cond_3

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db/upgrade/sundial_upgrade_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".sql"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    const-string v3, ";"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 10
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u5347\u7ea7\u5230"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ; \u6267\u884c SQL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u5931\u8d25\uff1a"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6267\u884c SQL \u5931\u8d25\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :goto_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_6

    :catch_1
    move-exception p2

    .line 14
    :try_start_3
    invoke-static {v0, p2}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_5
    return-void

    .line 16
    :goto_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method
