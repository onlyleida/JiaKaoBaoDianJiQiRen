.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;
.super Lcom/drakeet/multitype/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;,
        Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u001c\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0014J\u0006\u0010\u001a\u001a\u00020\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter;",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "cityCode",
        "",
        "activity",
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;",
        "stateLayout",
        "Lcn/mucang/android/core/widget/StateLayout;",
        "(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;Lcn/mucang/android/core/widget/StateLayout;)V",
        "getActivity",
        "()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;",
        "getCityCode",
        "()Ljava/lang/String;",
        "loadMore",
        "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectAdapter$LoadMore;",
        "getStateLayout",
        "()Lcn/mucang/android/core/widget/StateLayout;",
        "firstLoad",
        "",
        "showContent",
        "",
        "dataList",
        "",
        "",
        "hasMore",
        "showLoading",
        "showNetError",
        "LoadMore",
        "LoadingMoreItemBinder",
        "MapCollectK3_release"
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
.field private final c:Ljava/lang/String;

.field private final d:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

.field private final e:Lcn/mucang/android/core/widget/StateLayout;

.field private final f:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;Lcn/mucang/android/core/widget/StateLayout;)V
    .locals 7

    const-string v0, "cityCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->c:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->d:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->e:Lcn/mucang/android/core/widget/StateLayout;

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Loading:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/e;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/e;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;)V

    invoke-direct {p1, p3, v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->f:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/i;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;)V

    .line 4
    const-class p2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {p0, p2, p1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$b;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$b;-><init>()V

    .line 6
    const-class p2, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;

    invoke-virtual {p0, p2, p1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    return-void
.end method

.method private final k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->o(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;Landroid/view/View;)V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->l()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v0, "ViewModelProvider(activi\u2026ectViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->m()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->g(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final l()Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->d:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->e:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->d()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->f:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Loading:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->c(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->f:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->e:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {p1}, Lcn/mucang/android/core/widget/StateLayout;->c()V

    :goto_0
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->e:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->f()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->f:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Loading:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->c(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    .line 4
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->e:Lcn/mucang/android/core/widget/StateLayout;

    invoke-virtual {v0}, Lcn/mucang/android/core/widget/StateLayout;->g()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;->f:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h$a;->c(Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;)V

    .line 4
    invoke-virtual {p0}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method
