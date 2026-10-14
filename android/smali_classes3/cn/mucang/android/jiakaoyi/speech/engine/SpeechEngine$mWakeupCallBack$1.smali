.class public final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/d/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1",
        "Lcn/mucang/android/jiakaoyi/speech/callback/IWakeupCallback;",
        "onMainWakeup",
        "",
        "type",
        "",
        "wakeupWord",
        "",
        "needWelcome",
        "",
        "speech_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 11

    const-string v0, "wakeupWord"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/g;->a:Lcn/mucang/android/jiakaoyi/framework/tts/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->e(I)Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-result-object v0

    const-string v2, "SpeechEngine"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result v4

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result v6

    if-le v4, v6, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore wakeup!!, because lowVoicePlaying tts grade:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > \u8bed\u97f3\u52a9\u624b("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 p2, 0x1

    invoke-static {p1, v3, p2, v3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->I(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;IZZ)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->B(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v1, v5}, Lcn/mucang/android/jiakaoyi/speech/engine/k$a;->a(Lcn/mucang/android/jiakaoyi/speech/engine/k;IZILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->F(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMainWakeup sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , needWelcome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->u(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/d/e;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/d/e;->h(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->y(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object p2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p1, p2}, Lkotlin/collections/s;->z0(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1$onMainWakeup$1;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-direct {v8, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1$onMainWakeup$1;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->i0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mWakeupCallBack$1;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m0(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
