.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->id:I

    const/16 v0, 0x7531

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->level:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "unity\u83b7\u53d6\u5f53\u524dlevel"

    .line 3
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->level:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->level:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unity\u8bbe\u7f6e\u5f53\u524dlevel\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->d(I)V

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->B(I)V

    .line 9
    :goto_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/d;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->list:Ljava/util/Map;

    goto :goto_2

    :cond_1
    const/16 v0, 0x2ee7

    if-ne p2, v0, :cond_3

    .line 10
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->level:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->level:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->level:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->e(Ljava/lang/String;)V

    .line 13
    :goto_1
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/c;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TrainLevelModel;->list:Ljava/util/Map;

    :cond_3
    :goto_2
    return-object p1
.end method
