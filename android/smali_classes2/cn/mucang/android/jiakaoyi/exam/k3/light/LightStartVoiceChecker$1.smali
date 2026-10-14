.class Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker$1;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->checkPlayingFinish()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->access$002(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;Z)Z

    return-void
.end method
