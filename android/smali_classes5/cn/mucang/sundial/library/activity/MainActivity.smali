.class public final Lcn/mucang/sundial/library/activity/MainActivity;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/MainActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Lkotlin/v;",
        "checkPermission",
        "()V",
        "stayThenJump",
        "",
        "initHost",
        "()Z",
        "initDefaultParams",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkPermission(Lcn/mucang/sundial/library/activity/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/MainActivity;->checkPermission()V

    return-void
.end method

.method public static final synthetic access$initDefaultParams(Lcn/mucang/sundial/library/activity/MainActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/MainActivity;->initDefaultParams()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$initHost(Lcn/mucang/sundial/library/activity/MainActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/MainActivity;->initHost()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$stayThenJump(Lcn/mucang/sundial/library/activity/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/MainActivity;->stayThenJump()V

    return-void
.end method

.method private final checkPermission()V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/activity/MainActivity$checkPermission$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/MainActivity$checkPermission$1;-><init>(Lcn/mucang/sundial/library/activity/MainActivity;)V

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/z;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    return-void
.end method

.method private final initDefaultParams()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/Utils;->INSTANCE:Lcn/mucang/sundial/library/util/Utils;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/Utils;->initDefaultParams()Z

    move-result v0

    return v0
.end method

.method private final initHost()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/Utils;->INSTANCE:Lcn/mucang/sundial/library/util/Utils;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/Utils;->initHost()Z

    move-result v0

    return v0
.end method

.method private final stayThenJump()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/MainActivity$stayThenJump$1;-><init>(Lcn/mucang/sundial/library/activity/MainActivity;)V

    invoke-static {v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/sundial/library/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcn/mucang/sundial/library/util/ActivityUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ActivityUtil;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/util/ActivityUtil;->activityCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/MainActivity;->checkPermission()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtActivityMainBinding;

    move-result-object p1

    const-string v0, "TtActivityMainBinding.in\u2026ayoutInflater.from(this))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "TtActivityMainBinding.in\u2026Inflater.from(this)).root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    sget-object p1, Lcn/mucang/sundial/library/util/ActivityUtil;->INSTANCE:Lcn/mucang/sundial/library/util/ActivityUtil;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/util/ActivityUtil;->activityCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
