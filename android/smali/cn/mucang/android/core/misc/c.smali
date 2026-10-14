.class public Lcn/mucang/android/core/misc/c;
.super Lcn/mucang/android/core/misc/b;
.source "SourceFile"


# static fields
.field public static final e:J

.field protected static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/core/misc/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Lcn/mucang/android/core/config/u;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcn/mucang/android/core/misc/c;->e:J

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/core/misc/c;->f:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLandroid/content/SharedPreferences;Lcn/mucang/android/core/config/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/misc/b;-><init>()V

    .line 2
    iput-wide p2, p0, Lcn/mucang/android/core/misc/c;->a:J

    .line 3
    iput-object p5, p0, Lcn/mucang/android/core/misc/c;->d:Lcn/mucang/android/core/config/u;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const/4 p1, 0x1

    const-string p3, "run_after"

    aput-object p3, p2, p1

    const-string p1, "%s_%s"

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/core/misc/c;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/core/misc/c;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Lcn/mucang/android/core/misc/c;
    .locals 3

    const-class v0, Lcn/mucang/android/core/misc/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-wide v1, Lcn/mucang/android/core/misc/c;->e:J

    invoke-static {p0, p1, v1, v2}, Lcn/mucang/android/core/misc/c;->f(Landroid/content/Context;Ljava/lang/String;J)Lcn/mucang/android/core/misc/c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;J)Lcn/mucang/android/core/misc/c;
    .locals 11

    const-class v0, Lcn/mucang/android/core/misc/c;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v1, Lcn/mucang/android/core/misc/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/misc/c;

    if-nez v1, :cond_1

    const-string v1, "__runners_shared_preference"

    .line 4
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 5
    new-instance v1, Lcn/mucang/android/core/misc/c;

    sget-object v10, Lcn/mucang/android/core/config/u$a;->a:Lcn/mucang/android/core/config/u$a;

    move-object v5, v1

    move-object v6, p1

    move-wide v7, p2

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/core/misc/c;-><init>(Ljava/lang/String;JLandroid/content/SharedPreferences;Lcn/mucang/android/core/config/u;)V

    .line 6
    sget-object p0, Lcn/mucang/android/core/misc/c;->f:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 8
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/misc/c;->d:Lcn/mucang/android/core/config/u;

    invoke-interface {v0}, Lcn/mucang/android/core/config/u;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/core/misc/c;->a:J

    add-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcn/mucang/android/core/misc/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcn/mucang/android/core/misc/c;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/misc/c;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcn/mucang/android/core/misc/c;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcn/mucang/android/core/misc/c;->d:Lcn/mucang/android/core/config/u;

    invoke-interface {v2}, Lcn/mucang/android/core/config/u;->a()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
