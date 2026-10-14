.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0006H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "getStatName",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "uploadReverseSignals",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;->n()V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$onCreate$adapter$1;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;->m(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$onCreate$adapter$1;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic i(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final l(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;Landroid/view/View;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewModel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcn/mucang/android/account/ui/a;

    invoke-direct {p2, p0}, Lcn/mucang/android/account/ui/a;-><init>(Landroid/content/Context;)V

    const-string p0, "\u6062\u590d\u9ed8\u8ba4\u4fe1\u53f7\u4e2d"

    .line 2
    invoke-virtual {p2, p0}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$onCreate$2$1;

    const/4 p0, 0x0

    invoke-direct {v3, p2, p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$onCreate$2$1;-><init>(Lcn/mucang/android/account/ui/a;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;Lkotlin/coroutines/c;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$onCreate$adapter$1;Ljava/util/List;)V
    .locals 1

    const-string v0, "$adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final n()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/p/a;->a:Lcn/mucang/jiakaoyi/uilib/p/a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/p/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$uploadReverseSignals$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$uploadReverseSignals$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u4fe1\u53f7\u53cd\u8f6c"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026rseViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;

    .line 5
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/w;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/w;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v2, "\u4fe1\u53f7\u53cd\u8f6c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/p/a;->a:Lcn/mucang/jiakaoyi/uilib/p/a;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/p/a;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const-string v3, "\u83b7\u53d6\u8f66\u578b\u9ed8\u8ba4\u503c"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/v;

    invoke-direct {v3, p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/v;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_0
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->divider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$onCreate$adapter$1;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$onCreate$adapter$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity;)V

    .line 13
    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SignalReverseActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;->a()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/u;

    invoke-direct {v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/u;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseActivity$onCreate$adapter$1;)V

    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 15
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;->b()V

    return-void
.end method
