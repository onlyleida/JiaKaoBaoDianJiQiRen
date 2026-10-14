.class public final Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$a;,
        Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 !2\u00020\u00012\u00020\u0002:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0003J%\u0010\u0013\u001a\u0002H\u0014\"\u0008\u0008\u0000\u0010\u0014*\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u0017H\u0016\u00a2\u0006\u0002\u0010\u0018J\n\u0010\u0019\u001a\u0004\u0018\u00010\u000bH\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0012\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0015R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\t\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "()V",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "getKeMu",
        "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "keMu$delegate",
        "Lkotlin/Lazy;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "teaching",
        "",
        "getTeaching",
        "()Z",
        "teaching$delegate",
        "viewModel",
        "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "getLoadingDialog",
        "getStatName",
        "",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# static fields
.field public static final e:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field private b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

.field private final c:Lkotlin/f;

.field private final d:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->e:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$teaching$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$teaching$2;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->c:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$keMu$2;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$keMu$2;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->d:Lkotlin/f;

    return-void
.end method

.method private static final A(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->I()Lcn/mucang/jiakaoyi/uilib/rule/RuleLevel;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    sget-object p2, Lcn/mucang/jiakaoyi/uilib/rule/RuleLevel;->Normal:Lcn/mucang/jiakaoyi/uilib/rule/RuleLevel;

    if-ne p0, p2, :cond_0

    .line 3
    iget-object p0, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->highRuleTv:Landroid/widget/TextView;

    sget-object p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleLevel;->High:Lcn/mucang/jiakaoyi/uilib/rule/RuleLevel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleLevel;->getLevelName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->highRuleTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleLevel;->getLevelName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p0, "viewModel"

    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final B(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$e;Ljava/util/List;)V
    .locals 5

    const-string v0, "$stepAdapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/i;

    .line 4
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_BianXianShiBie:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_YuanHuanLianXi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final C(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Ljava/util/List;)V
    .locals 1

    const-string v0, "$dataAdapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    .line 6
    iget-object p0, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method private static final D(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onCreate$8$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lkotlin/coroutines/c;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final E(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 9

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$examSite"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->e:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;

    .line 2
    iget-wide v2, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->h()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v5

    .line 4
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v6

    .line 5
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->j()Z

    move-result v7

    .line 6
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/rule/n;

    invoke-direct {v8, p0}, Lcn/mucang/jiakaoyi/uilib/rule/n;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity$Companion;->c(Landroid/content/Context;JZLcn/mucang/android/jiakaoyi/engine/model/KeMu;IZLf/a/a/a/j/c;)V

    return-void
.end method

.method private static final F(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;IILandroid/content/Intent;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->E()V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    return-object p0
.end method

.method private final h()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object v0
.end method

.method private final i()Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    return-object v0
.end method

.method private final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic k(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->E(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->z(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->C(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$e;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->B(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$e;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->D(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->w(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->F(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->v(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->A(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->y(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic u(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->x(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method private static final v(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->onBackPressed()V

    return-void
.end method

.method private static final w(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Landroid/view/View;)V
    .locals 0

    const-string p1, "$viewBinding"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->queryEt:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final x(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "$viewBinding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget-object p2, p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    const/4 v0, 0x0

    const-string v1, "viewModel"

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->y()Landroidx/lifecycle/z;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->y()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_2

    .line 4
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_2

    .line 6
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_6
    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_2

    .line 8
    :cond_7
    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_2
    return-void
.end method

.method private static final y(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$b;->a:[I

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

    goto :goto_3

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 4
    :cond_3
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 5
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_5
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->i()Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final z(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/rule/RulePersonalModifyActivity;->c:Lcn/mucang/jiakaoyi/uilib/rule/RulePersonalModifyActivity$a;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->h()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/rule/RulePersonalModifyActivity$a;->a(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/j0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/j0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_exam_site"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_kemu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.engine.model.KeMu"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_teaching"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    .line 4
    const-class v6, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    aput-object v6, v5, v4

    const-class v6, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    .line 5
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v1, v3, v7

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "modelClass.getConstructo\u2026examSite, keMu, teaching)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/lifecycle/j0;

    return-object p1
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bc4\u5224\u89c4\u5219"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$onBackPressed$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_exam_site"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 5
    new-instance v1, Landroidx/lifecycle/m0;

    invoke-direct {v1, p0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;Landroidx/lifecycle/m0$b;)V

    const-class v2, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v1

    const-string v2, "ViewModelProvider(this, \u2026del::class.java\n        )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    const/4 v2, 0x0

    const-string v3, "viewModel"

    if-eqz v1, :cond_d

    .line 6
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->x()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->titleTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\u6559\u5b66\u8bbe\u7f6e"

    goto :goto_0

    :cond_0
    const-string v4, "\u8bc4\u5224\u89c4\u5219"

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_1
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->titleTv:Landroid/widget/TextView;

    .line 9
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->j()Z

    move-result v4

    const v5, 0xff09

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6559\u5b66\u8bbe\u7f6e\uff08"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bc4\u5224\u89c4\u5219\uff08"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz v6, :cond_c

    :goto_1
    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->x()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v6

    iget-object v6, v6, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_2
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->backIv:Landroid/widget/ImageView;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/o;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/rule/o;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->clearTv:Landroid/widget/ImageView;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/m;

    invoke-direct {v4, p1}, Lcn/mucang/jiakaoyi/uilib/rule/m;-><init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->queryEt:Landroid/widget/EditText;

    const-string v4, "\u8bf7\u8f93\u5165\u5173\u952e\u5b57\u6216\u89c4\u5219\u7801"

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->queryEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_3
    if-lez v1, :cond_5

    .line 15
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->clearTv:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 16
    :cond_5
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->clearTv:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :goto_4
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->queryEt:Landroid/widget/EditText;

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$c;

    invoke-direct {v5, p1, p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$c;-><init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 18
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->actionTv:Landroid/widget/TextView;

    const-string v5, "\u4e2a\u4eba\u4fee\u6539"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->actionTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->actionTv:Landroid/widget/TextView;

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/rule/i;

    invoke-direct {v5, p0}, Lcn/mucang/jiakaoyi/uilib/rule/i;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->highRuleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->highRuleTv:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/p;

    invoke-direct {v4, p0, p1}, Lcn/mucang/jiakaoyi/uilib/rule/p;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_6
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$e;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$e;-><init>()V

    .line 25
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    .line 26
    iget-object v5, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->stepRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    iget-object v5, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->A()Landroidx/lifecycle/z;

    move-result-object v5

    new-instance v6, Lcn/mucang/jiakaoyi/uilib/rule/k;

    invoke-direct {v6, v1}, Lcn/mucang/jiakaoyi/uilib/rule/k;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$e;)V

    invoke-virtual {v5, p0, v6}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 29
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    const-string v5, "\u672a\u67e5\u8be2\u5230\u6570\u636e"

    invoke-virtual {v1, v5}, Lcn/mucang/android/core/widget/StateLayout;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->y()Landroidx/lifecycle/z;

    move-result-object v1

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/rule/j;

    invoke-direct {v5, v4, p1}, Lcn/mucang/jiakaoyi/uilib/rule/j;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity$d;Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;)V

    invoke-virtual {v1, p0, v5}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 31
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->saveTv:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/l;

    invoke-direct {v4, p0}, Lcn/mucang/jiakaoyi/uilib/rule/l;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;->resetTv:Landroid/widget/TextView;

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/h;

    invoke-direct {v4, p0, v0}, Lcn/mucang/jiakaoyi/uilib/rule/h;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/rule/t;

    invoke-direct {v1, p1, p0}, Lcn/mucang/jiakaoyi/uilib/rule/t;-><init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/RuleSettingActivityBinding;Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 34
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/rule/q;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/rule/q;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 35
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingActivity;->b:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->E()V

    return-void

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method
