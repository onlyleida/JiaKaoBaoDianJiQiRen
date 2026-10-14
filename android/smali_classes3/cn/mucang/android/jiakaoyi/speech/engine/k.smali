.class public interface abstract Lcn/mucang/android/jiakaoyi/speech/engine/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/speech/engine/k$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\"\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\nH&J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\u0012\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0008\u0010\u0013\u001a\u00020\nH&J\u0008\u0010\u0014\u001a\u00020\nH&J\u0008\u0010\u0015\u001a\u00020\u0003H&J6\u0010\u0016\u001a\u00020\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH&J\u0018\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\nH&J\u0012\u0010\u001f\u001a\u00020\u00032\u0008\u0010\"\u001a\u0004\u0018\u00010\u0018H&J\u0008\u0010#\u001a\u00020\u0003H&J\u001a\u0010$\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00072\u0008\u0008\u0002\u0010%\u001a\u00020\nH&J\u0018\u0010&\u001a\u00020\u00032\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010(H&\u00a8\u0006)"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/engine/ISpeechEngine;",
        "",
        "disable",
        "",
        "dismissHint",
        "enable",
        "getMode",
        "",
        "getVrWelcomeWords",
        "hasSession",
        "",
        "init",
        "context",
        "Landroid/content/Context;",
        "speechCallback",
        "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;",
        "invokeSpeechRet",
        "mode",
        "Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;",
        "isEnable",
        "isInitOK",
        "release",
        "showHint",
        "ttsText",
        "",
        "voiceUrl",
        "ttsGrade",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
        "asrAfterTts",
        "ttsListener",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;",
        "startSpeech",
        "type",
        "needWelcome",
        "sessionId",
        "stopSpeech",
        "switchMode",
        "force",
        "uploadHotWords",
        "words",
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


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(IZ)V
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method public abstract disable()V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ZLcn/mucang/android/jiakaoyi/framework/tts/f;)V
.end method

.method public abstract f()V
.end method

.method public abstract g(IZ)V
.end method

.method public abstract h(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/speech/d/e;)V
.end method

.method public abstract i()V
.end method

.method public abstract j(Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;)V
.end method

.method public abstract k()I
.end method

.method public abstract l()Z
.end method

.method public abstract release()V
.end method
