.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u000eH\u0016J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u0012\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R(\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "onChosenOrder",
        "Lkotlin/Function1;",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "",
        "getOnChosenOrder",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnChosenOrder",
        "(Lkotlin/jvm/functions/Function1;)V",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;",
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
.field private a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;

.field private final b:Lkotlin/f;

.field private c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/drakeet/multitype/f;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog$examSite$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog$examSite$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->d:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private final s()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$style;->FragmentDialogAnimation:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;

    const-string v2, "viewBinding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;->backIv:Landroid/widget/ImageView;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/x0;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/x0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->d:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g1;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog$initViews$2;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog$initViews$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;)V

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/g1;-><init>(Lkotlin/jvm/b/l;)V

    .line 6
    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 7
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(requir\u2026tepViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    .line 8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/w0;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/w0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    .line 9
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->dismiss()V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->d:Lcom/drakeet/multitype/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->u(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->t(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;Landroid/view/View;)V

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
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->s()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditSwitchOrderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->c:Lkotlin/jvm/b/l;

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

.method public final x(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/SwitchOrderDialog;->c:Lkotlin/jvm/b/l;

    return-void
.end method
