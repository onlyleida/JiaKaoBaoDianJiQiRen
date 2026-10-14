.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;",
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
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;->index:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->e(I)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;->index:I

    if-gez v0, :cond_0

    .line 2
    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;->itemList:Ljava/util/List;

    .line 3
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/StepSettingManager;->b()I

    move-result v0

    iput v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/StepSettingModel;->index:I

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/a;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/a;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
