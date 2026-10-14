.class final Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->y(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;->invoke(Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->i(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->i(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity$onCreate$4$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;->i(Lcn/mucang/android/jiakaoyi/k3setting/order/K3RouteSettingActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-void
.end method
