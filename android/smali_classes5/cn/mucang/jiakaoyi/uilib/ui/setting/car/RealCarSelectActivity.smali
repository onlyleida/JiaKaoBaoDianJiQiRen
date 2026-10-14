.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;,
        Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0014J\u0008\u0010\u000f\u001a\u00020\u000eH\u0003J\u0008\u0010\u0010\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;",
        "()V",
        "configAdapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "loadingDialog",
        "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;",
        "modelAdapter",
        "viewModel",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;",
        "getStatName",
        "",
        "init",
        "",
        "initViewModel",
        "initViews",
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
.field public static final f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;


# instance fields
.field private b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

.field private final c:Lcom/drakeet/multitype/f;

.field private final d:Lcom/drakeet/multitype/f;

.field private e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->c:Lcom/drakeet/multitype/f;

    .line 3
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->d:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private final initViewModel()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->c:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/x;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$initViewModel$1;

    invoke-direct {v2, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$initViewModel$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    invoke-direct {v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/x;-><init>(Lkotlin/jvm/b/l;)V

    .line 2
    const-class v2, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->d:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/z;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$initViewModel$2;->INSTANCE:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$initViewModel$2;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$initViewModel$3;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$initViewModel$3;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    invoke-direct {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/z;-><init>(Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 4
    const-class v2, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;->modelRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;->configRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    const/4 v1, 0x0

    const-string v2, "viewModel"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->m()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/t;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/t;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->l()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/r;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/r;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/q;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/q;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->a()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/s;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/s;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->p(IZ)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    return-object p0
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->c:Lcom/drakeet/multitype/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 3
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private static final l(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->d:Lcom/drakeet/multitype/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 3
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->e()V

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    :goto_1
    return-void
.end method

.method private static final n(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$b;->a:[I

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
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

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
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->e:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p0, ""

    .line 8
    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private final o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u771f\u5b9e\u8f66\u578b\u9009\u62e9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/u;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/u;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;->stateLayout:Lcn/mucang/android/core/widget/StateLayout;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/w;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/w;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/widget/StateLayout;->setOnRefreshListener(Lcn/mucang/android/core/widget/StateLayout$c;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivitySelecCarBinding;->saveTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/v;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/v;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final p(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final q(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->p(IZ)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final r(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->o()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "\u8bf7\u9009\u62e9\u8f66\u578b"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key.chooseResult"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string p0, "viewModel"

    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->m(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->n(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->p(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->r(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->q(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;)V

    return-void
.end method

.method public static final z(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;->b(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u771f\u5b9e\u8f66\u578b\u9009\u62e9"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    new-instance v0, Landroidx/lifecycle/m0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).\u2026ectViewModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->o()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->initViewModel()V

    return-void
.end method
