.class public final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/d/a;


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
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u001a\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mAsrCallBack$1",
        "Lcn/mucang/android/jiakaoyi/speech/callback/IAsrCallback;",
        "onAsrError",
        "",
        "code",
        "",
        "onAsrResult",
        "words",
        "",
        "isFinal",
        "",
        "onSpeakEnd",
        "onSpeakStart",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "SpeechEngine"

    const-string v1, "onSpeakStart"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->t(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->u(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/d/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/d/e;->b()V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAsrResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , isFinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->u(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/d/e;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/d/e;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->n(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    if-nez p2, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v2, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/k$a;->a(Lcn/mucang/android/jiakaoyi/speech/engine/k;IZILjava/lang/Object;)V

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->q(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/semantic/d;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a$a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a$a;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V

    invoke-virtual {p2, v0, p1, v1}, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->b(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/d/c;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "onError : code="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2786

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g(IZ)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->A(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)V

    :goto_0
    return-void
.end method

.method public onSpeakEnd()V
    .locals 2

    const-string v0, "SpeechEngine"

    const-string v1, "onSpeakEnd"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->u(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/d/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/d/e;->onSpeakEnd()V

    :goto_0
    return-void
.end method

.method public onVolumeChanged(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->u(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/d/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/d/e;->onVolumeChanged(I[B)V

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->o(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/utils/g;

    move-result-object p1

    array-length v0, p2

    invoke-virtual {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/g;->b([BI)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->t(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method
