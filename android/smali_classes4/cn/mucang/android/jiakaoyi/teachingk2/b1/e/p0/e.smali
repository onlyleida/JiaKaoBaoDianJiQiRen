.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;",
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
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;->type:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->a()Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->type:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;->type:Ljava/lang/String;

    .line 3
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->typeList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;->list:Ljava/util/Map;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/DaoKuSingleTrainModel;->type:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 5
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->getByType(I)Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;)V

    :goto_0
    return-object p1
.end method
