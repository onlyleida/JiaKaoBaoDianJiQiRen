.class public final Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/ui/check/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0016\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0016\u0010\n\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\tH\u0017J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$getUpgradeInfo$1",
        "Lcn/mucang/jiakaoyi/uilib/ui/check/FirmwareFetcher$FetcherFirmwareCallback;",
        "onFetchError",
        "",
        "e",
        "",
        "onFetchFirmwareInfo",
        "models",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "onFirmwareDownload",
        "onFirmwareEmpty",
        "onMustUpgradeApk",
        "model",
        "onStart",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->i(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->h(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void
.end method

.method private static final h(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->q(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void
.end method

.method private static final i(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 1

    const-string v0, "$models"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->j()Lcn/mucang/android/jiakaoyi/signal/k/e0;

    move-result-object v0

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->i(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/e0;->Y(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/k/g0/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    const-string v1, "\u6ca1\u6709\u65b0\u7684\u56fa\u4ef6"

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V

    .line 2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->r(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    const-string v1, "\u5347\u7ea7\u56fa\u4ef6\u524d\u5fc5\u987b\u5347\u7ea7App"

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V

    .line 2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u6c42Apk\u7248\u672c\u4e3a\u7a7a\uff0c\u4e0d\u652f\u6301\u5347\u7ea7"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->h(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v0

    invoke-static {}, Lcn/mucang/android/core/utils/o0;->t()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->h(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u4e0b\u8f7d\u5230\u56fa\u4ef6\u6570\u4e3a\u7a7a"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->r(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void

    :cond_0
    const-string v0, "\u56fa\u4ef6\u6587\u4ef6\u4e0b\u8f7d\u5b8c\u6210\uff0c\u5f00\u59cb\u66f4\u65b0"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {v1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/r/a;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/check/k;

    invoke-direct {v2, p1, v1}, Lcn/mucang/jiakaoyi/uilib/ui/check/k;-><init>(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/r/a;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u66f4\u65b0\u5f02\u5e38:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/check/l;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/l;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u56fa\u4ef6\u66f4\u65b0\u4e2a\u6570:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugOta"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u62c9\u53d6\u5230\u56fa\u4ef6\u4fe1\u606f\u4e2a\u6570"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    const-string v4, "version="

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",type="

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",hardType="

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getHardwareVer()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",force="

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getForce()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    const-string v1, "\u5f00\u59cb\u62c9\u53d6\u56fa\u4ef6\u4fe1\u606f"

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->g(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Ljava/lang/String;)V

    const-string v0, "\u5f00\u59cbota\u5347\u7ea7"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void
.end method
