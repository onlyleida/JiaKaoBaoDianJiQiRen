.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;",
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
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/c;->b()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "unity tts \u88ab\u7981\u7528"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;->play:Z

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/PlayVoiceModel;->voice:Ljava/lang/String;

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    :goto_0
    return-object v0
.end method
