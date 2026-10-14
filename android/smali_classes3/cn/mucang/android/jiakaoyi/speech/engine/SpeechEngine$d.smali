.class public final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->k0(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$showHint$1$1",
        "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleTtsListener;",
        "onIntercept",
        "",
        "onSpeakBegin",
        "onSpeakEnd",
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

.field final synthetic c:Lcn/mucang/android/jiakaoyi/framework/tts/f;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Lcn/mucang/android/jiakaoyi/framework/tts/f;Z)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->c:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->d:Z

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->a:Ljava/lang/String;

    const-string v1, "onIntercept ttsText="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->u(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/d/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/d/e;->i()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->c:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onIntercept()V

    :goto_1
    return-void
.end method

.method public onSpeakBegin()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->a:Ljava/lang/String;

    const-string v1, "onSpeakBegin ttsText="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->u(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/d/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/d/e;->d(Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->D(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->c:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onSpeakBegin()V

    :goto_1
    return-void
.end method

.method public onSpeakEnd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->v(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Z

    move-result v0

    const-string v1, "SpeechEngine"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->a:Ljava/lang/String;

    const-string v2, "play tts onIntercept by self , text="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->a:Ljava/lang/String;

    const-string v2, "play tts onCompleted , text="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->v(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->C(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->b(IZ)V

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->u(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/d/e;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/d/e;->i()V

    .line 7
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->b:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->t0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;ZILjava/lang/Object;)V

    .line 8
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$d;->c:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onSpeakEnd()V

    :goto_3
    return-void
.end method
