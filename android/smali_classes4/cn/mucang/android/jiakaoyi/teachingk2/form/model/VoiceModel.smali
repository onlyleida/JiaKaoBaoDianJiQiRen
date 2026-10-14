.class public Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;
.super Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;
.source "SourceFile"


# instance fields
.field public conditionId:Ljava/lang/String;

.field public displayContent:Ljava/lang/String;

.field public duration:I

.field public highDisplayContent:Ljava/lang/String;

.field public highVoice:Ljava/lang/String;

.field public middleDisplayContent:Ljava/lang/String;

.field public middleVoice:Ljava/lang/String;

.field public shortVoice:Ljava/lang/String;

.field public sound:Z

.field public voice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;-><init>()V

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;->type:I

    return-void
.end method


# virtual methods
.method public getPlayText()Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/f;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->highVoice:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->middleVoice:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    return-object v0
.end method

.method public getShowText()Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/f;->a:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->displayContent:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->displayContent:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->highDisplayContent:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->highDisplayContent:Ljava/lang/String;

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->highVoice:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->middleDisplayContent:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->middleDisplayContent:Ljava/lang/String;

    return-object v0

    .line 12
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->middleVoice:Ljava/lang/String;

    return-object v0

    .line 13
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->displayContent:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->displayContent:Ljava/lang/String;

    return-object v0

    .line 15
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->voice:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->middleVoice:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->highVoice:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public sound(Z)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->sound:Z

    return-object p0
.end method
