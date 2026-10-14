.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;",
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
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;->c:I

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->h(ILcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
