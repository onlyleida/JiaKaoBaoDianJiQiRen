.class public final Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/tts/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationManager;->q(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/nav/NavigationManager$stopNav$1",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;",
        "onSpeakEnd",
        "",
        "teachbase_release"
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
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .locals 1

    const v0, 0x13886

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->b(I)V

    return-void
.end method

.method public onSpeakPaused()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->e(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakResumed()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->g(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method
