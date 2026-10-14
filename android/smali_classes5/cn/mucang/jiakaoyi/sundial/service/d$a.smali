.class public final Lcn/mucang/jiakaoyi/sundial/service/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/tts/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/service/d;->speak(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "cn/mucang/jiakaoyi/sundial/service/SundialSpeaker$speak$1",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;",
        "onIntercept",
        "",
        "onSpeakEnd",
        "sundial_release"
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
.field final synthetic a:Lcn/mucang/sundial/library/tts/SpeakListener;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/d$a;->a:Lcn/mucang/sundial/library/tts/SpeakListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/service/d$a;->d(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/service/d$a;->c(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    return-void
.end method

.method private static final c(Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-interface {p0, v0, v1}, Lcn/mucang/sundial/library/tts/SpeakListener;->onCompleted(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final d(Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-interface {p0, v0, v1}, Lcn/mucang/sundial/library/tts/SpeakListener;->onCompleted(ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onIntercept()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->b(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/d$a;->a:Lcn/mucang/sundial/library/tts/SpeakListener;

    new-instance v1, Lcn/mucang/jiakaoyi/sundial/service/b;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/sundial/service/b;-><init>(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSpeakBegin()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->c(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method

.method public onSpeakEnd()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/f$a;->d(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/d$a;->a:Lcn/mucang/sundial/library/tts/SpeakListener;

    new-instance v1, Lcn/mucang/jiakaoyi/sundial/service/a;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/sundial/service/a;-><init>(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

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
