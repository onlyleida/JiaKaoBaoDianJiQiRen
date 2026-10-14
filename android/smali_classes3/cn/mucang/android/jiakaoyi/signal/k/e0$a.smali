.class Lcn/mucang/android/jiakaoyi/signal/k/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/k/g0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/k/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/k/e0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic j(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/k/g0/d;->d(III)V

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V

    return-void
.end method

.method private synthetic n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V

    return-void
.end method

.method private synthetic p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->h(Lcn/mucang/android/jiakaoyi/signal/k/e0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/k/g0/d;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    :cond_0
    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_UPGRADING:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u59cb\u5347\u7ea7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/d;->b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    :cond_0
    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->e(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d(Lcn/mucang/android/jiakaoyi/signal/k/e0;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/k/d;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/signal/k/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V
    .locals 3

    const-string p2, "DebugOta"

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d(Lcn/mucang/android/jiakaoyi/signal/k/e0;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u4e2a\u66f4\u65b0\u56fa\u4ef6\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->c(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->e(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d(Lcn/mucang/android/jiakaoyi/signal/k/e0;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->b(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Lcn/mucang/android/jiakaoyi/signal/k/g0/d;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0, v0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/d;->d(III)V

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u66f4\u65b0\u6210\u529f"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-direct {v1, p1, v2, p2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    const-string p1, "DebugOta"

    const-string p2, "post\u66f4\u65b0\u4e0b\u4e00\u4e2a\u4efb\u52a1"

    .line 9
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->d(Lcn/mucang/android/jiakaoyi/signal/k/e0;)I

    move-result p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->g(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_1

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/k/c;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/signal/k/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0$a;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->f(Lcn/mucang/android/jiakaoyi/signal/k/e0;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/k/b;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/signal/k/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0$a;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isMainObd()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_PACK_FINISH:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    const-string v2, "\u4e3b\u63a7\u56fa\u4ef6\u66f4\u65b0\u5b8c\u6bd5\uff0c\u7b49\u5f85\u8bbe\u5907\u91cd\u542f"

    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u6587\u4ef6\u4e0b\u53d1\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    :goto_0
    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V
    .locals 0

    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u66f4\u65b0\u5f00\u59cb\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u6b21\u672c\u5730\u66f4\u65b0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-direct {v1, p1, v2, p2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void
.end method

.method public h(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;III)V
    .locals 0

    mul-int/lit8 p1, p2, 0x64

    .line 1
    div-int/2addr p1, p3

    .line 2
    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/k/e;

    invoke-direct {p4, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/k/e;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/e0$a;III)V

    invoke-static {p4}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\u7b2c"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\u6b21\u5347\u7ea7\u5931\u8d25"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/e0;

    new-instance p4, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-direct {p4, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->a(Lcn/mucang/android/jiakaoyi/signal/k/e0;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void
.end method

.method public synthetic k(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->j(III)V

    return-void
.end method

.method public synthetic m()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->l()V

    return-void
.end method

.method public synthetic o()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->n()V

    return-void
.end method

.method public synthetic q()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/e0$a;->p()V

    return-void
.end method
