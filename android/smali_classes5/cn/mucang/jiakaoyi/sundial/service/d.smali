.class public final Lcn/mucang/jiakaoyi/sundial/service/d;
.super Lcn/mucang/sundial/library/tts/Speaker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/service/SundialSpeaker;",
        "Lcn/mucang/sundial/library/tts/Speaker;",
        "()V",
        "destroy",
        "",
        "init",
        "isSpeaking",
        "",
        "speak",
        "word",
        "",
        "listener",
        "Lcn/mucang/sundial/library/tts/SpeakListener;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/tts/Speaker;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isSpeaking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public speak(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 2

    const-string v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v1, Lcn/mucang/jiakaoyi/sundial/service/d$a;

    invoke-direct {v1, p2}, Lcn/mucang/jiakaoyi/sundial/service/d$a;-><init>(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method
