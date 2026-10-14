.class public Lcom/mobile/auth/gatewayauth/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mobile/auth/o/a;

.field private volatile c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

.field private d:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/gatewayauth/manager/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/network/a;->c(Landroid/content/Context;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    iput-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->d:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    invoke-virtual {p3}, Lcom/mobile/auth/gatewayauth/manager/d;->a()Lcom/mobile/auth/o/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->b:Lcom/mobile/auth/o/a;

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->b:Lcom/mobile/auth/o/a;

    iget-object p2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {p1, p2}, Lcom/mobile/auth/o/a;->a(Lcom/mobile/auth/gatewayauth/model/ConfigRule;)V

    :cond_0
    return-void
.end method

.method private A()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_page()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getIs_limited()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_page()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private B()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_phone()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getIs_limited()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_phone()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private C()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_config()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getIs_limited()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_config()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/b;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/b;Lcom/mobile/auth/gatewayauth/model/ConfigRule;)Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/manager/b;)Lcom/mobile/auth/o/a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->b:Lcom/mobile/auth/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic c(Lcom/mobile/auth/gatewayauth/manager/b;)Landroid/content/Context;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private v()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private w()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getAuth_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getIs_limited()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getAuth_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private x()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getIs_limited()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private y()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getIs_limited()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private z()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_vendor_list()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getIs_limited()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_vendor_list()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public a(Lcom/mobile/auth/gatewayauth/manager/RequestCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobile/auth/gatewayauth/manager/RequestCallback<",
            "Lcom/mobile/auth/gatewayauth/model/ConfigRule;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mobile/auth/gatewayauth/manager/RequestCallback;->onError(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->r()V

    new-instance v2, Lcom/mobile/auth/p/c;

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->d:Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;

    iget-object v3, p0, Lcom/mobile/auth/gatewayauth/manager/b;->b:Lcom/mobile/auth/o/a;

    invoke-direct {v2, v0, v1, v3}, Lcom/mobile/auth/p/c;-><init>(Landroid/content/Context;Lcom/mobile/auth/gatewayauth/manager/VendorSdkInfoManager;Lcom/mobile/auth/o/a;)V

    new-instance v1, Lcom/mobile/auth/gatewayauth/manager/b$1;

    sget-object v6, Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;->THREAD:Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;

    const-wide/16 v7, 0x7d0

    move-object v4, v1

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/mobile/auth/gatewayauth/manager/b$1;-><init>(Lcom/mobile/auth/gatewayauth/manager/b;Lcom/nirvana/tools/requestqueue/strategy/ThreadStrategy;JLcom/mobile/auth/gatewayauth/manager/RequestCallback;)V

    new-instance p1, Lcom/mobile/auth/t/a;

    const-wide/16 v3, 0x1388

    const-class v5, Lcom/mobile/auth/u/c;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/mobile/auth/t/a;-><init>(Lcom/nirvana/tools/requestqueue/Callback;Lcom/nirvana/tools/requestqueue/TimeoutCallable;JLjava/lang/Class;)V

    invoke-static {}, Lcom/nirvana/tools/requestqueue/RequestQueue;->getInstance()Lcom/nirvana/tools/requestqueue/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nirvana/tools/requestqueue/RequestQueue;->pushRequest(Lcom/nirvana/tools/requestqueue/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getIs_demoted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public a(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->m()Z

    move-result p1

    return p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->o()Z

    move-result p1

    return p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->g()Z

    move-result p1

    return p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->e()Z

    move-result p1

    return p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->q()Z

    move-result p1

    return p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->k()Z

    move-result p1

    return p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->i()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return v0

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

.method public b(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->n()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->p()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->h()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->f()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->r()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->l()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

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

.method public b()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getIs_auth_demoted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getIs_login_demoted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getIs_crash_demoted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public e()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getAuth_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v2

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getAuth_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_count()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public f()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getAuth_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/network/a;->i(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public g()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v2

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->l(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_count()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public h()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_token()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/network/a;->k(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public i()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v2

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_count()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public j()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getSls()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/network/a;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_vendor_list()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v2

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_vendor_list()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_count()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public l()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_vendor_list()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/network/a;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_page()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v2

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->p(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_page()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_count()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public n()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_page()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/network/a;->o(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public o()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_phone()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v2

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->n(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_phone()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_count()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public p()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getLogin_phone()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/network/a;->m(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public q()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_config()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v2

    invoke-static {v2}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobile/auth/gatewayauth/network/a;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_config()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_count()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public r()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getGet_config()Lcom/mobile/auth/gatewayauth/model/LimitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/LimitConfig;->getLimit_time_hour()I

    move-result v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobile/auth/gatewayauth/network/a;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public s()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/network/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/utils/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/network/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->q()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    return v3

    :cond_2
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public t()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mobile/auth/gatewayauth/manager/b;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getUpload_log()Lcom/mobile/auth/gatewayauth/model/UploadLog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getUpload_log()Lcom/mobile/auth/gatewayauth/model/UploadLog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobile/auth/gatewayauth/model/UploadLog;->getLevel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public u()Lcom/mobile/auth/gatewayauth/model/UploadLog;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/b;->c:Lcom/mobile/auth/gatewayauth/model/ConfigRule;

    invoke-virtual {v0}, Lcom/mobile/auth/gatewayauth/model/ConfigRule;->getUpload_log()Lcom/mobile/auth/gatewayauth/model/UploadLog;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method
