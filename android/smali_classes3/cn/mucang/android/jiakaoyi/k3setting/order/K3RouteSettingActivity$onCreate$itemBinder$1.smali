.class final Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$itemBinder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$itemBinder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$itemBinder$1;->invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity;->h:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$itemBinder$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v3, "viewModel.itemList.value!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteStepEditActivity$a;->a(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Ljava/util/List;)V

    return-void
.end method
