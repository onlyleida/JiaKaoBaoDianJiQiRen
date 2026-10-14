.class final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$1;->invoke(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->r(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;)Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$1$1;

    invoke-virtual {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->y(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/b/l;)V

    return-void

    :cond_0
    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
