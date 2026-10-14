.class public final Lcn/mucang/sundial/library/activity/DebugActivity2;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\tJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001d\u0010\u000f\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/DebugActivity2;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "Lkotlin/v;",
        "onClickedRightFull",
        "()V",
        "Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;",
        "viewBinding$delegate",
        "Lkotlin/f;",
        "getViewBinding",
        "()Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;",
        "viewBinding",
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
.field private final viewBinding$delegate:Lkotlin/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;

    new-instance v2, Lcn/mucang/sundial/library/activity/DebugActivity2$$special$$inlined$viewBinding$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/DebugActivity2$$special$$inlined$viewBinding$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/DebugActivity2;->viewBinding$delegate:Lkotlin/f;

    return-void
.end method

.method private final getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/DebugActivity2;->viewBinding$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;

    return-object v0
.end method


# virtual methods
.method protected onClickedRightFull()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/DebugActivity2;->getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->clearDebugLog:Landroid/widget/Button;

    sget-object v1, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$1;->INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$1;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->systemDebug:Landroid/widget/Button;

    const-string v1, "systemDebug"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CwSundialDevice"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 4
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->systemDebug:Landroid/widget/Button;

    new-instance v2, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$$inlined$with$lambda$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/activity/DebugActivity2;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useDebugCamera:Landroid/widget/CheckBox;

    const-string v2, "useDebugCamera"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    .line 7
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useDebugCamera:Landroid/widget/CheckBox;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/library/util/GlobalData;->getUseDebugCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useDebugCamera:Landroid/widget/CheckBox;

    sget-object v1, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$3;->INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$3;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 10
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useDebugLoc:Landroid/widget/CheckBox;

    const-string v1, "useDebugLoc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/mucang/sundial/android/location/AppLocation;->INSTANCE:Lcn/mucang/sundial/android/location/AppLocation;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/location/AppLocation;->getLocationStrategy()Lcn/mucang/sundial/android/location/LocationStrategy;

    move-result-object v1

    instance-of v1, v1, Lcn/mucang/sundial/library/device/DebugLocationStrategy;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useDebugLoc:Landroid/widget/CheckBox;

    new-instance v1, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$$inlined$with$lambda$2;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$$inlined$with$lambda$2;-><init>(Lcn/mucang/sundial/library/activity/DebugActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useLocationData:Landroid/widget/CheckBox;

    const-string v1, "useLocationData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/sundial/library/util/AppUtil;->isLuKaoYi()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 13
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useLocationData:Landroid/widget/CheckBox;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    const-string v2, "SundialManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->isLocationDataStrategy()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useLocationData:Landroid/widget/CheckBox;

    sget-object v1, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$5;->INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$5;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 15
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useObdLocation:Landroid/widget/CheckBox;

    const-string v1, "useObdLocation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/sundial/library/util/AppUtil;->isLuKaoYi()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 16
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useObdLocation:Landroid/widget/CheckBox;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->isOBDLocationStrategy()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 17
    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->useObdLocation:Landroid/widget/CheckBox;

    sget-object v0, Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$6;->INSTANCE:Lcn/mucang/sundial/library/activity/DebugActivity2$onCreateView$1$6;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/DebugActivity2;->getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityDebug2Binding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "viewBinding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
