.class public Lcom/amap/api/mapcore/util/h6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amap/api/mapcore/util/g6;",
            ">;",
            "Lcom/amap/api/mapcore/util/g6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/mapcore/util/k6;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/amap/api/mapcore/util/g6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/h6;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/g6;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    new-instance v6, Lcom/amap/api/mapcore/util/k6;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/g6;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-interface {p2}, Lcom/amap/api/mapcore/util/g6;->c()I

    move-result v4

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/k6;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/mapcore/util/g6;)V

    iput-object v6, p0, Lcom/amap/api/mapcore/util/h6;->a:Lcom/amap/api/mapcore/util/k6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :goto_0
    iput-object p2, p0, Lcom/amap/api/mapcore/util/h6;->c:Lcom/amap/api/mapcore/util/g6;

    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/amap/api/mapcore/util/i6;)Landroid/content/ContentValues;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/i6;->b()Z

    move-result p2

    invoke-direct {p0, v1, p2}, Lcom/amap/api/mapcore/util/h6;->r(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object p2

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-direct {p0, p1, v3, v0}, Lcom/amap/api/mapcore/util/h6;->k(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h6;->a:Lcom/amap/api/mapcore/util/k6;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-nez p1, :cond_0

    const-string p1, "dbs"

    const-string v1, "grd"

    .line 3
    invoke-static {v0, p1, v1}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public static declared-synchronized c(Ljava/lang/Class;)Lcom/amap/api/mapcore/util/g6;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amap/api/mapcore/util/g6;",
            ">;)",
            "Lcom/amap/api/mapcore/util/g6;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const-class v0, Lcom/amap/api/mapcore/util/h6;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore/util/h6;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    sget-object v1, Lcom/amap/api/mapcore/util/h6;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object v1, Lcom/amap/api/mapcore/util/h6;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/mapcore/util/g6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private d(Landroid/database/Cursor;Ljava/lang/Class;Lcom/amap/api/mapcore/util/i6;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amap/api/mapcore/util/i6;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/amap/api/mapcore/util/i6;->b()Z

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/amap/api/mapcore/util/h6;->r(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    array-length v2, p3

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p3, v0

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    const-class v4, Lcom/amap/api/mapcore/util/j6;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    check-cast v4, Lcom/amap/api/mapcore/util/j6;

    .line 9
    invoke-interface {v4}, Lcom/amap/api/mapcore/util/j6;->b()I

    move-result v5

    .line 10
    invoke-interface {v4}, Lcom/amap/api/mapcore/util/j6;->a()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 12
    :pswitch_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 13
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :pswitch_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 16
    :pswitch_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :pswitch_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :pswitch_4
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    .line 21
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :pswitch_5
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :pswitch_6
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    .line 25
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lcom/amap/api/mapcore/util/i6;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/mapcore/util/i6;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/i6;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static f(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\'"

    const-string v5, " = \'"

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v6, " and "

    .line 5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/h6;->t(Ljava/lang/Class;)Lcom/amap/api/mapcore/util/i6;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/h6;->e(Lcom/amap/api/mapcore/util/i6;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore/util/h6;->a(Ljava/lang/Object;Lcom/amap/api/mapcore/util/i6;)Landroid/content/ContentValues;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_3
    :goto_0
    return-void
.end method

.method private k(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    const-class v0, Lcom/amap/api/mapcore/util/j6;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Lcom/amap/api/mapcore/util/j6;

    .line 3
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j6;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 5
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j6;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j6;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p1

    .line 9
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j6;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide p1

    .line 11
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j6;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p1

    .line 13
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j6;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 14
    :pswitch_5
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    .line 15
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j6;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 16
    :pswitch_6
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result p1

    .line 17
    invoke-interface {v0}, Lcom/amap/api/mapcore/util/j6;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private q(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private r(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method private s(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->a:Lcom/amap/api/mapcore/util/k6;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "dbs"

    const-string v1, "gwd"

    .line 5
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method private t(Ljava/lang/Class;)Lcom/amap/api/mapcore/util/i6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amap/api/mapcore/util/i6;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/amap/api/mapcore/util/i6;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h6;->q(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lcom/amap/api/mapcore/util/i6;

    return-object p1
.end method


# virtual methods
.method public g(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h6;->c:Lcom/amap/api/mapcore/util/g6;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/h6;->t(Ljava/lang/Class;)Lcom/amap/api/mapcore/util/i6;

    move-result-object v2

    .line 4
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/h6;->e(Lcom/amap/api/mapcore/util/i6;)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 6
    invoke-direct {p0, p3}, Lcom/amap/api/mapcore/util/h6;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-nez v3, :cond_c

    if-nez p1, :cond_1

    goto/16 :goto_b

    :cond_1
    const/4 v11, 0x0

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez p1, :cond_4

    .line 9
    :try_start_2
    iget-object p2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 10
    iput-object v11, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz p1, :cond_2

    .line 11
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-nez p3, :cond_2

    :try_start_4
    const-string p2, "dbs"

    const-string v2, "sld"

    .line 12
    invoke-static {p1, p2, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 13
    :cond_2
    :goto_0
    :try_start_5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 15
    iput-object v11, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-nez p3, :cond_3

    :try_start_6
    const-string p2, "dbs"

    const-string p3, "sld"

    .line 16
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    return-object v1

    .line 18
    :cond_4
    :goto_2
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 19
    invoke-direct {p0, p1, p2, v2}, Lcom/amap/api/mapcore/util/h6;->d(Landroid/database/Cursor;Ljava/lang/Class;Lcom/amap/api/mapcore/util/i6;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 20
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    if-nez p3, :cond_6

    :try_start_9
    const-string p2, "dbs"

    const-string v2, "sld"

    .line 21
    invoke-static {p1, p2, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 22
    :cond_6
    :goto_3
    :try_start_a
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_b

    .line 23
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 24
    iput-object v11, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_a

    :catchall_3
    move-exception p1

    if-nez p3, :cond_b

    :try_start_b
    const-string p2, "dbs"

    const-string p3, "sld"

    .line 25
    :goto_4
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_a

    :catchall_4
    move-exception p2

    goto :goto_5

    :catchall_5
    move-exception p2

    move-object p1, v11

    :goto_5
    if-nez p3, :cond_9

    :try_start_c
    const-string v2, "dbs"

    const-string v3, "sld"

    .line 26
    invoke-static {p2, v2, v3}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception p2

    if-eqz p1, :cond_7

    .line 27
    :try_start_d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception p1

    if-nez p3, :cond_7

    :try_start_e
    const-string v1, "dbs"

    const-string v2, "sld"

    .line 28
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 29
    :cond_7
    :goto_6
    :try_start_f
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_8

    .line 30
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 31
    iput-object v11, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception p1

    if-nez p3, :cond_8

    :try_start_10
    const-string p3, "dbs"

    const-string v1, "sld"

    .line 32
    invoke-static {p1, p3, v1}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_8
    :goto_7
    throw p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    :cond_9
    :goto_8
    if-eqz p1, :cond_a

    .line 34
    :try_start_11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception p1

    if-nez p3, :cond_a

    :try_start_12
    const-string p2, "dbs"

    const-string v2, "sld"

    .line 35
    invoke-static {p1, p2, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 36
    :cond_a
    :goto_9
    :try_start_13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_b

    .line 37
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 38
    iput-object v11, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_a

    :catchall_a
    move-exception p1

    if-nez p3, :cond_b

    :try_start_14
    const-string p2, "dbs"

    const-string p3, "sld"

    goto :goto_4

    .line 39
    :cond_b
    :goto_a
    monitor-exit v0

    return-object v1

    .line 40
    :cond_c
    :goto_b
    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    throw p1
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/h6;->l(Ljava/lang/Object;Z)V

    return-void
.end method

.method public j(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h6;->c:Lcom/amap/api/mapcore/util/g6;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/amap/api/mapcore/util/h6;->u(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/amap/api/mapcore/util/h6;->n(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/h6;->i(Ljava/lang/Object;)V

    .line 6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Ljava/lang/Object;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h6;->c:Lcom/amap/api/mapcore/util/g6;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/h6;->s(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p2, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore/util/h6;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 7
    :goto_0
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "dbs"

    const-string v2, "itd"

    .line 8
    invoke-static {p1, p2, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9
    :try_start_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 14
    iput-object v1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    :cond_2
    throw p1

    :catchall_2
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public m(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h6;->c:Lcom/amap/api/mapcore/util/g6;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/h6;->t(Ljava/lang/Class;)Lcom/amap/api/mapcore/util/i6;

    move-result-object p2

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/h6;->e(Lcom/amap/api/mapcore/util/i6;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/h6;->s(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 8
    :try_start_1
    invoke-virtual {v1, p2, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 11
    :goto_0
    iput-object v2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "dbs"

    const-string v1, "dld"

    .line 12
    invoke-static {p1, p2, v1}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    :try_start_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 16
    iget-object p2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 18
    iput-object v2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    :cond_3
    throw p1

    :catchall_2
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public n(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/h6;->o(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h6;->c:Lcom/amap/api/mapcore/util/g6;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 2
    :try_start_0
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/h6;->t(Ljava/lang/Class;)Lcom/amap/api/mapcore/util/i6;

    move-result-object v1

    .line 4
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/h6;->e(Lcom/amap/api/mapcore/util/i6;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/amap/api/mapcore/util/h6;->a(Ljava/lang/Object;Lcom/amap/api/mapcore/util/i6;)Landroid/content/ContentValues;

    move-result-object p2

    if-nez p2, :cond_2

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_2
    invoke-direct {p0, p3}, Lcom/amap/api/mapcore/util/h6;->s(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_3
    const/4 v3, 0x0

    .line 11
    :try_start_1
    invoke-virtual {v1, v2, p2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 14
    :goto_0
    iput-object v3, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    if-nez p3, :cond_4

    :try_start_3
    const-string p2, "dbs"

    const-string p3, "udd"

    .line 15
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 19
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 20
    iget-object p2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_6

    .line 21
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 22
    iput-object v3, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    :cond_6
    throw p1

    :catchall_2
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public p(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h6;->c:Lcom/amap/api/mapcore/util/g6;

    monitor-enter v0

    if-eqz p1, :cond_6

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/h6;->s(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iget-object v3, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v3, v1}, Lcom/amap/api/mapcore/util/h6;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :try_start_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v1, "dbs"

    const-string v3, "ild"

    .line 11
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 12
    :cond_3
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 13
    iput-object v2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_5
    const-string v1, "dbs"

    const-string v2, "ild"

    .line 14
    :goto_2
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_6
    const-string v1, "dbs"

    const-string v3, "ild"

    .line 15
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 16
    :try_start_7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_8
    const-string v1, "dbs"

    const-string v3, "ild"

    .line 18
    invoke-static {p1, v1, v3}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 19
    :cond_4
    :goto_3
    :try_start_9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 20
    iput-object v2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    :try_start_a
    const-string v1, "dbs"

    const-string v2, "ild"

    goto :goto_2

    .line 21
    :goto_4
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    return-void

    :catchall_5
    move-exception p1

    .line 22
    :try_start_b
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v1

    :try_start_c
    const-string v3, "dbs"

    const-string v4, "ild"

    .line 24
    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 25
    :cond_5
    :goto_5
    :try_start_d
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 26
    iput-object v2, p0, Lcom/amap/api/mapcore/util/h6;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v1

    :try_start_e
    const-string v2, "dbs"

    const-string v3, "ild"

    .line 27
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_6
    throw p1

    .line 29
    :cond_6
    :goto_7
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    throw p1
.end method

.method public u(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/h6;->g(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
