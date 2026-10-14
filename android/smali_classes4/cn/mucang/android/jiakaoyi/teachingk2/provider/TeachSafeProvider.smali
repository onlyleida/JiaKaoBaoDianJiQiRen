.class public Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;
.super Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0016J\u0008\u0010\u0010\u001a\u00020\u000cH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;",
        "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;",
        "args",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "drawFence",
        "",
        "getCheckList",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
        "getCheckModuleStatus",
        "initBrakeGlobalMonitor",
        "",
        "initRemoteSocket",
        "initSafe",
        "setupSafe",
        "uploadCheckConfig",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public drawFence()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCheckList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;->getCheckModuleStatus()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 4
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getModule()I

    move-result v4

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager;->a(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getLevel()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getCheckModuleStatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->Companion:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus$a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initBrakeGlobalMonitor()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->c()V

    return-void
.end method

.method public initRemoteSocket()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/RemoteSocketManager;->e()V

    return-void
.end method

.method public initSafe()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->e()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeModeManager;->i()V

    return-void
.end method

.method public setupSafe()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public uploadCheckConfig()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    const-string v0, ""

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;->getCheckModuleStatus()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 5
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getModule()I

    move-result v5

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager;->a(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager$a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager$a;-><init>()V

    const-string v2, ","

    invoke-static {v0, v2}, Lkotlin/text/l;->k0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager$a;->m(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 10
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
