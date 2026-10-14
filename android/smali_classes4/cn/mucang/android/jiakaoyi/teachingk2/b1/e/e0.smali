.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityResUpgradeModel;",
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
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityResUpgradeModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityResUpgradeModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityResUpgradeModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityResUpgradeModel;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->i()Ljava/util/Map;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->e(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityResUpgradeModel;->pathMap:Ljava/util/Map;

    .line 5
    new-instance p2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
