.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CtrSpeedAssistModel;",
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
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CtrSpeedAssistModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CtrSpeedAssistModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CtrSpeedAssistModel;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/CtrSpeedAssistModel;->state:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    sget-object p2, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->k0()V

    :cond_0
    return-object p1
.end method
