.class public final Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\tJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0012\u001a\u00020\r8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "Lkotlin/v;",
        "onClickedRightFull",
        "()V",
        "Lcn/mucang/sundial/library/adapter/ExamHallVoiceTabPagerAdapter;",
        "adapter",
        "Lcn/mucang/sundial/library/adapter/ExamHallVoiceTabPagerAdapter;",
        "Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;",
        "viewBinding$delegate",
        "Lkotlin/f;",
        "getViewBinding",
        "()Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;",
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
.field private adapter:Lcn/mucang/sundial/library/adapter/ExamHallVoiceTabPagerAdapter;

.field private final viewBinding$delegate:Lkotlin/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;

    new-instance v2, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity$$special$$inlined$viewBinding$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity$$special$$inlined$viewBinding$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;->viewBinding$delegate:Lkotlin/f;

    return-void
.end method

.method private final getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;->viewBinding$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;

    return-object v0
.end method


# virtual methods
.method protected onClickedRightFull()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;->getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;

    move-result-object p1

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/adapter/ExamHallVoiceTabPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "supportFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/sundial/library/adapter/ExamHallVoiceTabPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 3
    iget-object v1, p1, Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;->pager:Lcn/mucang/android/core/widget/CommonViewPager;

    const-string v2, "pager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    iget-object v1, p1, Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;->pager:Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 5
    new-instance v1, Lcn/mucang/sundial/library/widget/TTNavigator;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/widget/TTNavigator;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3}, Lnet/lucode/hackware/magicindicator/e/c/a;->setAdjustMode(Z)V

    .line 7
    iget-object v3, p1, Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;->tab:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const-string v4, "tab"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p1, Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;->pager:Lcn/mucang/android/core/widget/CommonViewPager;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcn/mucang/sundial/library/widget/TTNavigator;->bindTo(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V

    .line 8
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    iput-object v0, p0, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;->adapter:Lcn/mucang/sundial/library/adapter/ExamHallVoiceTabPagerAdapter;

    .line 10
    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;->llBack:Landroid/widget/LinearLayout;

    new-instance v0, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity$onCreateView$$inlined$with$lambda$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity$onCreateView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance p1, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity$onCreateView$2;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity$onCreateView$2;-><init>(Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;)V

    invoke-static {p1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;->getViewBinding()Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityAnalogVoiceBroadcastBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "viewBinding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
