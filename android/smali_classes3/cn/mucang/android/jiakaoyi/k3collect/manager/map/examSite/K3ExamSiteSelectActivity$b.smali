.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$onCreate$2",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

.field final synthetic c:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$b;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$b;->c:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;

    invoke-virtual {p2}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$b;->a:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/h;

    invoke-virtual {p2}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$b;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity$b;->c:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectActivity;->k()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->f(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
