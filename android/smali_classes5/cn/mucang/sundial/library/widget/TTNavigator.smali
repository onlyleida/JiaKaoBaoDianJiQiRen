.class public final Lcn/mucang/sundial/library/widget/TTNavigator;
.super Lnet/lucode/hackware/magicindicator/e/c/a;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u000e\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ+\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/TTNavigator;",
        "Lnet/lucode/hackware/magicindicator/e/c/a;",
        "Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;",
        "Landroidx/viewpager/widget/ViewPager;",
        "pager",
        "Lkotlin/v;",
        "updateTabs",
        "(Landroidx/viewpager/widget/ViewPager;)V",
        "Lnet/lucode/hackware/magicindicator/MagicIndicator;",
        "indicator",
        "",
        "tab",
        "singleTab",
        "(Lnet/lucode/hackware/magicindicator/MagicIndicator;Ljava/lang/CharSequence;)V",
        "bindTo",
        "(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V",
        "viewPager",
        "Landroidx/viewpager/widget/PagerAdapter;",
        "oldAdapter",
        "newAdapter",
        "onAdapterChanged",
        "(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V",
        "Landroid/database/DataSetObserver;",
        "dataSetObserver",
        "Landroid/database/DataSetObserver;",
        "",
        "hasBind",
        "Z",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Adapter",
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
.field private dataSetObserver:Landroid/database/DataSetObserver;

.field private hasBind:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/e/c/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/e/c/a;->setAdjustMode(Z)V

    return-void
.end method

.method public static final synthetic access$updateTabs(Lcn/mucang/sundial/library/widget/TTNavigator;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/widget/TTNavigator;->updateTabs(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method private final updateTabs(Landroidx/viewpager/widget/ViewPager;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const-string v3, "it"

    .line 3
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    const-string v5, "it.getPageTitle(i) ?: \"\""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcn/mucang/sundial/library/widget/TTNavigator;->dataSetObserver:Landroid/database/DataSetObserver;

    if-nez v2, :cond_2

    .line 6
    new-instance v2, Lcn/mucang/sundial/library/widget/TTNavigator$updateTabs$$inlined$let$lambda$1;

    invoke-direct {v2, p0, v0, p1}, Lcn/mucang/sundial/library/widget/TTNavigator$updateTabs$$inlined$let$lambda$1;-><init>(Lcn/mucang/sundial/library/widget/TTNavigator;Ljava/util/List;Landroidx/viewpager/widget/ViewPager;)V

    iput-object v2, p0, Lcn/mucang/sundial/library/widget/TTNavigator;->dataSetObserver:Landroid/database/DataSetObserver;

    .line 7
    :cond_2
    iget-object v2, p0, Lcn/mucang/sundial/library/widget/TTNavigator;->dataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v2, :cond_3

    .line 8
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 9
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 10
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    .line 11
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v3}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_2
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 13
    :cond_3
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 14
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 15
    new-instance v1, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;

    invoke-direct {v1, v0, p1}, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;-><init>(Ljava/util/List;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p0, v1}, Lnet/lucode/hackware/magicindicator/e/c/a;->setAdapter(Lnet/lucode/hackware/magicindicator/e/c/b/a;)V

    return-void
.end method


# virtual methods
.method public final bindTo(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const-string v0, "indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/sundial/library/widget/TTNavigator;->updateTabs(Landroidx/viewpager/widget/ViewPager;)V

    .line 2
    invoke-virtual {p1, p0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/d/a;)V

    .line 3
    iget-boolean v0, p0, Lcn/mucang/sundial/library/widget/TTNavigator;->hasBind:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/sundial/library/widget/TTNavigator;->hasBind:Z

    .line 5
    invoke-static {p1, p2}, Lnet/lucode/hackware/magicindicator/c;->a(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0

    const-string p2, "viewPager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/widget/TTNavigator;->updateTabs(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public final singleTab(Lnet/lucode/hackware/magicindicator/MagicIndicator;Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1
    invoke-static {v0}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 2
    new-instance v0, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;-><init>(Ljava/util/List;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p0, v0}, Lnet/lucode/hackware/magicindicator/e/c/a;->setAdapter(Lnet/lucode/hackware/magicindicator/e/c/b/a;)V

    .line 3
    invoke-virtual {p1, p0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/d/a;)V

    return-void
.end method
