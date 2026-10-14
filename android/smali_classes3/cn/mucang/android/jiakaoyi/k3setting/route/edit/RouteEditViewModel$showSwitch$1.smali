.class final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$showSwitch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->y(Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
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
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;"
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
.field final synthetic $node:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

.field final synthetic $switchCallback:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$showSwitch$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$showSwitch$1;->$node:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$showSwitch$1;->$switchCallback:Lkotlin/jvm/b/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$showSwitch$1;->invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$showSwitch$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$showSwitch$1;->$node:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->a(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$showSwitch$1;->$switchCallback:Lkotlin/jvm/b/l;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel$showSwitch$1;->$node:Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
