.class public final Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/RecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/l/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\u0005\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J*\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/speech/engine/asr/IflytekAsrEngine$mRecognizerListener$1",
        "Lcom/iflytek/cloud/RecognizerListener;",
        "onBeginOfSpeech",
        "",
        "onEndOfSpeech",
        "onError",
        "error",
        "Lcom/iflytek/cloud/SpeechError;",
        "onEvent",
        "p0",
        "",
        "p1",
        "p2",
        "p3",
        "Landroid/os/Bundle;",
        "onResult",
        "result",
        "Lcom/iflytek/cloud/RecognizerResult;",
        "isFinal",
        "",
        "onVolumeChanged",
        "volume",
        "data",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->h(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)Lcn/mucang/android/jiakaoyi/speech/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/d/a;->b()V

    :goto_0
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->h(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)Lcn/mucang/android/jiakaoyi/speech/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/d/a;->onSpeakEnd()V

    :goto_0
    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "onError "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IflytekWakeupEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->h(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)Lcn/mucang/android/jiakaoyi/speech/d/a;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/d/a;->d(I)V

    .line 3
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    const-string v0, ""

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->j(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->i(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->j(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->h(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)Lcn/mucang/android/jiakaoyi/speech/d/a;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->i(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/speech/d/a;->c(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public onVolumeChanged(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/l/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->h(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)Lcn/mucang/android/jiakaoyi/speech/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/d/a;->onVolumeChanged(I[B)V

    :goto_0
    return-void
.end method
