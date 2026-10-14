.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$a;,
        Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\u000eH\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u0018H\u0003J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0012\u0010\u001d\u001a\u00020\u00182\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\n\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseActivity;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "assembleId",
        "",
        "getAssembleId",
        "()J",
        "assembleId$delegate",
        "Lkotlin/Lazy;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "name$delegate",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;",
        "getStatName",
        "initList",
        "",
        "initSort",
        "initTitle",
        "isAdd",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
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


# static fields
.field public static final g:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

.field private b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

.field private final c:Lkotlin/f;

.field private final d:Lkotlin/f;

.field private final e:Lcom/drakeet/multitype/f;

.field private f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->g:Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$assembleId$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$assembleId$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->c:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$name$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$name$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->d:Lkotlin/f;

    .line 4
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->e:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)Lcom/drakeet/multitype/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->e:Lcom/drakeet/multitype/f;

    return-object p0
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    return-object p0
.end method

.method private final i()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->d:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->e:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/u;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$2;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$initList$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/u;-><init>(Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;)V

    .line 2
    const-class v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    const-string v1, "viewBinding"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->e:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    const-string v3, "viewModel"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/e0;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/e0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/g0;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/g0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v4, Lcn/mucang/android/jiakaoyi/k3setting/order/h0;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/h0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/k0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/k0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->l(J)V

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->e:Lcom/drakeet/multitype/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->e:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_1

    .line 4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$b;->a:[I

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->f:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 8
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->l(J)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final p()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/g;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity$c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/g;-><init>(Landroidx/recyclerview/widget/g$f;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/g;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final q()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->divider:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6dfb\u52a0"

    goto :goto_0

    :cond_0
    const-string v0, "\u7f16\u8f91"

    .line 4
    :goto_0
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v4, v4, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v5, "\u706f\u5149\u7ec4\u5408"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->actionTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/i0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/i0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final s()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->l(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->z(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->m(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->n(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->r(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->o(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->nameEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    const-string v2, "viewModel"

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v0, v1, v0}, Lcn/mucang/jiakaoyi/uilib/s/n;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "\u7ec4\u5408\u4e2d\u81f3\u5c11\u9700\u8981\u6709\u4e00\u7ec4\u706f\u5149\u6307\u4ee4\u624d\u53ef\u4ee5\u4fdd\u5b58"

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    .line 6
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p0, "viewBinding"

    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u706f\u5149\u6307\u4ee4"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    .line 3
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026AddViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->b:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->q()V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->k()V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->p()V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->nameEt:Landroid/widget/EditText;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;->a:Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightAssembleAddActivityBinding;->saveTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/f0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/f0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/LightAssembleAddActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method
