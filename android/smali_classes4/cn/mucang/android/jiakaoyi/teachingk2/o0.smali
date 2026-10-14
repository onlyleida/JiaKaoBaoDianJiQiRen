.class public Lcn/mucang/android/jiakaoyi/teachingk2/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;
    }
.end annotation


# static fields
.field private static final a:Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/o0$a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/o0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;

    return-void
.end method

.method public static a(Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/o0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;->tm:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/o0;->b(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;Z)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getStopVoice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/n0;->f()V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->getPlayText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getTeach()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->getPlayText()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/f;)Lcn/mucang/android/jiakaoyi/teachingk2/o0$b;

    const-wide/16 p0, 0x12c

    invoke-static {v0, p0, p1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->getPlayText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getTeach()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->getPlayText()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, v1, p1, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->y(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;Z)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->h:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {p0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/TeachVoiceModel;->key(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/TeachVoiceModel;

    if-nez v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "voice url null, vid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isError:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " key:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/TeachVoiceModel;->errorVoiceUrl:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getLevel()I

    move-result p2

    const/16 v2, 0xa

    if-ne p2, v2, :cond_2

    .line 7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/TeachVoiceModel;->lowVoiceUrl:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getLevel()I

    move-result p2

    const/16 v2, 0x14

    if-ne p2, v2, :cond_3

    .line 9
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/TeachVoiceModel;->middleVoiceUrl:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;->getLevel()I

    move-result p1

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_4

    .line 11
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/voice/TeachVoiceModel;->highVoiceUrl:Ljava/lang/String;

    .line 12
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "voice vid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " url:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v1
.end method
