.class public final Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/k/g0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$otaStateCallback$1",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/FirmwareUpgradeStateCallback;",
        "onReportUpgradeState",
        "",
        "uuid",
        "",
        "info",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "state",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;",
        "extraInfo",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;",
        "onUpgradeProgress",
        "progress",
        "",
        "curIndex",
        "total",
        "onUpgradeState",
        "stateModel",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeStateModel;",
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

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V
    .locals 1

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->getState()I

    move-result p3

    invoke-static {v0, p2, p1, p3, p4}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->o(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/d$a;->a(Lcn/mucang/android/jiakaoyi/signal/k/g0/d;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 2

    const-string v0, "stateModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    const-string v1, "\u6536\u5230\u66f4\u65b0\u7ed3\u679c"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugOta"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->n(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    return-void
.end method

.method public d(III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelfCheckBinding;->upgradeBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$e;->a:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;->m(Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "viewBinding"

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
