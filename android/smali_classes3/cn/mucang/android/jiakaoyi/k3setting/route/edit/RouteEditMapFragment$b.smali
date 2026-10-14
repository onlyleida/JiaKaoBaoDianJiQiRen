.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->Z()V
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
        "cn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$initRecyclerView$2",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->O(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLl:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditClickAreaLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->O(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->funcLlTeach:Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/IncludeRouteEditTeachLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;->Q(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    return-void
.end method
