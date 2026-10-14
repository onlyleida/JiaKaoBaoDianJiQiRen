.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/LoadingCloseModel;",
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

.method static synthetic b()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->s(ZLcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)Z

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->u()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/LoadingCloseModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/LoadingCloseModel;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/LoadingCloseModel;->isUnityLoaded:Z

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->P()V

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/f;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const-string p1, "unity loading\u7ed3\u675f"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
