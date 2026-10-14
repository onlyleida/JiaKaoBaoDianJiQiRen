.class public Lcom/mobile/auth/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mobile/auth/i/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobile/auth/i/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/i/a;
    .locals 2

    sget-object v0, Lcom/mobile/auth/i/a;->a:Lcom/mobile/auth/i/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/i/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/i/a;->a:Lcom/mobile/auth/i/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/i/a;

    invoke-direct {v1, p0}, Lcom/mobile/auth/i/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/i/a;->a:Lcom/mobile/auth/i/a;

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
    sget-object p0, Lcom/mobile/auth/i/a;->a:Lcom/mobile/auth/i/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V
    .locals 10

    const-string v0, "networkType"

    invoke-virtual {p2, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)I

    move-result v0

    const-string v1, "authtype"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/mobile/auth/h/c;

    invoke-direct {v5}, Lcom/mobile/auth/h/c;-><init>()V

    new-instance v3, Lcom/mobile/auth/h/c$a;

    invoke-direct {v3}, Lcom/mobile/auth/h/c$a;-><init>()V

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->e(Ljava/lang/String;)V

    const-string v4, "quick_login_android_5.8.0"

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->f(Ljava/lang/String;)V

    const-string v4, "appid"

    invoke-virtual {p2, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->g(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/mobile/auth/h/c$a;->h(Ljava/lang/String;)V

    const-string v4, "smskey"

    invoke-virtual {p2, v4, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->i(Ljava/lang/String;)V

    const-string v4, "imsi"

    invoke-virtual {p2, v4, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->j(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mobile/auth/i/a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mobile/auth/k/o;->a(Landroid/content/Context;)Lcom/mobile/auth/k/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/k/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->d(Ljava/lang/String;)V

    const-string v4, "operatorType"

    invoke-virtual {p2, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->k(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->m(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->n(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->o(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/y;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->q(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/v;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->r(Ljava/lang/String;)V

    const-string v4, "apppackage"

    invoke-virtual {p2, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mobile/auth/h/c$a;->s(Ljava/lang/String;)V

    const-string v6, "appsign"

    invoke-virtual {p2, v6}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/mobile/auth/h/c$a;->t(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->s(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->t(Ljava/lang/String;)V

    const-string v4, "appkey"

    invoke-virtual {p2, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobile/auth/h/c$a;->u(Ljava/lang/String;)V

    sget-object v4, Lcom/cmic/sso/sdk/b;->a:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/mobile/auth/h/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/m;->a()Lcom/mobile/auth/k/m;

    move-result-object v4

    sget-object v6, Lcom/cmic/sso/sdk/b;->a:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mobile/auth/k/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/mobile/auth/h/c;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/mobile/auth/h/c;->a(Lcom/mobile/auth/h/c$a;)V

    const-string v4, "interfacetype"

    invoke-virtual {p2, v4, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "interfaceVersion"

    const-string v8, "7.0"

    invoke-virtual {p2, v7, v8}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->l()Z

    move-result v8

    const-string v9, "isCloseIpv4"

    invoke-virtual {p2, v9, v8}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->m()Z

    move-result v8

    const-string v9, "isCloseIpv6"

    invoke-virtual {p2, v9, v8}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)V

    const-string v8, "use_http_get_phone_scrip"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "protocol"

    if-eqz v8, :cond_1

    const-string v2, "HTTP"

    invoke-virtual {p2, v9, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "getPrePhonescrip;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "retryUrl"

    invoke-virtual {p2, v2}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    const-string v4, "/unisdk/rs/getPrePhonescrip"

    goto :goto_0

    :cond_1
    const-string v8, "AID"

    invoke-static {v8, v2}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mobile/auth/h/c$a;->a(Ljava/lang/String;)V

    const-string v2, "HTTPS"

    invoke-virtual {p2, v9, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "getPrePhonescripForHttps;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/mobile/auth/f/a;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    const-string v4, "/unisdk/rs/getPrePhonescripForHttps"

    :goto_0
    invoke-direct {p0, v3, v2, v4}, Lcom/mobile/auth/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v4, v2

    const/4 v2, 0x3

    const-string v3, "BaseRequest"

    if-ne v0, v2, :cond_2

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/mobile/auth/k/z;->a(Landroid/content/Context;)Lcom/mobile/auth/k/z;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f7f\u7528wifi\u4e0b\u53d6\u53f7"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u4f7f\u7528wifi\u4e0b\u53d6\u53f7"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/mobile/auth/k/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_2
    move-object v3, p0

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/mobile/auth/i/a;->a(Ljava/lang/String;Lcom/mobile/auth/h/f;ZLcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V

    return-void
.end method

.method public a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V
    .locals 8

    new-instance v2, Lcom/mobile/auth/h/a;

    invoke-direct {v2}, Lcom/mobile/auth/h/a;-><init>()V

    new-instance v0, Lcom/mobile/auth/h/a$a;

    invoke-direct {v0}, Lcom/mobile/auth/h/a$a;-><init>()V

    const-string v1, "0.1"

    invoke-virtual {v2, v1}, Lcom/mobile/auth/h/a;->f(Ljava/lang/String;)V

    const-string v1, "phonescrip"

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/h/a;->i(Ljava/lang/String;)V

    const-string v1, "appid"

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/h/a;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/y;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/h/a;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/h/a;->c(Ljava/lang/String;)V

    const-string v1, "authtype"

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "6.0"

    if-eqz v1, :cond_0

    const-string v1, "2.0"

    invoke-virtual {v2, v1}, Lcom/mobile/auth/h/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Lcom/mobile/auth/h/a;->d(Ljava/lang/String;)V

    :goto_0
    const-string v1, "userCapaid"

    const-string v4, "50"

    invoke-virtual {p1, v1, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/h/a;->e(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v2, v1}, Lcom/mobile/auth/h/a;->a(Ljava/lang/String;)V

    const-string v4, "sourceid"

    invoke-virtual {p1, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mobile/auth/h/a;->b(Ljava/lang/String;)V

    const-string v4, "authenticated_appid"

    invoke-virtual {p1, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mobile/auth/h/a;->k(Ljava/lang/String;)V

    const-string v4, "genTokenByAppid"

    invoke-virtual {p1, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mobile/auth/h/a;->l(Ljava/lang/String;)V

    const-string v4, "appkey"

    invoke-virtual {p1, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mobile/auth/h/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mobile/auth/h/a;->j(Ljava/lang/String;)V

    const-string v4, "AID"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mobile/auth/h/a$a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mobile/auth/h/a$a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mobile/auth/h/a$a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/t;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mobile/auth/h/a$a;->d(Ljava/lang/String;)V

    const-string v4, "operatorType"

    invoke-virtual {p1, v4, v5}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mobile/auth/h/a$a;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mobile/auth/h/a$a;->f(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mobile/auth/i/a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mobile/auth/k/t;->a(Landroid/content/Context;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mobile/auth/h/a$a;->g(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/mobile/auth/k/x;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mobile/auth/h/a$a;->h(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lcom/mobile/auth/k/x;->a(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mobile/auth/h/a$a;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobile/auth/f/a;->g()Z

    move-result v6

    const-string v7, "1"

    if-eqz v6, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    invoke-virtual {v0, v6}, Lcom/mobile/auth/h/a$a;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/k/l;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v7}, Lcom/mobile/auth/h/a$a;->k(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/mobile/auth/h/a$a;->k(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Lcom/mobile/auth/h/a$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mobile/auth/h/a;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/mobile/auth/f/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    const-string v4, "/unisdk/api/getAuthToken"

    invoke-direct {p0, v1, v0, v4}, Lcom/mobile/auth/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "interfacetype"

    invoke-virtual {p1, v0, v5}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "getAuthToken;"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "interfaceVersion"

    invoke-virtual {p1, v0, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mobile/auth/i/a;->a(Ljava/lang/String;Lcom/mobile/auth/h/f;ZLcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mobile/auth/h/f;ZLcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mobile/auth/h/f;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z",
            "Lcom/cmic/sso/sdk/a;",
            "Lcom/mobile/auth/i/b;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v3, p1

    move-object v9, p4

    move-object/from16 v2, p5

    const-string v0, "imsiState"

    const-string v4, "\u7f51\u7edc\u672a\u8fde\u63a5"

    const-string v5, "timeOut"

    const-string v6, "200022"

    const-string v7, "traceId"

    invoke-virtual {p4, v7}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request https url : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ">>>>>>> PARAMS : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mobile/auth/h/f;->a()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "BaseRequest"

    invoke-static {v10, v7}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/mobile/auth/i/a;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/mobile/auth/k/t;->a(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "resultCode"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "desc"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request failed , url : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">>>>>errorMsg : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/mobile/auth/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-interface {v2, v6, v4, v5}, Lcom/mobile/auth/i/b;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p4, v5}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p4, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    new-instance v0, Lcom/mobile/auth/k/d;

    invoke-direct {v0}, Lcom/mobile/auth/k/d;-><init>()V

    new-instance v6, Lcom/mobile/auth/i/a$a;

    invoke-direct {v6, p0, p1, p4, v2}, Lcom/mobile/auth/i/a$a;-><init>(Lcom/mobile/auth/i/a;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V

    const-string v7, "POST"

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/mobile/auth/k/d;->a(Ljava/lang/String;Lcom/mobile/auth/h/f;ZLcom/mobile/auth/k/d$b;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public a(ZLcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V
    .locals 6

    new-instance v2, Lcom/mobile/auth/h/b;

    invoke-direct {v2}, Lcom/mobile/auth/h/b;-><init>()V

    const-string v0, "1.0"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/h/b;->a(Ljava/lang/String;)V

    const-string v0, "Android"

    invoke-virtual {v2, v0}, Lcom/mobile/auth/h/b;->b(Ljava/lang/String;)V

    const-string v0, "AID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mobile/auth/k/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mobile/auth/h/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v2, p1}, Lcom/mobile/auth/h/b;->d(Ljava/lang/String;)V

    const-string p1, "quick_login_android_5.8.0"

    invoke-virtual {v2, p1}, Lcom/mobile/auth/h/b;->e(Ljava/lang/String;)V

    const-string p1, "appid"

    invoke-virtual {p2, p1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/mobile/auth/h/b;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mobile/auth/h/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/mobile/auth/h/b;->g(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a;->a()Lcom/mobile/auth/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobile/auth/f/a;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    const-string v1, "/client/uniConfig"

    invoke-direct {p0, v0, p1, v1}, Lcom/mobile/auth/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mobile/auth/i/a;->a(Ljava/lang/String;Lcom/mobile/auth/h/f;ZLcom/cmic/sso/sdk/a;Lcom/mobile/auth/i/b;)V

    return-void
.end method
