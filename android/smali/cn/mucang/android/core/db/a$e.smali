.class Lcn/mucang/android/core/db/a$e;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/db/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field final synthetic b:Lcn/mucang/android/core/db/a;


# direct methods
.method private constructor <init>(Lcn/mucang/android/core/db/a;Landroid/content/Context;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/db/a$e;->b:Lcn/mucang/android/core/db/a;

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/db/a;->a(Lcn/mucang/android/core/db/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcn/mucang/android/core/db/a;->b(Lcn/mucang/android/core/db/a;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 4
    iput-object p2, p0, Lcn/mucang/android/core/db/a$e;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/core/db/a;Landroid/content/Context;Lcn/mucang/android/core/db/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/core/db/a$e;-><init>(Lcn/mucang/android/core/db/a;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/db/a$e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/mucang/android/core/db/a$e;->b:Lcn/mucang/android/core/db/a;

    invoke-static {v1}, Lcn/mucang/android/core/db/a;->c(Lcn/mucang/android/core/db/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/j;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/db/a;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 9
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 11
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/db/a$e;->b:Lcn/mucang/android/core/db/a;

    invoke-static {v0}, Lcn/mucang/android/core/db/a;->d(Lcn/mucang/android/core/db/a;)Lcn/mucang/android/core/db/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/db/a$e;->b:Lcn/mucang/android/core/db/a;

    invoke-static {v0}, Lcn/mucang/android/core/db/a;->d(Lcn/mucang/android/core/db/a;)Lcn/mucang/android/core/db/a$b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/android/core/db/a$b;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    :cond_0
    const-string p1, "HadesLee"

    const-string p2, "\u9700\u8981\u66f4\u6570\u636e\u5e93\uff0c\u5374\u6ca1\u6709\u76f8\u5173\u7684\u5b9e\u73b0..."

    .line 3
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
