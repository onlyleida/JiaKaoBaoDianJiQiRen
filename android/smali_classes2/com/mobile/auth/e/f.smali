.class public Lcom/mobile/auth/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mobile/auth/e/f;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/mobile/auth/i/a;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/e/f;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/i/a;->a(Landroid/content/Context;)Lcom/mobile/auth/i/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/e/f;->b:Lcom/mobile/auth/i/a;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/e/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mobile/auth/e/f;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/e/f;
    .locals 2

    sget-object v0, Lcom/mobile/auth/e/f;->a:Lcom/mobile/auth/e/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/e/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/e/f;->a:Lcom/mobile/auth/e/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/e/f;

    invoke-direct {v1, p0}, Lcom/mobile/auth/e/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/e/f;->a:Lcom/mobile/auth/e/f;

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
    sget-object p0, Lcom/mobile/auth/e/f;->a:Lcom/mobile/auth/e/f;

    return-object p0
.end method

.method static synthetic a(Lcom/mobile/auth/e/f;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mobile/auth/e/f;->b(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/e/f;Lorg/json/JSONObject;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mobile/auth/e/f;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V
    .locals 3

    const-string v0, "keyIsSimKeyICCID"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, "iccid"

    goto :goto_0

    :cond_0
    const-string v0, "imsi"

    :goto_0
    invoke-virtual {p3, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/mobile/auth/e/f;->c:Landroid/content/Context;

    const-string v1, "phonescripED"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, p2, v1, v2, p3}, Lcom/mobile/auth/k/l;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private b(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "request_start_time"

    invoke-virtual {p1, v2, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)V

    new-instance v0, Lcom/mobile/auth/e/f$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobile/auth/e/f$a;-><init>(Lcom/mobile/auth/e/f;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V

    iget-object p2, p0, Lcom/mobile/auth/e/f;->b:Lcom/mobile/auth/i/a;

    iget-object v1, p0, Lcom/mobile/auth/e/f;->c:Landroid/content/Context;

    invoke-virtual {p2, v1, p1, v0}, Lcom/mobile/auth/i/a;->a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "tokentimes"

    invoke-static {v2, v0, v1}, Lcom/mobile/auth/k/p;->a(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-string v0, "AuthBusiness"

    const-string v1, "\u83b7\u53d6\u5e73\u53f0token\u300b\u300b\u300b\u300b"

    invoke-static {v0, v1}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mobile/auth/k/l;->a(Z)V

    const-string v1, "logintype"

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v0, "userCapaid"

    const-string v1, "200"

    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/e/f;->b:Lcom/mobile/auth/i/a;

    new-instance v1, Lcom/mobile/auth/e/f$b;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/mobile/auth/e/f$b;-><init>(Lcom/mobile/auth/e/f;Lcom/cmic/sso/sdk/a;JLcom/mobile/auth/e/g;)V

    invoke-virtual {v0, p1, v1}, Lcom/mobile/auth/i/a;->a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V

    return-void
.end method

.method public a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Lcom/mobile/auth/e/g;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fdb\u884c\u53d6\u53f7\u67e5\u8be2\u300b\u300b\u300b\u300bauthtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AuthBusiness"

    invoke-static {v0, p2}, Lcom/mobile/auth/k/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mobile/auth/e/f;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/mobile/auth/e/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobile/auth/k/q;->a(Landroid/content/Context;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/k/h;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apppackage"

    invoke-virtual {p1, v1, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "appsign"

    invoke-virtual {p1, p2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/cmic/sso/sdk/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mobile/auth/e/f;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/mobile/auth/k/t;->a(Landroid/content/Context;)I

    move-result p2

    const-string v1, "networkType"

    invoke-virtual {p1, v1, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;I)V

    const-string p2, "authtype"

    const-string v1, "3"

    invoke-virtual {p1, p2, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "operatorType"

    invoke-virtual {p1, p2}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/f/a;->n()Z

    move-result v1

    const-string v2, "use_http_get_phone_scrip"

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p1, v2, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    :goto_1
    const-string p2, "degrade"

    const-string v0, "none"

    invoke-virtual {p1, p2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/mobile/auth/e/f;->b(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V
    .locals 7

    const-string v0, "true"

    const-string v1, "logintype"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "isCacheScrip"

    invoke-virtual {p2, v3, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    const-string v5, "103000"

    if-ne v1, v4, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "resultCode"

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-interface {p3, v5, v0, p2, p1}, Lcom/mobile/auth/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/e/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobile/auth/k/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {p2, v3, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    const-string v0, "networkType"

    invoke-virtual {p2, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string p1, "200027"

    const-string v0, "\u65e0\u6570\u636e\u7f51\u7edc"

    invoke-interface {p3, p1, v0, p2, v6}, Lcom/mobile/auth/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p1, p3}, Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Lcom/mobile/auth/e/g;)V

    :goto_1
    return-void

    :cond_2
    const-string p1, "sourceid"

    const-string v2, ""

    invoke-static {p1, v2}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "phonescrip"

    invoke-virtual {p2, p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p1, v1, :cond_3

    const-string p1, "securityphone"

    invoke-static {p1, v2}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u663e\u793a\u767b\u5f55\u53d6\u53f7\u6210\u529f"

    invoke-interface {p3, v5, p1, p2, v6}, Lcom/mobile/auth/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/g;)V

    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0, p2, p1, p3}, Lcom/mobile/auth/e/f;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Lcom/mobile/auth/e/g;)V

    return-void
.end method
