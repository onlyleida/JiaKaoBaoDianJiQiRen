.class public final Lcn/mucang/sundial/library/activity/SettingActivity;
.super Lcn/mucang/sundial/library/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004R\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/SettingActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Lkotlin/v;",
        "updateView",
        "()V",
        "initData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "finish",
        "Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;",
        "binding",
        "Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private binding:Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$updateView(Lcn/mucang/sundial/library/activity/SettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/SettingActivity;->updateView()V

    return-void
.end method

.method private final updateView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/SettingActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;->terminalRegisterStatus:Landroid/widget/TextView;

    const-string v2, "terminalRegisterStatus"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    const-string v4, "SundialManager.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\u5df2\u6ce8\u518c"

    goto :goto_0

    :cond_0
    const-string v3, "\u672a\u6ce8\u518c"

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;->terminalRegisterStatus:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "binding"

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->getInstance()Lcn/mucang/sundial/android/tcp/TimeoutManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/TimeoutManager;->unregisterTimeoutCallback(IZ)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public initData()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;->initData()V

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/RegisterResponseEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v1

    new-instance v2, Lcn/mucang/sundial/library/activity/SettingActivity$initData$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/SettingActivity$initData$1;-><init>(Lcn/mucang/sundial/library/activity/SettingActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 3
    const-class v1, Lcn/mucang/sundial/android/eventbus/event/UnRegisterResponseEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/activity/SettingActivity$initData$2;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/SettingActivity$initData$2;-><init>(Lcn/mucang/sundial/library/activity/SettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;

    move-result-object p1

    const-string v0, "TtActivitySettingBinding\u2026ayoutInflater.from(this))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;->terminalRegister:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$1;-><init>(Lcn/mucang/sundial/library/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;->terminalUnregister:Landroid/widget/FrameLayout;

    new-instance v1, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$2;-><init>(Lcn/mucang/sundial/library/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;->back:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$3;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/SettingActivity$onCreateView$$inlined$apply$lambda$3;-><init>(Lcn/mucang/sundial/library/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 6
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/SettingActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;

    .line 7
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/SettingActivity;->updateView()V

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/SettingActivity;->binding:Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivitySettingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
