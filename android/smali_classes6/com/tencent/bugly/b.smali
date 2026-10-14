.class public final Lcom/tencent/bugly/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z

.field private static d:Lcom/tencent/bugly/proguard/o;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 4

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/b;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "[init] initial Multi-times, ignore this."

    new-array p1, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 9
    :try_start_1
    sget-object p0, Lcom/tencent/bugly/proguard/y;->a:Ljava/lang/String;

    const-string p1, "[init] context of init() is null, check it."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    sput-boolean v2, Lcom/tencent/bugly/b;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 16
    sget-object p0, Lcom/tencent/bugly/proguard/y;->a:Ljava/lang/String;

    const-string p1, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    monitor-exit v0

    return-void

    .line 18
    :cond_3
    :try_start_4
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->t:Z

    invoke-static {p0, v2, v1, p1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-class v3, Lcom/tencent/bugly/b;

    monitor-enter v3

    .line 20
    :try_start_0
    sget-boolean v4, Lcom/tencent/bugly/b;->e:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v0, "[init] initial Multi-times, ignore this."

    new-array v1, v5, [Ljava/lang/Object;

    .line 21
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    monitor-exit v3

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 23
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/y;->a:Ljava/lang/String;

    const-string v1, "[init] context is null, check it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    monitor-exit v3

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 25
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/y;->a:Ljava/lang/String;

    const-string v1, "init arg \'crashReportAppID\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    monitor-exit v3

    return-void

    :cond_2
    const/4 v4, 0x1

    .line 27
    :try_start_3
    sput-boolean v4, Lcom/tencent/bugly/b;->e:Z

    if-eqz v1, :cond_3

    .line 28
    sput-boolean v4, Lcom/tencent/bugly/b;->c:Z

    .line 29
    sput-boolean v4, Lcom/tencent/bugly/proguard/y;->b:Z

    const-string v6, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    new-array v7, v5, [Ljava/lang/Object;

    .line 30
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "--------------------------------------------------------------------------------------------"

    new-array v7, v5, [Ljava/lang/Object;

    .line 31
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    new-array v7, v5, [Ljava/lang/Object;

    .line 32
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    new-array v7, v5, [Ljava/lang/Object;

    .line 33
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    new-array v7, v5, [Ljava/lang/Object;

    .line 34
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    new-array v7, v5, [Ljava/lang/Object;

    .line 35
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "--------------------------------------------------------------------------------------------"

    new-array v7, v5, [Ljava/lang/Object;

    .line 36
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "[init] Open debug mode of Bugly."

    new-array v7, v5, [Ljava/lang/Object;

    .line 37
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    const-string v6, " crash report start initializing..."

    new-array v7, v5, [Ljava/lang/Object;

    .line 38
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "[init] Bugly start initializing..."

    new-array v7, v5, [Ljava/lang/Object;

    .line 39
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "[init] Bugly complete version: v%s"

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "4.0.4"

    aput-object v8, v7, v5

    .line 40
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 41
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 42
    invoke-static {v6}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v7

    .line 43
    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/String;

    .line 44
    invoke-static {v6}, Lcom/tencent/bugly/proguard/aa;->a(Landroid/content/Context;)V

    .line 45
    sget-object v8, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v6, v8}, Lcom/tencent/bugly/proguard/o;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/o;

    move-result-object v8

    sput-object v8, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/o;

    .line 46
    invoke-static {v6}, Lcom/tencent/bugly/proguard/v;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/v;

    .line 47
    sget-object v8, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v6, v8}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 48
    invoke-static {v6}, Lcom/tencent/bugly/proguard/m;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/m;

    move-result-object v8

    .line 49
    invoke-static {v7}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 50
    sput-boolean v5, Lcom/tencent/bugly/b;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    monitor-exit v3

    return-void

    .line 52
    :cond_4
    :try_start_4
    invoke-virtual {v7, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;)V

    const-string v9, "[param] Set APP ID:%s"

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v5

    .line 53
    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v2, :cond_10

    .line 54
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/16 v12, 0x64

    if-nez v9, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_5

    invoke-virtual {v0, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v13, "appVersion %s length is over limit %d substring to %s"

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v0, v14, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v4

    aput-object v9, v14, v10

    invoke-static {v13, v14}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v9

    :cond_5
    iput-object v0, v7, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    const-string v0, "[param] Set App version: %s"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v5

    invoke-static {v0, v9}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->isReplaceOldChannel()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_7

    invoke-virtual {v0, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v13, "appChannel %s length is over limit %d substring to %s"

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v0, v14, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v4

    aput-object v9, v14, v10

    invoke-static {v13, v14}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v9

    :cond_7
    sget-object v13, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/o;

    const/16 v14, 0x22c

    const-string v15, "app_channel"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/tencent/bugly/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;Z)Z

    iput-object v0, v7, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/o;

    const/16 v9, 0x22c

    const/4 v13, 0x0

    invoke-virtual {v0, v9, v13, v4}, Lcom/tencent/bugly/proguard/o;->a(ILcom/tencent/bugly/proguard/n;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v9, "app_channel"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_9

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v7, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    :cond_9
    :goto_0
    const-string v0, "[param] Set App channel: %s"

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v13, v7, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    aput-object v13, v9, v5

    invoke-static {v0, v9}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    sget-boolean v9, Lcom/tencent/bugly/b;->c:Z

    if-eqz v9, :cond_a

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_b

    invoke-virtual {v0, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v13, "appPackageName %s length is over limit %d substring to %s"

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v0, v14, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v4

    aput-object v9, v14, v10

    invoke-static {v13, v14}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v9

    :cond_b
    iput-object v0, v7, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    const-string v0, "[param] Set App package: %s"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v5

    invoke-static {v0, v9}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_d

    invoke-virtual {v0, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v13, "deviceId %s length is over limit %d substring to %s"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v4

    aput-object v9, v11, v10

    invoke-static {v13, v11}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v9

    :cond_d
    invoke-virtual {v7, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;)V

    const-string v9, "[param] Set device ID: %s"

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v5

    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v7, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->d(Ljava/lang/String;)V

    const-string v9, "[param] Set device model: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v9, v4}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->isUploadProcess()Z

    move-result v0

    iput-boolean v0, v7, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->isBuglyLogUpload()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/proguard/aa;->a:Z

    :cond_10
    const/4 v4, 0x0

    .line 55
    :goto_2
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ge v4, v0, :cond_12

    .line 56
    :try_start_7
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    iget v0, v0, Lcom/tencent/bugly/a;->id:I

    invoke-virtual {v8, v0}, Lcom/tencent/bugly/proguard/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 57
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    invoke-virtual {v0, v6, v1, v2}, Lcom/tencent/bugly/a;->init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 58
    :try_start_8
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 60
    :cond_12
    invoke-static {v6, v2}, Lcom/tencent/bugly/crashreport/biz/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    if-eqz v2, :cond_13

    .line 61
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    goto :goto_4

    :cond_13
    const-wide/16 v0, 0x0

    .line 62
    :goto_4
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(J)V

    const-string v0, "[init] Bugly initialization finished."

    new-array v1, v5, [Ljava/lang/Object;

    .line 63
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 64
    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/a;)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    sget-object v1, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/common/info/a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->n:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-string p0, "bugly"

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
