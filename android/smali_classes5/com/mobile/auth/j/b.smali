.class public Lcom/mobile/auth/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/cmic/sso/sdk/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/j/b;)Lcom/cmic/sso/sdk/a;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/j/b;->a:Lcom/cmic/sso/sdk/a;

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/j/b;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobile/auth/j/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mobile/auth/h/f;Lcom/mobile/auth/i/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mobile/auth/h/f;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/mobile/auth/i/b;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request https url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">>>>>>> PARAMS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mobile/auth/h/f;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SendLog"

    invoke-static {v1, v0}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mobile/auth/k/d;

    invoke-direct {v2}, Lcom/mobile/auth/k/d;-><init>()V

    new-instance v6, Lcom/mobile/auth/j/b$c;

    invoke-direct {v6, p0, p1, p3}, Lcom/mobile/auth/j/b$c;-><init>(Lcom/mobile/auth/j/b;Ljava/lang/String;Lcom/mobile/auth/i/b;)V

    iget-object p3, p0, Lcom/mobile/auth/j/b;->a:Lcom/cmic/sso/sdk/a;

    const-string v0, "traceId"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mobile/auth/j/b;->a:Lcom/cmic/sso/sdk/a;

    const/4 v5, 0x0

    const-string v7, "POST"

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;Lcom/mobile/auth/h/f;ZLcom/mobile/auth/k/d$b;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Lcom/mobile/auth/i/b;)V
    .locals 6

    new-instance v0, Lcom/mobile/auth/h/d;

    invoke-direct {v0}, Lcom/mobile/auth/h/d;-><init>()V

    new-instance v1, Lcom/mobile/auth/h/d$a;

    invoke-direct {v1}, Lcom/mobile/auth/h/d$a;-><init>()V

    new-instance v2, Lcom/mobile/auth/h/d$b;

    invoke-direct {v2}, Lcom/mobile/auth/h/d$b;-><init>()V

    invoke-static {}, Lcom/mobile/auth/k/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/h/d$b;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/h/d$b;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mobile/auth/j/b;->a:Lcom/cmic/sso/sdk/a;

    const-string v4, "appid"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/h/d$b;->b(Ljava/lang/String;)V

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Lcom/mobile/auth/h/d$b;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mobile/auth/h/d$b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/h/d$b;->c(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/mobile/auth/h/d$a;->a(Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Lcom/mobile/auth/h/d;->a(Lcom/mobile/auth/h/d$a;)V

    invoke-virtual {v0, v2}, Lcom/mobile/auth/h/d;->a(Lcom/mobile/auth/h/d$b;)V

    iget-object p1, p0, Lcom/mobile/auth/j/b;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mobile/auth/f/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/log/logReport"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lcom/mobile/auth/j/b;->a(Ljava/lang/String;Lcom/mobile/auth/h/f;Lcom/mobile/auth/i/b;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance p1, Lcom/mobile/auth/j/b$b;

    invoke-direct {p1, p0}, Lcom/mobile/auth/j/b$b;-><init>(Lcom/mobile/auth/j/b;)V

    invoke-direct {p0, v0, p1}, Lcom/mobile/auth/j/b;->a(Lorg/json/JSONArray;Lcom/mobile/auth/i/b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Ljava/lang/Throwable;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "startnetworkType"

    const-string v4, "interfaceelasped"

    const-string v5, "interfacecode"

    const-string v6, "interfacetype"

    const-string v7, "mobileAuth"

    const-string v8, "loginMethod"

    const-string v9, "loginAuth"

    const-string v10, "PGWResultCode"

    const-string v11, "imsiState"

    const-string v12, "timeOut"

    const-string v13, ""

    move-object/from16 v14, p1

    iput-object v14, v1, Lcom/mobile/auth/j/b;->b:Landroid/content/Context;

    :try_start_0
    new-instance v14, Lcom/mobile/auth/j/a;

    invoke-direct {v14}, Lcom/mobile/auth/j/a;-><init>()V

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v16, v3

    const-string v3, "resultCode"

    invoke-virtual {v15, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/mobile/auth/j/b;->b:Landroid/content/Context;

    invoke-static {v15}, Lcom/mobile/auth/k/t;->a(Landroid/content/Context;)I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/mobile/auth/j/a;->F(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v11}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isCacheScrip"

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "scrip"

    :goto_0
    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->x(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "pgw"

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v8}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v14, v9}, Lcom/mobile/auth/j/a;->C(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v8}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v14, v7}, Lcom/mobile/auth/j/a;->C(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "preGetMobile"

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->C(Ljava/lang/String;)V

    :goto_2
    const-string v0, "traceId"

    invoke-virtual {v2, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->y(Ljava/lang/String;)V

    const-string v0, "appid"

    invoke-virtual {v2, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->D(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/j/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobile/auth/k/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->r(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/j/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobile/auth/k/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->s(Ljava/lang/String;)V

    const-string v0, "degrade"

    invoke-virtual {v2, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->b(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/j/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobile/auth/k/t;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->c(Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-virtual {v2, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->d(Ljava/lang/String;)V

    const-string v0, "quick_login_android_5.8.0"

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->E(Ljava/lang/String;)V

    const-string v0, "android"

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->p(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->q(Ljava/lang/String;)V

    const-string v0, "starttime"

    invoke-virtual {v2, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->z(Ljava/lang/String;)V

    const-string v0, "hsaReadPhoneStatePermission"

    invoke-virtual {v2, v0, v10}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "1"

    const-string v8, "0"

    if-eqz v0, :cond_3

    move-object v0, v7

    goto :goto_3

    :cond_3
    move-object v0, v8

    :goto_3
    :try_start_1
    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/mobile/auth/k/v;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->B(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "starttimemills"

    invoke-virtual {v2, v9}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)J

    move-result-wide v19

    move-object v9, v11

    sub-long v10, v17, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->o(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v13}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->m(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v13}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v13}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v13}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v13}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->j(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v13}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loginTime"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->k(Ljava/lang/String;)V

    const-string v0, "operatorType"

    invoke-virtual {v2, v0, v13}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->u(Ljava/lang/String;)V

    move-object/from16 v0, v16

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mobile/auth/j/b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mobile/auth/k/t;->a(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->F(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->F(Ljava/lang/String;)V

    :goto_4
    const-string v0, "networkClass"

    invoke-virtual {v2, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->A(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->w(Ljava/lang/String;)V

    const-string v0, "simCardNum"

    invoke-virtual {v2, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->t(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/l;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move-object v7, v8

    :goto_5
    invoke-virtual {v14, v7}, Lcom/mobile/auth/j/a;->g(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v8}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->f(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v4, "methodTimes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->o(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "stack"

    const-string v4, "\n"

    const-string v5, "message"

    if-eqz p4, :cond_7

    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    array-length v9, v8

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v9, :cond_6

    aget-object v12, v8, v11

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    sget-object v6, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    if-nez v3, :cond_8

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :cond_8
    sget-object v6, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    array-length v12, v11

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v12, :cond_9

    aget-object v16, v11, v15

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v10, 0x0

    goto :goto_7

    :cond_a
    sget-object v0, Lcom/mobile/auth/j/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {v14, v3}, Lcom/mobile/auth/j/a;->a(Lorg/json/JSONArray;)V

    :cond_c
    const-string v0, "AID"

    invoke-static {v0, v13}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->e(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/j/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobile/auth/k/o;->a(Landroid/content/Context;)Lcom/mobile/auth/k/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobile/auth/k/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mobile/auth/j/a;->G(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "SendLog"

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u767b\u5f55\u65e5\u5fd7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/mobile/auth/j/a;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobile/auth/j/b;->b:Landroid/content/Context;

    invoke-virtual {v14}, Lcom/mobile/auth/j/a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lcom/mobile/auth/j/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    iput-object p3, p0, Lcom/mobile/auth/j/b;->a:Lcom/cmic/sso/sdk/a;

    iput-object p1, p0, Lcom/mobile/auth/j/b;->b:Landroid/content/Context;

    new-instance p1, Lcom/mobile/auth/j/b$a;

    invoke-direct {p1, p0, p2}, Lcom/mobile/auth/j/b$a;-><init>(Lcom/mobile/auth/j/b;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/mobile/auth/k/u;->a(Lcom/mobile/auth/k/u$a;)V

    return-void
.end method
