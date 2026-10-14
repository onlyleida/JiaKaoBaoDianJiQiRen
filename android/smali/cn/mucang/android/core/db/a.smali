.class public Lcn/mucang/android/core/db/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/db/a$e;,
        Lcn/mucang/android/core/db/a$c;,
        Lcn/mucang/android/core/db/a$d;,
        Lcn/mucang/android/core/db/a$b;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/core/db/a$e;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">;",
            "Lcn/mucang/android/core/db/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcn/mucang/android/core/db/a$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/db/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcn/mucang/android/core/db/c;

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/db/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcn/mucang/android/core/db/c;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/core/db/a;->t(Ljava/lang/String;Ljava/lang/String;ILcn/mucang/android/core/db/a$b;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcn/mucang/android/core/db/a$b;)V
    .locals 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/core/db/a;->t(Ljava/lang/String;Ljava/lang/String;ILcn/mucang/android/core/db/a$b;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/db/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/db/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/core/db/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/core/db/a;->e:I

    return p0
.end method

.method static synthetic c(Lcn/mucang/android/core/db/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/db/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/mucang/android/core/db/a;)Lcn/mucang/android/core/db/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/db/a;->f:Lcn/mucang/android/core/db/a$b;

    return-object p0
.end method

.method private l(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private p(Ljava/lang/Class;)Lcn/mucang/android/core/db/a$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcn/mucang/android/core/db/a$c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/db/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/db/a$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/db/a$c;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/db/a$c;-><init>(Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private q(Lcn/mucang/android/core/db/IdEntity;)Lcn/mucang/android/core/db/a$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(TT;)",
            "Lcn/mucang/android/core/db/a$c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/db/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/db/a$c;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/core/db/a$c;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/db/a$c;-><init>(Ljava/lang/Class;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static r(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    const-class v0, Lcn/mucang/android/core/db/a$d;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/db/a$d;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/core/db/a$d;->value()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;ILcn/mucang/android/core/db/a$b;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/db/a;->c:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcn/mucang/android/core/db/a;->d:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcn/mucang/android/core/db/a;->e:I

    .line 4
    iput-object p4, p0, Lcn/mucang/android/core/db/a;->f:Lcn/mucang/android/core/db/a$b;

    .line 5
    new-instance p1, Lcn/mucang/android/core/db/a$e;

    if-nez p5, :cond_0

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p5

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p1, p0, p5, p2}, Lcn/mucang/android/core/db/a$e;-><init>(Lcn/mucang/android/core/db/a;Landroid/content/Context;Lcn/mucang/android/core/db/a$a;)V

    iput-object p1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/db/a;->b:Ljava/util/Map;

    return-void
.end method

.method public static x(Lcn/mucang/android/core/db/IdEntity;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static z(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ";"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 4
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "\\n"

    const-string v5, ""

    .line 5
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized A(Ljava/lang/Class;Landroid/content/ContentValues;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/ContentValues;",
            "J)I"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->p(Ljava/lang/Class;)Lcn/mucang/android/core/db/a$c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/db/a$c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/core/db/a;->C(Ljava/lang/String;Landroid/content/ContentValues;J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized B(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->p(Ljava/lang/Class;)Lcn/mucang/android/core/db/a$c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/db/a$c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/core/db/a;->D(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized C(Ljava/lang/String;Landroid/content/ContentValues;J)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 8
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, -0x1

    .line 11
    monitor-exit p0

    return p1

    .line 12
    :goto_0
    :try_start_4
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 13
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 14
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized D(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 8
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, -0x1

    .line 11
    monitor-exit p0

    return p1

    .line 12
    :goto_0
    :try_start_4
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 13
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 14
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized E(Lcn/mucang/android/core/db/IdEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/db/a;->F(Lcn/mucang/android/core/db/IdEntity;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized F(Lcn/mucang/android/core/db/IdEntity;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(TT;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->q(Lcn/mucang/android/core/db/IdEntity;)Lcn/mucang/android/core/db/a$c;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcn/mucang/android/core/db/a$c;->g(Lcn/mucang/android/core/db/IdEntity;)Landroid/content/ContentValues;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcn/mucang/android/core/db/a$c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 10
    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, -0x1

    .line 13
    monitor-exit p0

    return p1

    .line 14
    :goto_0
    :try_start_4
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 16
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/Class;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)J"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->p(Ljava/lang/Class;)Lcn/mucang/android/core/db/a$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select count(*) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/a$c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 5
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :try_start_3
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 7
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    monitor-exit p0

    return-wide v2

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_0
    :try_start_4
    const-string v2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 9
    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 10
    :try_start_5
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 11
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v0, -0x1

    .line 12
    monitor-exit p0

    return-wide v0

    :catchall_1
    move-exception p1

    .line 13
    :goto_1
    :try_start_6
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 14
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_create.sql"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_upgrade_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized h(Ljava/lang/Class;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)I"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->p(Ljava/lang/Class;)Lcn/mucang/android/core/db/a$c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/db/a$c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/core/db/a;->i(Ljava/lang/String;J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(Ljava/lang/String;J)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 8
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, -0x1

    .line 11
    monitor-exit p0

    return p1

    .line 12
    :goto_0
    :try_start_4
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 13
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 14
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->p(Ljava/lang/Class;)Lcn/mucang/android/core/db/a$c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/core/db/a$c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/core/db/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 8
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, -0x1

    .line 11
    monitor-exit p0

    return p1

    .line 12
    :goto_0
    :try_start_4
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 13
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 14
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(Ljava/lang/Class;J)Lcn/mucang/android/core/db/IdEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->p(Ljava/lang/Class;)Lcn/mucang/android/core/db/a$c;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/core/db/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/core/db/a$c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " where _id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcn/mucang/android/core/db/e;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, v1}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcn/mucang/android/core/db/e;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->p(Ljava/lang/Class;)Lcn/mucang/android/core/db/a$c;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/core/db/a;->o(Lcn/mucang/android/core/db/d;Lcn/mucang/android/core/db/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/db/IdEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized o(Lcn/mucang/android/core/db/d;Lcn/mucang/android/core/db/e;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/mucang/android/core/db/d<",
            "TT;>;",
            "Lcn/mucang/android/core/db/e;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {p2}, Lcn/mucang/android/core/db/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/mucang/android/core/db/e;->e()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, p2}, Lcn/mucang/android/core/db/d;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    :try_start_3
    invoke-static {p2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 7
    monitor-exit p0

    return-object p1

    .line 8
    :cond_0
    :try_start_4
    invoke-static {p2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 9
    :goto_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    :goto_1
    :try_start_5
    const-string v2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 10
    invoke-static {v2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 11
    :try_start_6
    invoke-static {p2}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    .line 12
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception p1

    move-object v0, p2

    .line 13
    :goto_3
    :try_start_7
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 14
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public s()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    return-object v0
.end method

.method public declared-synchronized u(Lcn/mucang/android/core/db/IdEntity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->q(Lcn/mucang/android/core/db/IdEntity;)Lcn/mucang/android/core/db/a$c;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcn/mucang/android/core/db/a$c;->g(Lcn/mucang/android/core/db/IdEntity;)Landroid/content/ContentValues;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcn/mucang/android/core/db/a$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-direct {p0, v1}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 9
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_3
    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 10
    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    :try_start_4
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 13
    :goto_1
    monitor-exit p0

    return-void

    .line 14
    :goto_2
    :try_start_5
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 16
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized v(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/core/db/IdEntity;

    .line 6
    invoke-direct {p0, v2}, Lcn/mucang/android/core/db/a;->q(Lcn/mucang/android/core/db/IdEntity;)Lcn/mucang/android/core/db/a$c;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v2}, Lcn/mucang/android/core/db/a$c;->g(Lcn/mucang/android/core/db/IdEntity;)Landroid/content/ContentValues;

    move-result-object v4

    .line 8
    invoke-virtual {v3}, Lcn/mucang/android/core/db/a$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/core/db/IdEntity;->setId(Ljava/lang/Long;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-direct {p0, v1}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_4
    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 13
    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 14
    :try_start_5
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 16
    :goto_2
    monitor-exit p0

    return-void

    .line 17
    :goto_3
    :try_start_6
    invoke-direct {p0, v0}, Lcn/mucang/android/core/db/a;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 18
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized w(Lcn/mucang/android/core/db/IdEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/core/db/a;->x(Lcn/mucang/android/core/db/IdEntity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/mucang/android/core/db/IdEntity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcn/mucang/android/core/db/e;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/core/db/a;->p(Ljava/lang/Class;)Lcn/mucang/android/core/db/a$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcn/mucang/android/core/db/a;->a:Lcn/mucang/android/core/db/a$e;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {p2}, Lcn/mucang/android/core/db/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/mucang/android/core/db/e;->e()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/a$c;->j(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_0
    :try_start_4
    const-string p2, "\u9ed8\u8ba4\u66ff\u6362"

    .line 8
    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9
    :try_start_5
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 10
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    .line 12
    :goto_1
    :try_start_6
    invoke-static {v0}, Lcn/mucang/android/core/utils/j;->b(Landroid/database/Cursor;)V

    .line 13
    invoke-static {v1}, Lcn/mucang/android/core/utils/j;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 14
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
