.class public Lcom/mobile/auth/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mobile/auth/e/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/mobile/auth/e/f;

.field private c:Landroid/content/Context;

.field private d:Lcom/cmic/sso/sdk/AuthThemeConfig;

.field private e:Landroid/os/Handler;

.field private f:Lcom/mobile/auth/e/d;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/e/a;->f:Lcom/mobile/auth/e/d;

    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/mobile/auth/e/a;->g:J

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobile/auth/e/a;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/e/f;->a(Landroid/content/Context;)Lcom/mobile/auth/e/f;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/e/a;->b:Lcom/mobile/auth/e/f;

    iget-object p1, p0, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/k/p;->a(Landroid/content/Context;)V

    new-instance p1, Lcom/mobile/auth/e/a$a;

    invoke-direct {p1, p0}, Lcom/mobile/auth/e/a$a;-><init>(Lcom/mobile/auth/e/a;)V

    invoke-static {p1}, Lcom/mobile/auth/k/u;->a(Lcom/mobile/auth/k/u$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/e/a;
    .locals 2

    sget-object v0, Lcom/mobile/auth/e/a;->a:Lcom/mobile/auth/e/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/e/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/e/a;->a:Lcom/mobile/auth/e/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/e/a;

    invoke-direct {v1, p0}, Lcom/mobile/auth/e/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/e/a;->a:Lcom/mobile/auth/e/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/e/a;->a:Lcom/mobile/auth/e/a;

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/e/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobile/auth/e/a;->d()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/mobile/auth/k/f;->a(Z)V

    return-void
.end method

.method private a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mobile/auth/e/e;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-static {}, Lcom/mobile/auth/k/y;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "traceId"

    invoke-virtual {v3, v5, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/mobile/auth/k/i;->a(Ljava/lang/String;Lcom/mobile/auth/e/e;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, v6, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/mobile/auth/f/c;->a(Landroid/content/Context;)Lcom/mobile/auth/f/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/f/c;->a()Lcom/mobile/auth/f/a;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/cmic/sso/sdk/a;->a(Lcom/mobile/auth/f/a;)V

    invoke-static {v4, v5}, Lcom/mobile/auth/k/v;->a(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "starttime"

    invoke-virtual {v3, v9, v8}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "starttimemills"

    invoke-virtual {v3, v8, v4, v5}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)V

    const-string v4, "loginMethod"

    move-object/from16 v5, p4

    invoke-virtual {v3, v4, v5}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appkey"

    invoke-virtual {v3, v4, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appid"

    invoke-virtual {v3, v4, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v6, Lcom/mobile/auth/e/a;->g:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "timeOut"

    invoke-virtual {v3, v8, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "logintype"

    move/from16 v8, p5

    invoke-virtual {v3, v4, v8}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;I)V

    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->g()Z

    move-result v4

    const-string v8, "CLOSE_CERT_VERIFY"

    invoke-virtual {v3, v8, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    iget-object v4, v6, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    const-string v8, "android.permission.READ_PHONE_STATE"

    invoke-static {v4, v8}, Lcom/mobile/auth/k/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6709READ_PHONE_STATE\u6743\u9650\uff1f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AuthnHelper"

    invoke-static {v9, v8}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "hsaReadPhoneStatePermission"

    invoke-virtual {v3, v8, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/mobile/auth/g/b;->a()Lcom/mobile/auth/g/b;

    move-result-object v8

    iget-object v10, v6, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-virtual {v8, v10, v4}, Lcom/mobile/auth/g/b;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/mobile/auth/g/b;->a()Lcom/mobile/auth/g/b;

    move-result-object v4

    iget-object v8, v6, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/mobile/auth/g/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "networkClass"

    invoke-virtual {v3, v8, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mobile/auth/g/b;->a()Lcom/mobile/auth/g/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/g/b;->b()Lcom/mobile/auth/g/b$b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/g/b$b;->h()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "simCardNum"

    invoke-virtual {v3, v8, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v6, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/mobile/auth/k/t;->a(Landroid/content/Context;)I

    move-result v4

    const-string v8, "startnetworkType"

    invoke-virtual {v3, v8, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;I)V

    iget-object v8, v6, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/mobile/auth/k/o;->a(Landroid/content/Context;)Lcom/mobile/auth/k/o;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobile/auth/k/o;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v6, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/mobile/auth/k/o;->a(Landroid/content/Context;)Lcom/mobile/auth/k/o;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobile/auth/k/o;->c()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-static {v11}, Lcom/mobile/auth/k/o;->a(Landroid/content/Context;)Lcom/mobile/auth/k/o;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mobile/auth/k/o;->a(Z)Ljava/lang/String;

    move-result-object v11

    const-string v13, "imei"

    invoke-virtual {v3, v13, v5}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "iccid"

    invoke-virtual {v3, v13, v10}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "operatorType"

    invoke-virtual {v3, v13, v11}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "iccid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "imsi="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v13, 0x1

    if-eqz v10, :cond_0

    const-string v10, "\u4f7f\u7528iccid\u4f5c\u4e3a\u7f13\u5b58key"

    invoke-static {v9, v10}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "keyIsSimKeyICCID"

    invoke-virtual {v3, v10, v13}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    :cond_0
    const-string v10, "imsi"

    invoke-virtual {v3, v10, v8}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/mobile/auth/k/l;->a(Lcom/cmic/sso/sdk/a;)Z

    move-result v8

    const-string v10, "isCacheScrip"

    invoke-virtual {v3, v10, v8}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isCachePhoneScrip = "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "200026"

    const-string v2, "listener\u4e0d\u80fd\u4e3a\u7a7a"

    :goto_0
    move-object v0, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return v12

    :cond_1
    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "200082"

    const-string v2, "\u670d\u52a1\u5668\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->n()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    move-object v0, v5

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "200026"

    const-string v2, "appId \u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "200026"

    const-string v2, "appkey\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0

    :cond_7
    if-nez v4, :cond_8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "200022"

    const-string v2, "\u672a\u68c0\u6d4b\u5230\u7f51\u7edc"

    goto :goto_0

    :cond_8
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "authtype"

    const-string v1, "0"

    invoke-virtual {v3, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "200002"

    const-string v2, "\u65e0\u6cd5\u8bc6\u522bsim\u5361\u6216\u6ca1\u6709sim\u5361"

    goto :goto_0

    :cond_9
    const-string v0, "2"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    const-string v0, "3"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    const/4 v0, 0x2

    if-ne v4, v0, :cond_c

    if-nez v8, :cond_c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "200027"

    const-string v2, "\u65e0\u6570\u636e\u7f51\u7edc"

    goto/16 :goto_0

    :cond_c
    return v13
.end method

.method static synthetic b(Lcom/mobile/auth/e/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mobile/auth/k/y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthnHelper"

    invoke-static {v2, v1}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AID"

    invoke-static {v1, v0}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "AuthnHelper"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v4, 0x2

    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ";"

    if-ge v2, v3, :cond_2

    :try_start_1
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x3

    array-length v2, v0

    if-ge v4, v2, :cond_3

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/cmic/sso/sdk/AuthThemeConfig;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/e/a;->d:Lcom/cmic/sso/sdk/AuthThemeConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/AuthThemeConfig$Builder;->build()Lcom/cmic/sso/sdk/AuthThemeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/e/a;->d:Lcom/cmic/sso/sdk/AuthThemeConfig;

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/e/a;->d:Lcom/cmic/sso/sdk/AuthThemeConfig;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mobile/auth/e/a;->g:J

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;Ljava/lang/Throwable;Z)V
    .locals 4

    :try_start_0
    const-string v0, "traceId"

    invoke-virtual {p3, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKRequestCode"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Lcom/mobile/auth/k/i;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/k/i;->c(Ljava/lang/String;)Lcom/mobile/auth/e/e;

    move-result-object v3

    if-nez p6, :cond_0

    invoke-static {v0}, Lcom/mobile/auth/k/i;->b(Ljava/lang/String;)V

    :cond_0
    if-nez v3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p6, "logintype"

    invoke-virtual {p3, p6, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)I

    move-result p6

    if-nez p4, :cond_2

    invoke-static {p1, p2}, Lcom/mobile/auth/e/h;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    :cond_2
    const/4 v2, 0x3

    if-eq p6, v2, :cond_3

    invoke-static {p1, p2, p3, p4}, Lcom/mobile/auth/e/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p4

    :cond_3
    const-string p2, "traceId"

    invoke-virtual {p4, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/mobile/auth/e/a;->e:Landroid/os/Handler;

    new-instance p6, Lcom/mobile/auth/e/a$b;

    invoke-direct {p6, p0, v3, v1, p4}, Lcom/mobile/auth/e/a$b;-><init>(Lcom/mobile/auth/e/a;Lcom/mobile/auth/e/e;ILorg/json/JSONObject;)V

    invoke-virtual {p2, p6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/mobile/auth/f/c;->a(Landroid/content/Context;)Lcom/mobile/auth/f/c;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/mobile/auth/f/c;->a(Lcom/cmic/sso/sdk/a;)V

    invoke-virtual {p3}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobile/auth/f/a;->o()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p3}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object p2

    invoke-static {p2}, Lcom/mobile/auth/k/y;->a(Lcom/mobile/auth/f/a;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/mobile/auth/j/b;

    invoke-direct {p2}, Lcom/mobile/auth/j/b;-><init>()V

    iget-object p4, p0, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-virtual {p2, p4, p1, p3, p5}, Lcom/mobile/auth/j/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Ljava/lang/Throwable;)V

    :cond_4
    invoke-static {}, Lcom/mobile/auth/k/i;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mobile/auth/e/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/k/z;->a(Landroid/content/Context;)Lcom/mobile/auth/k/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/k/z;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/e/a;->f:Lcom/mobile/auth/e/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mobile/auth/e/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/mobile/auth/e/a;->g:J

    return-wide v0
.end method

.method public b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "AuthnHelper"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/g/b;->a()Lcom/mobile/auth/g/b;

    move-result-object v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v3}, Lcom/mobile/auth/k/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/mobile/auth/g/b;->a(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/mobile/auth/k/o;->a(Landroid/content/Context;)Lcom/mobile/auth/k/o;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mobile/auth/k/o;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/mobile/auth/k/t;->a(Landroid/content/Context;)I

    move-result p1

    const-string v3, "operatorType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "networkType"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u7c7b\u578b: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fd0\u8425\u5546\u7c7b\u578b: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "errorDes"

    const-string v0, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/mobile/auth/k/l;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
