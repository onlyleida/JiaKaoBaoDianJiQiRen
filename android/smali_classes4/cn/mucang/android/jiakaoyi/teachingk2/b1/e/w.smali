.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityExitModel;",
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

.method static synthetic b(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityExitModel;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityExitModel;->quitType:I

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->u(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityExitModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityExitModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/e;

    invoke-direct {v0, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/e;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
