.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/n0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;",
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

.method static synthetic b(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->f()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;

    move-result-object v0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/j;->u(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/n0/c;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/n0/c;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
