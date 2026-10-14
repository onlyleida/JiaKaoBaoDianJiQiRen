.class public Lcn/mucang/android/core/location/LocationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/location/LocationUtils$d;
    }
.end annotation


# static fields
.field private static volatile a:Lcn/mucang/android/core/location/LocationUtils$d; = null

.field public static final b:Ljava/lang/String; = "LocationUtils"

.field private static volatile c:Lcn/mucang/android/core/location/c;

.field private static final d:Ljava/util/concurrent/locks/ReentrantLock;

.field private static volatile e:Lcn/mucang/android/core/location/c;

.field private static volatile f:Z

.field private static volatile g:Ljava/lang/String;

.field private static final h:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final i:Landroid/content/BroadcastReceiver;

.field private static j:Z

.field private static final k:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/mucang/android/core/location/LocationUtils;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/mucang/android/core/location/LocationUtils;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance v0, Lcn/mucang/android/core/location/LocationUtils$a;

    invoke-direct {v0}, Lcn/mucang/android/core/location/LocationUtils$a;-><init>()V

    sput-object v0, Lcn/mucang/android/core/location/LocationUtils;->i:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcn/mucang/android/core/location/LocationUtils;->k:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    new-instance v0, Lcn/mucang/android/core/location/LocationUtils$4;

    invoke-direct {v0}, Lcn/mucang/android/core/location/LocationUtils$4;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->u()V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/location/LocationUtils;->s(Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Landroid/app/Application;Lcn/mucang/android/core/location/LocationUtils$d;)V
    .locals 2

    .line 1
    sget-object p0, Lcn/mucang/android/core/location/LocationUtils;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-boolean v0, Lcn/mucang/android/core/location/LocationUtils;->j:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Lcn/mucang/android/core/location/LocationUtils;->b:Ljava/lang/String;

    const-string v0, "already initialized"

    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    :try_start_1
    sput-boolean v0, Lcn/mucang/android/core/location/LocationUtils;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    sput-object p1, Lcn/mucang/android/core/location/LocationUtils;->a:Lcn/mucang/android/core/location/LocationUtils$d;

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->q()Landroidx/localbroadcastmanager/a/a;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/core/location/LocationUtils;->i:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "cn.mucang.android.core.location.ACTION_TRY_TO_LOCATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroidx/localbroadcastmanager/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->j()Lcn/mucang/android/core/location/c;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/mucang/android/core/location/LocationUtils;->q(Lcn/mucang/android/core/location/c;Z)V

    .line 10
    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/mucang/android/core/location/LocationUtils;->p(Ljava/lang/String;Z)V

    .line 11
    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->u()V

    return-void

    :catchall_0
    move-exception p0

    .line 12
    sget-object p1, Lcn/mucang/android/core/location/LocationUtils;->k:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    throw p0
.end method

.method public static d()Lcn/mucang/android/core/location/c;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/location/LocationUtils;->e(Z)Lcn/mucang/android/core/location/c;

    move-result-object v0

    return-object v0
.end method

.method public static e(Z)Lcn/mucang/android/core/location/c;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcn/mucang/android/core/location/LocationUtils;->e:Lcn/mucang/android/core/location/c;

    if-eqz p0, :cond_1

    .line 3
    sget-object p0, Lcn/mucang/android/core/location/LocationUtils;->e:Lcn/mucang/android/core/location/c;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcn/mucang/android/core/location/LocationUtils;->c:Lcn/mucang/android/core/location/c;

    return-object p0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/location/LocationUtils;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/core/location/LocationUtils;->f:Z

    return v0
.end method

