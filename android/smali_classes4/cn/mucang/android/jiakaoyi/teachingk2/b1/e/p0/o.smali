.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel;",
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
    :try_start_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/d/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/d/a;-><init>()V

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel;->kemu:Ljava/lang/String;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->getKeMu(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/d/a;->q(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    .line 3
    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/d;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/UserTrainModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/d;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/p0/d;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
