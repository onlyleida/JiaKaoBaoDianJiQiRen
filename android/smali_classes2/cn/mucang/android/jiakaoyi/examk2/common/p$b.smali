.class Lcn/mucang/android/jiakaoyi/examk2/common/p$b;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/examk2/common/p;->e(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcn/mucang/android/jiakaoyi/examk2/common/p;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/common/p;Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;->c:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;->b:[Ljava/lang/String;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method

.method static synthetic a([Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    aget-object p0, p0, p1

    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;->c:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a(Lcn/mucang/android/jiakaoyi/examk2/common/p;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;->c:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;->b(Lcn/mucang/android/jiakaoyi/examk2/common/p;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;->b:[Ljava/lang/String;

    new-instance v2, Lcn/mucang/android/jiakaoyi/examk2/common/i;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/i;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$b;->c:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;->b(Lcn/mucang/android/jiakaoyi/examk2/common/p;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method
