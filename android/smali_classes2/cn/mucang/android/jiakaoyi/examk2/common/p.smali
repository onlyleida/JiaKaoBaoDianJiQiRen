.class public Lcn/mucang/android/jiakaoyi/examk2/common/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private final b:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

.field private c:Ljava/io/File;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->b:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->e:Z

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->c:Ljava/io/File;

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->d:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/examk2/common/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;->c()V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/examk2/common/p;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/examk2/R$raw;->start_yx:I

    .line 4
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic d([Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    aget-object p0, p0, p1

    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method


# virtual methods
.method public e(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->e:Z

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->d:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->b:Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/h;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/h;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 10
    aget-object v0, v0, v3

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/p$a;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/p$a;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/p;Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 11
    :cond_2
    aget-object v1, v0, v3

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;

    invoke-direct {v3, p0, p1, v0}, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/p;Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;[Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->d:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
