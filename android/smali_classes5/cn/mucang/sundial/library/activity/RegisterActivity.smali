.class public final Lcn/mucang/sundial/library/activity/RegisterActivity;
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u0019\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/sundial/library/activity/RegisterActivity;",
        "Lcn/mucang/sundial/library/activity/BaseActivity;",
        "Lkotlin/v;",
        "initView",
        "()V",
        "",
        "index",
        "",
        "getInputByIndex",
        "(I)Ljava/lang/String;",
        "initData",
        "initViewModel",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;",
        "viewModel",
        "Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;",
        "Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;",
        "binding$delegate",
        "Lkotlin/f;",
        "getBinding",
        "()Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;",
        "binding",
        "Lme/drakeet/multitype/d;",
        "adapter",
        "Lme/drakeet/multitype/d;",
        "Lme/drakeet/multitype/Items;",
        "items",
        "Lme/drakeet/multitype/Items;",
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
.field private final adapter:Lme/drakeet/multitype/d;

.field private final binding$delegate:Lkotlin/f;

.field private final items:Lme/drakeet/multitype/Items;

.field private viewModel:Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;

    new-instance v2, Lcn/mucang/sundial/library/activity/RegisterActivity$$special$$inlined$viewBinding$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/RegisterActivity$$special$$inlined$viewBinding$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->binding$delegate:Lkotlin/f;

    .line 3
    new-instance v0, Lme/drakeet/multitype/Items;

    invoke-direct {v0}, Lme/drakeet/multitype/Items;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->items:Lme/drakeet/multitype/Items;

    .line 4
    new-instance v1, Lme/drakeet/multitype/d;

    invoke-direct {v1, v0}, Lme/drakeet/multitype/d;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->adapter:Lme/drakeet/multitype/d;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcn/mucang/sundial/library/activity/RegisterActivity;)Lme/drakeet/multitype/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->adapter:Lme/drakeet/multitype/d;

    return-object p0
.end method

.method public static final synthetic access$getInputByIndex(Lcn/mucang/sundial/library/activity/RegisterActivity;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/activity/RegisterActivity;->getInputByIndex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getItems$p(Lcn/mucang/sundial/library/activity/RegisterActivity;)Lme/drakeet/multitype/Items;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->items:Lme/drakeet/multitype/Items;

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcn/mucang/sundial/library/activity/RegisterActivity;)Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->viewModel:Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setViewModel$p(Lcn/mucang/sundial/library/activity/RegisterActivity;Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->viewModel:Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;

    return-void
.end method

.method private final getBinding()Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->binding$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;

    return-object v0
.end method

.method private final getInputByIndex(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 1
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->items:Lme/drakeet/multitype/Items;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/RegisterActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    sget v1, Lcn/mucang/sundial/library/R$id;->content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final initView()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/RegisterActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;->listView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "listView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->adapter:Lme/drakeet/multitype/d;

    new-instance v3, Lcn/mucang/sundial/library/binder/RegisterItemBinder;

    invoke-direct {v3}, Lcn/mucang/sundial/library/binder/RegisterItemBinder;-><init>()V

    .line 4
    const-class v4, Lcn/mucang/sundial/library/entity/RegisterInfoItem;

    invoke-virtual {v1, v4, v3}, Lme/drakeet/multitype/d;->f(Ljava/lang/Class;Lme/drakeet/multitype/b;)V

    .line 5
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->adapter:Lme/drakeet/multitype/d;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;->listView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/mucang/sundial/library/widget/ListDividerItemDecoration;

    invoke-direct {v2}, Lcn/mucang/sundial/library/widget/ListDividerItemDecoration;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 7
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;->cancel:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/activity/RegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;->register:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/RegisterActivity$initView$$inlined$with$lambda$2;-><init>(Lcn/mucang/sundial/library/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->viewModel:Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;->getDeviceInfo()V

    return-void

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public initData()V
    .locals 15

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;->initData()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->items:Lme/drakeet/multitype/Items;

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/mucang/sundial/library/entity/RegisterInfoItem;

    .line 3
    new-instance v8, Lcn/mucang/sundial/library/entity/RegisterInfoItem;

    const-string v3, "\u8f66\u724c\u53f7"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/mucang/sundial/library/entity/RegisterInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    .line 4
    new-instance v2, Lcn/mucang/sundial/library/entity/RegisterInfoItem;

    const-string v10, "\u7ec8\u7aef\u624b\u673a\u53f7"

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcn/mucang/sundial/library/entity/RegisterInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/o;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5
    invoke-static {v1}, Lkotlin/collections/s;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/RegisterResponseEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/activity/RegisterActivity$initData$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/RegisterActivity$initData$1;-><init>(Lcn/mucang/sundial/library/activity/RegisterActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public initViewModel()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/BaseActivity;->initViewModel()V

    .line 2
    const-class v0, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;

    invoke-virtual {p0, p0, v0}, Lcn/mucang/sundial/library/activity/BaseActivity;->vm(Landroidx/lifecycle/o0;Ljava/lang/Class;)Landroidx/lifecycle/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;

    iput-object v0, p0, Lcn/mucang/sundial/library/activity/RegisterActivity;->viewModel:Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/RegisterViewModel;->getDeviceInfoData()Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/activity/RegisterActivity$initViewModel$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/activity/RegisterActivity$initViewModel$1;-><init>(Lcn/mucang/sundial/library/activity/RegisterActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/RegisterActivity;->initView()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/activity/RegisterActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityRegisterBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
