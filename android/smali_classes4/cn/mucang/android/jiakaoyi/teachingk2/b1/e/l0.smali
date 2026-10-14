.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VoiceResultModel;",
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
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unity ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VoiceResultModel;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VoiceResultModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceResultHandler"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;-><init>()V

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->setGrade(Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 4
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VoiceResultModel;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VoiceResultModel;->type:I

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 5
    :cond_0
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_cmd_parse_fail:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_page_can_not_execute:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_2
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_not_need_do:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_3
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_can_not_do:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->setCloseAfterSpeak(Z)V

    .line 10
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->setPlayText(Ljava/lang/String;)V

    .line 11
    sget-object p0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->k(Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VoiceResultModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/VoiceResultModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/n;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/n;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
