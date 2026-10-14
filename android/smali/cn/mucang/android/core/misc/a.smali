.class public Lcn/mucang/android/core/misc/a;
.super Lcn/mucang/android/core/misc/b;
.source "SourceFile"


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/core/misc/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private final c:Lcn/mucang/android/core/config/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/core/misc/a;->d:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;Lcn/mucang/android/core/config/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/misc/b;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/core/misc/a;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/misc/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/core/misc/a;->c:Lcn/mucang/android/core/config/u;

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Lcn/mucang/android/core/misc/a;
    .locals 5

    const-class v0, Lcn/mucang/android/core/misc/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 2
    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "__day_runner"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object v1, Lcn/mucang/android/core/misc/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/core/misc/a;

    .line 5
    sget-object v2, Lcn/mucang/android/core/misc/a;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "__runners_shared_preference"

    .line 6
    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 7
    new-instance v1, Lcn/mucang/android/core/misc/a;

    sget-object v2, Lcn/mucang/android/core/config/u$a;->a:Lcn/mucang/android/core/config/u$a;

    invoke-direct {v1, p1, p0, v2}, Lcn/mucang/android/core/misc/a;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;Lcn/mucang/android/core/config/u;)V

    .line 8
    sget-object p0, Lcn/mucang/android/core/misc/a;->d:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static g(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x6

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne v1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/misc/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/core/misc/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/core/misc/a;->c:Lcn/mucang/android/core/config/u;

    invoke-interface {v2}, Lcn/mucang/android/core/config/u;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcn/mucang/android/core/misc/a;->c:Lcn/mucang/android/core/config/u;

    invoke-interface {v1}, Lcn/mucang/android/core/config/u;->a()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/misc/a;->f()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/misc/a;->g(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Ljava/util/Date;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/misc/a;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcn/mucang/android/core/misc/a;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
