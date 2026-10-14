.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/n0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->h()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;->list:Ljava/util/Map;

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;->routeId:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;->routeId:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteSettingModel;->routeId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->k(Ljava/lang/String;Z)V

    :goto_0
    return-object p1
.end method