.method static synthetic h()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/location/LocationUtils;->t()V

    return-void
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "_location_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ipCityCode"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "hadeslee"

    const-string v2, "\u6709\u7f13\u5b58\u7684ipCityCode"

    .line 4
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static j()Lcn/mucang/android/core/location/c;
    .locals 10

    const-string v0, "0"

    const-string v1, ""

    .line 1
    sget-object v2, Lcn/mucang/android/core/location/LocationUtils;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    const-string v5, "_location_prefs"

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v3, v5, v6}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "hasBaiduLocation"

    .line 4
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    sget-object v4, Lcn/mucang/android/core/location/LocationUtils;->b:Ljava/lang/String;

    const-string v5, "\u6709\u7f13\u5b58\u7684\u767e\u5ea6\u4f4d\u7f6e"

    invoke-static {v4, v5}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v4, Lcn/mucang/android/core/location/c;

    invoke-direct {v4}, Lcn/mucang/android/core/location/c;-><init>()V

    const-string v5, "resultTime"

    .line 7
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/core/location/c;->s(Ljava/lang/String;)V

    const-string v5, "resultTimeStamp"

    const-wide/16 v6, 0x0

    .line 8
    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/core/location/c;->t(J)V

    const-string v5, "longitude"

    .line 9
    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcn/mucang/android/core/utils/y;->d(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcn/mucang/android/core/location/c;->p(D)V

    const-string v5, "latitude"

    .line 10
    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6, v7}, Lcn/mucang/android/core/utils/y;->d(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcn/mucang/android/core/location/c;->o(D)V

    const-string v5, "radius"

    .line 11
    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcn/mucang/android/core/utils/y;->d(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/core/location/c;->r(D)V

    const-string v0, "address"

    .line 12
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/mucang/android/core/location/c;->k(Ljava/lang/String;)V

    const-string v0, "province"

    .line 13
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/mucang/android/core/location/c;->q(Ljava/lang/String;)V

    const-string v0, "cityName"

    .line 14
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/mucang/android/core/location/c;->m(Ljava/lang/String;)V

    const-string v0, "cityCode"

    .line 15
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/mucang/android/core/location/c;->l(Ljava/lang/String;)V

    const-string v0, "district"

    .line 16
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/mucang/android/core/location/c;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    .line 18
    :cond_1
    :try_start_1
    sget-object v0, Lcn/mucang/android/core/location/LocationUtils;->b:Ljava/lang/String;

    const-string v1, "\u6ca1\u6709\u7f13\u5b58\u4f4d\u7f6e"

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    :catchall_0
    move-exception v0

    sget-object v1, Lcn/mucang/android/core/location/LocationUtils;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    throw v0
.end method

.method public static k(J)Lcn/mucang/android/core/location/c;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcn/mucang/android/core/location/LocationUtils;->l(JZ)Lcn/mucang/android/core/location/c;

    move-result-object p0

    return-object p0
.end method

.method public static l(JZ)Lcn/mucang/android/core/location/c;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/location/MucangLocateOption;

    invoke-direct {v0}, Lcn/mucang/android/core/location/MucangLocateOption;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/core/location/MucangLocateOption;->g(J)Lcn/mucang/android/core/location/MucangLocateOption;

    invoke-virtual {v0, p2}, Lcn/mucang/android/core/location/MucangLocateOption;->h(Z)Lcn/mucang/android/core/location/MucangLocateOption;

    sget-object p0, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->FINE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/core/location/MucangLocateOption;->a(Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;)Lcn/mucang/android/core/location/MucangLocateOption;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/core/location/LocationUtils;->m(Lcn/mucang/android/core/location/MucangLocateOption;)Lcn/mucang/android/core/location/c;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcn/mucang/android/core/location/MucangLocateOption;)Lcn/mucang/android/core/location/c;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/location/MucangLocateOption;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/core/location/MucangLocateOption;->b()Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->FINE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    if-ne v0, v2, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcn/mucang/android/core/location/LocationUtils;->b:Ljava/lang/String;

    const-string v0, "\u4f7f\u7528\u7cbe\u786e\u5b9a\u4f4d\uff0c\u6ca1\u7ed9\u7cbe\u786e\u5b9a\u4f4d\u6743\u9650\u76f4\u63a5\u8fd4\u56de"

    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/core/location/MucangLocateOption;->b()Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->COARSE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    if-ne v0, v2, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    sget-object p0, Lcn/mucang/android/core/location/LocationUtils;->b:Ljava/lang/String;

    const-string v0, "\u4f7f\u7528\u7c97\u7565\u5b9a\u4f4d\uff0c\u6ca1\u7ed9\u7c97\u7565\u5b9a\u4f4d\u6743\u9650\u76f4\u63a5\u8fd4\u56de"

    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 8
    :cond_1
    sget-object v0, Lcn/mucang/android/core/location/LocationUtils;->c:Lcn/mucang/android/core/location/c;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcn/mucang/android/core/location/LocationUtils;->c:Lcn/mucang/android/core/location/c;

    invoke-virtual {v0}, Lcn/mucang/android/core/location/c;->j()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcn/mucang/android/core/location/MucangLocateOption;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 9
    sget-object v0, Lcn/mucang/android/core/location/LocationUtils;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9a\u4f4d\u65f6\u95f4\u95f4\u9694\u5c0f\u4e8e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/core/location/MucangLocateOption;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms\u76f4\u63a5\u8fd4\u56de\u7f13\u5b58"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object p0, Lcn/mucang/android/core/location/LocationUtils;->c:Lcn/mucang/android/core/location/c;

    return-object p0

    .line 11
    :cond_2
    sget-object v0, Lcn/mucang/android/core/location/LocationUtils;->a:Lcn/mucang/android/core/location/LocationUtils$d;

    if-nez v0, :cond_4

    .line 12
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p0

    const-string v0, "\u8bf7\u5f15\u5165\u5b9a\u4f4d\u670d\u52a1\u6a21\u5757"

    if-eqz p0, :cond_3

    .line 13
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 14
    :cond_3
    sget-object p0, Lcn/mucang/android/core/location/LocationUtils;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 15
    :cond_4
    sget-object v0, Lcn/mucang/android/core/location/LocationUtils;->a:Lcn/mucang/android/core/location/LocationUtils$d;

    invoke-interface {v0, p0}, Lcn/mucang/android/core/location/LocationUtils$d;->a(Lcn/mucang/android/core/location/MucangLocateOption;)Lcn/mucang/android/core/location/e;

    move-result-object p0

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/core/location/e;->c()Lcn/mucang/android/core/location/c;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/4 v4, 0x0

    .line 18
    sput-boolean v4, Lcn/mucang/android/core/location/LocationUtils;->f:Z

    .line 19
    sget-object v4, Lcn/mucang/android/core/location/a;->a:Lcn/mucang/android/core/location/a;

    invoke-static {v4}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    .line 20
    invoke-static {v2, v3}, Lcn/mucang/android/core/location/LocationUtils;->q(Lcn/mucang/android/core/location/c;Z)V

    goto :goto_0

    .line 21
    :cond_5
    sput-boolean v3, Lcn/mucang/android/core/location/LocationUtils;->f:Z

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/core/location/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/location/LocationUtils;->s(Ljava/lang/String;J)V

    return-object v2
.end method

.method private static n(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_location_prefs"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ipCityCode"

    .line 5
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static o(Lcn/mucang/android/core/location/c;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_location_prefs"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "hasBaiduLocation"

    .line 4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cityCode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cityName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resultTime"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->j()J

    move-result-wide v1

    const-string v3, "resultTimeStamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->f()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "longitude"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->e()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "latitude"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->h()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "radius"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "province"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/core/location/c;->d()Ljava/lang/String;

    move-result-object p0

    const-string v1, "district"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static p(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/location/LocationUtils;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sput-object p0, Lcn/mucang/android/core/location/LocationUtils;->g:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/location/LocationUtils;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcn/mucang/android/core/location/LocationUtils;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw p0
.end method

.method private static q(Lcn/mucang/android/core/location/c;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/location/LocationUtils;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sput-object p0, Lcn/mucang/android/core/location/LocationUtils;->c:Lcn/mucang/android/core/location/c;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/location/LocationUtils;->o(Lcn/mucang/android/core/location/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcn/mucang/android/core/location/LocationUtils;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    throw p0
.end method

.method public static r(Lcn/mucang/android/core/location/c;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/core/location/LocationUtils;->e:Lcn/mucang/android/core/location/c;

    return-void
.end method

.method private static s(Ljava/lang/String;J)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-string p1, "\u83b7\u53d6"

    const-wide/16 v2, 0x1f4

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b9a\u4f4d\u5c0f\u4e8e0.5\u79d2"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    cmp-long p2, v0, v2

    if-gez p2, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b9a\u4f4d\u5c0f\u4e8e1\u79d2"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    const-wide/16 v2, 0x7d0

    cmp-long p2, v0, v2

    if-gez p2, :cond_2

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b9a\u4f4d\u5c0f\u4e8e2\u79d2"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    const-wide/16 v2, 0xbb8

    cmp-long p2, v0, v2

    if-gez p2, :cond_3

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b9a\u4f4d\u5c0f\u4e8e3\u79d2"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0xfa0

    cmp-long p2, v0, v2

    if-gez p2, :cond_4

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b9a\u4f4d\u5c0f\u4e8e4\u79d2"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x1388

    cmp-long p2, v0, v2

    if-gez p2, :cond_5

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b9a\u4f4d\u5c0f\u4e8e5\u79d2"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x2710

    cmp-long p2, v0, v2

    if-gez p2, :cond_6

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b9a\u4f4d\u5c0f\u4e8e10\u79d2"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u5b9a\u4f4d\u5927\u4e8e10\u79d2"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    :goto_0
    invoke-static {p0}, Lf/a/a/a/c;->k(Ljava/lang/String;)V

    return-void
.end method

.method private static t()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "ip-locate1"

    invoke-static {v0, v1}, Lcn/mucang/android/core/misc/c;->e(Landroid/content/Context;Ljava/lang/String;)Lcn/mucang/android/core/misc/c;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Lcn/mucang/android/core/location/LocationUtils$c;

    invoke-direct {v1}, Lcn/mucang/android/core/location/LocationUtils$c;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/misc/b;->c(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u83b7\u53d6IP\u8f6cCityCode\u5931\u8d25"

    .line 4
    invoke-static {v1}, Lf/a/a/a/c;->l(Ljava/lang/String;)V

    const-string v1, "\u9ed8\u8ba4\u66ff\u6362"

    .line 5
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static u()V
    .locals 2

    .line 1
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tryLocate"

    .line 2
    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "core"

    const-string v1, "start locate"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Lcn/mucang/android/core/location/LocationUtils$b;

    invoke-direct {v0}, Lcn/mucang/android/core/location/LocationUtils$b;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method
