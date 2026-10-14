.class final Lcom/tencent/bugly/crashreport/common/strategy/a$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/common/strategy/a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/common/strategy/a;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/common/strategy/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/o;->a(ILcom/tencent/bugly/proguard/n;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "device"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "gateway"

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/crashreport/common/strategy/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/crashreport/common/info/a;->f(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/crashreport/common/strategy/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/crashreport/common/info/a;->e(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->d()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 7
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/a$1;->a:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b(Lcom/tencent/bugly/crashreport/common/strategy/a;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    return-void
.end method
