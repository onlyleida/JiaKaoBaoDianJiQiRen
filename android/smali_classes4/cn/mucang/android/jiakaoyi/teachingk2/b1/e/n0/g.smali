.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/n0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel;",
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
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->id:I

    const/16 v0, 0x2ee3

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel;->itemList:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel;->itemList:Ljava/util/List;

    :goto_0
    return-object p1
.end method
