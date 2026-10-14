.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;,
        Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

.field private c:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

.field private d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

.field private e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private j(Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;)V
    .locals 2

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;->c(Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;->c(Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;->c(Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;->c(Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->j(Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;)V

    return-void
.end method

.method private synthetic l(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private o(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;",
            ">;)",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    invoke-direct {v0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;-><init>(Ljava/util/List;)V

    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9ad8\u7cbe\u5ea6\u6570\u636e\u94fe\u8def\u8c03\u8bd5\u9875\u9762"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9ad8\u7cbe\u5ea6\u94fe\u8def"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g$a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/a;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;->toGGa:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->c(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->o(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;->fromServer:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->c(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->o(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->c:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;->fromHardware:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x3

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->c(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->o(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalGpsRounteActivityBinding;->toHardware:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->c(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->o(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity$a;

    return-void
.end method

.method public synthetic m(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gps/HpGpsTestActivity;->l(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->e(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->e(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/g;->e(Z)V

    return-void
.end method
