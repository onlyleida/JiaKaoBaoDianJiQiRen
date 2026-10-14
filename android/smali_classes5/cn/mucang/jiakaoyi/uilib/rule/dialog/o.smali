.class public final Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\u0013\u001a\u00020\nH\u0016J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0017R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductsDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "mBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;",
        "mViewModel",
        "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "onViewCreated",
        "view",
        "Companion",
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


# instance fields
.field private a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

.field private b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

.field private c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method

.method private static final A(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_4

    .line 2
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    goto :goto_4

    .line 5
    :cond_3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 6
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    goto :goto_4

    .line 8
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    move-object p1, v0

    :goto_3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->c:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const-string p0, ""

    .line 9
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->x(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->A(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->w(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$b;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->y(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$b;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->z(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method private static final w(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final x(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    if-eqz p0, :cond_0

    const-string p2, "keMu"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void

    :cond_0
    const-string p0, "mViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final y(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$b;Ljava/util/List;)V
    .locals 1

    const-string v0, "$deductAdapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final z(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "mBinding"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_5
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$style;->jiakaoyi_dialog_fragment:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/c;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/m0$b;

    move-result-object p1

    const-class p2, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    invoke-interface {p1, p2}, Landroidx/lifecycle/m0$b;->create(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string p2, "defaultViewModelProvider\u2026uctViewModel::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "mBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "mBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :goto_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    const-string v0, "rule_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :goto_0
    const-string v0, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig<*>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->getKeMuByStep(I)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    const-string v2, "mBinding"

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;->ruleName:Landroid/widget/TextView;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->name:Ljava/lang/String;

    const-string v3, "\u89c4\u5219\uff1a"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;->closeIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/i;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/i;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;->saveTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/g;

    invoke-direct {v1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/g;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$b;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$b;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->b:Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/FragmentRuleRelevancyDeductsBinding;->deductRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    const-string v2, "mViewModel"

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->l()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v3

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/dialog/j;

    invoke-direct {v4, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/j;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o$b;)V

    invoke-virtual {v1, v3, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/rule/dialog/k;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/k;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;)V

    invoke-virtual {p1, v1, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/rule/dialog/h;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/h;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;)V

    invoke-virtual {p1, v1, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, p2

    goto :goto_1

    :cond_1
    const-string v1, "deduct_id_list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    if-eqz v1, :cond_3

    const-string p2, "keMu"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    :goto_2
    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method
