.class Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$a;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->J(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$a;->a:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$a;->a:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;->Start:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->G(Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;)Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$VoiceState;

    return-void
.end method

.method public onSpeakEnd()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$a;->a:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->H(Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;)Lcn/mucang/android/jiakaoyi/engine/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker$a;->a:Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->H(Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;)Lcn/mucang/android/jiakaoyi/engine/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    return-void
.end method
