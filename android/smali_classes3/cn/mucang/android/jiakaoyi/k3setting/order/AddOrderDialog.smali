.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\u0006H\u0002J\u0012\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "onSelect",
        "Lkotlin/Function1;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "",
        "getOnSelect",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSelect",
        "(Lkotlin/jvm/functions/Function1;)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;",
        "dismiss",
        "initViews",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "show",
        "manager",
        "Landroidx/fragment/app/FragmentManager;",
        "tag",
        "",
        "k3setting_release"
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
.field private a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;

.field private b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method private final s()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026ghtViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;)V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;

    const/4 v3, 0x0

    const-string v4, "viewBinding"

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->p()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v5

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/c;

    invoke-direct {v6, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1;)V

    invoke-virtual {v2, v5, v6}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v2

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3setting/order/b;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;)V

    invoke-virtual {v1, v2, v5}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->r()V

    return-void

    .line 8
    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1;Ljava/util/List;)V
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

.method private static final u(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->dismiss()V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->v(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->u(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->t(Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog$initViews$adapter$1;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/k3setting/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->s()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddOrderDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final r()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->b:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object p1

    const-string v0, "manager.beginTransaction()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/u;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()I

    :goto_0
    return-void
.end method

.method public final z(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/AddOrderDialog;->b:Lkotlin/jvm/b/l;

    return-void
.end method
