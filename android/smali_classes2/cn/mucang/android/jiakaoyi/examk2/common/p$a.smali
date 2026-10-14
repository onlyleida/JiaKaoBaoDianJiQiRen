.class Lcn/mucang/android/jiakaoyi/examk2/common/p$a;
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

.field final synthetic b:Lcn/mucang/android/jiakaoyi/examk2/common/p;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/common/p;Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$a;->b:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$a;->b:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;->a(Lcn/mucang/android/jiakaoyi/examk2/common/p;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/p$a;->b:Lcn/mucang/android/jiakaoyi/examk2/common/p;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/p;->b(Lcn/mucang/android/jiakaoyi/examk2/common/p;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method
