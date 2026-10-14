.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/k/g0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000C\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J.\u0010\u0017\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000eH\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$firmwareUpgradeStateCallback$1",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/callback/FirmwareUpgradeStateCallback;",
        "onHardwareUpgrading",
        "",
        "info",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "receiveUpgradingInfo",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveUpgradingInfo;",
        "onReportUpgradeState",
        "uuid",
        "",
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
        "reportUpgradeInfo",
        "updateProgress",
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
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->j()V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    return-void
.end method

.method public static synthetic g(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->m(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->i(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    return-void
.end method

.method private static final i(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->arcProgress:Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setProgress(I)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->clLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private static final j()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->f()Z

    return-void
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->arcProgress:Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setProgress(I)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->clLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private final l(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/i;

    invoke-direct {v0, p1, p4, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/i;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "$extraInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/j;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/j;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/i/j;->m(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
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
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->getState()I

    move-result p3

    invoke-direct {p0, p2, p1, p3, p4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->l(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "receiveUpgradingInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->packIndex:Landroid/widget/TextView;

    iget v0, p2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u5e73\u53f0\u5185\u90e8\u6a21\u5757\u6b63\u5728\u5347\u7ea7:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget p1, p2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->a:I

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x32

    .line 3
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->arcProgress:Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;

    invoke-virtual {p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setProgress(I)V

    const/16 p2, 0x64

    if-lt p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    new-instance p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/j;

    invoke-direct {p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/j;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    const-wide/16 v0, 0x2710

    invoke-static {p2, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/g;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/g;

    const-wide/16 v0, 0x3a98

    .line 5
    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V
    .locals 2

    const-string v0, "stateModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->clLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->arcProgress:Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setProgress(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/a;->c()Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->clLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->packIndex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u5206\u5305:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmwareModel;->type:I

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->arcProgress:Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;

    invoke-virtual {p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setProgress(I)V

    const/16 p2, 0x64

    if-lt p1, p2, :cond_3

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    new-instance p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/h;

    invoke-direct {p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/h;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;)V

    const-wide/16 v0, 0x2710

    invoke-static {p2, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 5
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/ota/FirmWareManagerActivity;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityFirmwareManagerBinding;->arcProgress:Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setProgress(I)V

    :cond_3
    :goto_1
    return-void
.end method
