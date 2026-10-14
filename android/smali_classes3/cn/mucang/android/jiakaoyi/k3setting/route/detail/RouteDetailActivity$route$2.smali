.class final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$route$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$route$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$route$2;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_route"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailActivity$route$2;->invoke()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v0

    return-object v0
.end method
