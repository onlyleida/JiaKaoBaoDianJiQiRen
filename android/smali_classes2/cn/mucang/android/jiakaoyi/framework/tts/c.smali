.class public abstract Lcn/mucang/android/jiakaoyi/framework/tts/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/tts/f;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016J \u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;",
        "()V",
        "onBufferProgress",
        "",
        "percent",
        "",
        "beginPos",
        "endPos",
        "onIntercept",
        "onSpeakBegin",
        "onSpeakEnd",
        "onSpeakPaused",
        "onSpeakProgress",
        "onSpeakResumed",
        "framework_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgress(III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->a(Lcn/mucang/android/jiakaoyi/framework/tts/f;III)V

    return-void
.end method

.method public onIntercept()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->b(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakBegin()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->c(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakEnd()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->d(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakPaused()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->e(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakProgress(III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->f(Lcn/mucang/android/jiakaoyi/framework/tts/f;III)V

    return-void
.end method

.method public onSpeakResumed()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->g(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method
