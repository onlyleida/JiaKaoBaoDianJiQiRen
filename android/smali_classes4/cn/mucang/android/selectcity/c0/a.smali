.class public Lcn/mucang/android/selectcity/c0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private static declared-synchronized a()V
    .locals 3

    const-class v0, Lcn/mucang/android/selectcity/c0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Exception"

    .line 3
    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "data/db/common__area.mp4"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/j;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/j;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v0

    :goto_2
    :try_start_3
    const-string v1, "Exception"

    .line 6
    invoke-static {v1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 7
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 8
    :goto_3
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p0

    .line 9
    :goto_4
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 10
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static declared-synchronized c()V
    .locals 2

    const-class v0, Lcn/mucang/android/selectcity/c0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v1, 0x0

    .line 3
    sput-object v1, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d(Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/a0/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/mucang/android/selectcity/c0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcn/mucang/android/selectcity/Area;->WHOLE_COUNTRY:Lcn/mucang/android/selectcity/Area;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/mucang/android/framework/select/city/R$string;->select_city__whole_country_title:I

    .line 4
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lcn/mucang/android/selectcity/Area;->setAreaName(Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcn/mucang/android/selectcity/a0/b;

    invoke-virtual {p0}, Lcn/mucang/android/selectcity/Area;->getFirstLetter()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcn/mucang/android/selectcity/a0/b;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v4, Lcn/mucang/android/selectcity/a0/a;

    invoke-direct {v4, v2, v3}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/a0/b;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, Lcn/mucang/android/selectcity/a0/a;

    invoke-direct {v2, p0, v3}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/Area;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    :cond_0
    const/4 p0, 0x0

    .line 9
    :try_start_1
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where type =  \'CITY\'  or shengzhixia = 1  or zhixiashi = 1 order by firstletter asc"

    invoke-virtual {v4, v5, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 12
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    new-instance v8, Lcn/mucang/android/selectcity/Area;

    invoke-direct {v8, v7, v5}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 14
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setPinyin(Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 15
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setFirstLetter(Ljava/lang/String;)V

    const/4 v5, 0x4

    .line 16
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setParentCode(Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 17
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setIsAdministeredCounty(Z)V

    .line 18
    invoke-virtual {v8, v6}, Lcn/mucang/android/selectcity/Area;->setIsMunicipality(Z)V

    const/4 v5, 0x7

    .line 19
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setFullAreaName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v8}, Lcn/mucang/android/selectcity/Area;->getFirstLetter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 21
    invoke-virtual {v8}, Lcn/mucang/android/selectcity/Area;->getFirstLetter()Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v5, Lcn/mucang/android/selectcity/a0/b;

    invoke-direct {v5, p0}, Lcn/mucang/android/selectcity/a0/b;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v6, Lcn/mucang/android/selectcity/a0/a;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v6, v5, v2}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/a0/b;I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_2
    new-instance v5, Lcn/mucang/android/selectcity/a0/a;

    invoke-direct {v5, v8, v2}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/Area;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 25
    :cond_3
    :try_start_3
    invoke-static {v4}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 26
    :goto_2
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v4, p0

    move-object p0, v1

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v4, p0

    move-object p0, v2

    :goto_3
    :try_start_4
    const-string v2, "Exception"

    .line 27
    invoke-static {v2, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 28
    :try_start_5
    invoke-static {v4}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 29
    :goto_4
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    .line 30
    :goto_5
    :try_start_6
    invoke-static {v4}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 31
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;)Lcn/mucang/android/selectcity/Area;
    .locals 8

    const-class v0, Lcn/mucang/android/selectcity/c0/a;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where code is \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 5
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Lcn/mucang/android/selectcity/Area;

    invoke-direct {v6, v5, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x2

    .line 7
    :try_start_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcn/mucang/android/selectcity/Area;->setPinyin(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 8
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcn/mucang/android/selectcity/Area;->setFirstLetter(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 9
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcn/mucang/android/selectcity/Area;->setParentCode(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 10
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v6, v1}, Lcn/mucang/android/selectcity/Area;->setIsAdministeredCounty(Z)V

    const/4 v1, 0x6

    .line 11
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v6, v2}, Lcn/mucang/android/selectcity/Area;->setIsMunicipality(Z)V

    const/4 v1, 0x7

    .line 12
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcn/mucang/android/selectcity/Area;->setFullAreaName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_2
    move-object v6, v1

    :goto_1
    move-object v1, p0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v1

    move-object v1, v2

    goto :goto_4

    :cond_3
    move-object v6, v1

    .line 13
    :goto_2
    :try_start_3
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 14
    :goto_3
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_7

    :catchall_1
    move-exception p0

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    :goto_4
    :try_start_4
    const-string v2, "Exception"

    .line 15
    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 16
    :try_start_5
    invoke-static {p0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 17
    :goto_5
    monitor-exit v0

    return-object v6

    :catchall_2
    move-exception v1

    .line 18
    :goto_6
    :try_start_6
    invoke-static {p0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 19
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_7
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized f()Landroid/database/sqlite/SQLiteDatabase;
    .locals 8

    const-class v0, Lcn/mucang/android/selectcity/c0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->k()Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    .line 4
    :cond_1
    invoke-static {v1}, Lcn/mucang/android/selectcity/c0/a;->b(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sput-object v4, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "select max(version) from t_version"

    .line 6
    invoke-virtual {v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 8
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v7, 0xf

    if-ge v5, v7, :cond_3

    const-string v5, "HadesLee"

    const-string v7, "getAreaDB,find the newer db,must copy...."

    .line 9
    invoke-static {v5, v7}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 10
    :cond_4
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v6, :cond_6

    .line 11
    sget-object v4, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 12
    invoke-static {v1}, Lcn/mucang/android/selectcity/c0/a;->b(Ljava/io/File;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sput-object v4, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "Exception"

    .line 14
    invoke-static {v5, v4}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    sget-object v4, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_5

    .line 16
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 17
    :cond_5
    invoke-static {v1}, Lcn/mucang/android/selectcity/c0/a;->b(Ljava/io/File;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    :cond_6
    :goto_1
    sget-object v1, Lcn/mucang/android/selectcity/c0/a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/a0/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/mucang/android/selectcity/c0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where parent_code is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 4
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5e02\u8f96\u533a"

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 6
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v6, Lcn/mucang/android/selectcity/Area;

    invoke-direct {v6, v5, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 8
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcn/mucang/android/selectcity/Area;->setPinyin(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 9
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcn/mucang/android/selectcity/Area;->setFirstLetter(Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcn/mucang/android/selectcity/Area;->setParentCode(Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 11
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v3}, Lcn/mucang/android/selectcity/Area;->setIsAdministeredCounty(Z)V

    const/4 v3, 0x6

    .line 12
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 p0, 0x1

    :cond_2
    invoke-virtual {v6, p0}, Lcn/mucang/android/selectcity/Area;->setIsMunicipality(Z)V

    const/4 p0, 0x7

    .line 13
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcn/mucang/android/selectcity/Area;->setFullAreaName(Ljava/lang/String;)V

    .line 14
    new-instance p0, Lcn/mucang/android/selectcity/a0/a;

    const/4 v3, -0x1

    invoke-direct {p0, v6, v3}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/Area;I)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :cond_3
    :try_start_2
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 16
    :goto_2
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_3
    const-string v3, "Exception"

    .line 17
    invoke-static {v3, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :try_start_4
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 19
    :goto_3
    monitor-exit v0

    return-object v1

    .line 20
    :goto_4
    :try_start_5
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 21
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    const-string v2, "310000"

    const-string v3, "\u4e0a\u6d77"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    const-string v2, "110000"

    const-string v3, "\u5317\u4eac"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    const-string v2, "440100"

    const-string v3, "\u5e7f\u5dde"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    const-string v2, "440300"

    const-string v3, "\u6df1\u5733"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    const-string v2, "420100"

    const-string v3, "\u6b66\u6c49"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    const-string v2, "120000"

    const-string v3, "\u5929\u6d25"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    const-string v2, "610100"

    const-string v3, "\u897f\u5b89"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    const-string v2, "320100"

    const-string v3, "\u5357\u4eac"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/android/selectcity/Area;

    const-string v2, "330100"

    const-string v3, "\u676d\u5dde"

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Lcn/mucang/android/selectcity/Area;
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/selectcity/c0/a;->e(Ljava/lang/String;)Lcn/mucang/android/selectcity/Area;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/selectcity/Area;->getParentCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/selectcity/c0/a;->e(Ljava/lang/String;)Lcn/mucang/android/selectcity/Area;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcn/mucang/android/selectcity/Area;

    const-string v0, "000000"

    const-string v1, "\u5168\u56fd"

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static declared-synchronized j(Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/a0/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/mucang/android/selectcity/c0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcn/mucang/android/selectcity/Area;->WHOLE_COUNTRY:Lcn/mucang/android/selectcity/Area;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/mucang/android/framework/select/city/R$string;->select_city__whole_country_title:I

    .line 4
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lcn/mucang/android/selectcity/Area;->setAreaName(Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcn/mucang/android/selectcity/a0/b;

    invoke-virtual {p0}, Lcn/mucang/android/selectcity/Area;->getFirstLetter()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcn/mucang/android/selectcity/a0/b;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v4, Lcn/mucang/android/selectcity/a0/a;

    invoke-direct {v4, v2, v3}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/a0/b;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, Lcn/mucang/android/selectcity/a0/a;

    invoke-direct {v2, p0, v3}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/Area;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    :cond_0
    const/4 p0, 0x0

    .line 9
    :try_start_1
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where parent_code is \'000000\' order by firstletter asc"

    invoke-virtual {v4, v5, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 12
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    new-instance v8, Lcn/mucang/android/selectcity/Area;

    invoke-direct {v8, v7, v5}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 14
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setPinyin(Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 15
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setFirstLetter(Ljava/lang/String;)V

    const/4 v5, 0x4

    .line 16
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setParentCode(Ljava/lang/String;)V

    const/4 v5, 0x5

    .line 17
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setIsAdministeredCounty(Z)V

    const/4 v5, 0x6

    .line 18
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v8, v6}, Lcn/mucang/android/selectcity/Area;->setIsMunicipality(Z)V

    const/4 v5, 0x7

    .line 19
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcn/mucang/android/selectcity/Area;->setFullAreaName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v8}, Lcn/mucang/android/selectcity/Area;->getFirstLetter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 21
    invoke-virtual {v8}, Lcn/mucang/android/selectcity/Area;->getFirstLetter()Ljava/lang/String;

    move-result-object p0

    .line 22
    new-instance v5, Lcn/mucang/android/selectcity/a0/b;

    invoke-direct {v5, p0}, Lcn/mucang/android/selectcity/a0/b;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v6, Lcn/mucang/android/selectcity/a0/a;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v6, v5, v2}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/a0/b;I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_3
    new-instance v5, Lcn/mucang/android/selectcity/a0/a;

    invoke-direct {v5, v8, v2}, Lcn/mucang/android/selectcity/a0/a;-><init>(Lcn/mucang/android/selectcity/Area;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 25
    :cond_4
    :try_start_3
    invoke-static {v4}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 26
    :goto_3
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v4, p0

    move-object p0, v1

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v4, p0

    move-object p0, v2

    :goto_4
    :try_start_4
    const-string v2, "Exception"

    .line 27
    invoke-static {v2, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 28
    :try_start_5
    invoke-static {v4}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 29
    :goto_5
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    .line 30
    :goto_6
    :try_start_6
    invoke-static {v4}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 31
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static k()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/databases/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "common__area.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, v0}, Lcn/mucang/android/selectcity/c0/a;->m(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static m(ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;"
        }
    .end annotation

    const-string v0, "__select_city"

    const-string v1, "recent_cities"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    const-class v1, Lcn/mucang/android/selectcity/Area;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_4

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/selectcity/Area;

    if-nez p0, :cond_3

    .line 7
    sget-object v3, Lcn/mucang/android/selectcity/Area;->WHOLE_COUNTRY:Lcn/mucang/android/selectcity/Area;

    invoke-virtual {v3}, Lcn/mucang/android/selectcity/Area;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcn/mucang/android/selectcity/Area;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_2

    .line 9
    invoke-static {}, Lcn/mucang/android/selectcity/u;->a()Lcn/mucang/android/selectcity/u;

    move-result-object v3

    invoke-virtual {v2}, Lcn/mucang/android/selectcity/Area;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/mucang/android/selectcity/u;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    .line 11
    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static declared-synchronized n(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/mucang/android/selectcity/c0/a;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select simplename,code,pinyin,firstletter,parent_code,shengzhixia,zhixiashi,name from t_area where parent_code is \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    .line 4
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5e02\u8f96\u533a"

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "\u5e02\u8f96\u53bf"

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 7
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v6, Lcn/mucang/android/selectcity/Area;

    invoke-direct {v6, v5, v3}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 9
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcn/mucang/android/selectcity/Area;->setPinyin(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcn/mucang/android/selectcity/Area;->setFirstLetter(Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 11
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcn/mucang/android/selectcity/Area;->setParentCode(Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 12
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6, v3}, Lcn/mucang/android/selectcity/Area;->setIsAdministeredCounty(Z)V

    const/4 v3, 0x6

    .line 13
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 p0, 0x1

    :cond_3
    invoke-virtual {v6, p0}, Lcn/mucang/android/selectcity/Area;->setIsMunicipality(Z)V

    const/4 p0, 0x7

    .line 14
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcn/mucang/android/selectcity/Area;->setFullAreaName(Ljava/lang/String;)V

    .line 15
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :cond_4
    :try_start_2
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 17
    :goto_2
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_3
    const-string v3, "Exception"

    .line 18
    invoke-static {v3, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :try_start_4
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 20
    :goto_3
    monitor-exit v0

    return-object v1

    .line 21
    :goto_4
    :try_start_5
    invoke-static {v2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 22
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->a()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static o(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/selectcity/c0/a;->l()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/selectcity/Area;

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 6
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "__select_city"

    const-string v1, "recent_cities"

    .line 8
    invoke-static {v0, v1, p0}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
