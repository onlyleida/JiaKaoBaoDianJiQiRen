.class Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$b;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->a(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;)Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    return-void
.end method

.method public onSpeakEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;->b(Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;)Lcn/mucang/android/jiakaoyi/engine/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    return-void
.end method
