.class public final Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/SynthesizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->l(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J*\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0003H\u0016J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J \u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0008\u0010\u0015\u001a\u00020\u0003H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$speak$1",
        "Lcom/iflytek/cloud/SynthesizerListener;",
        "onBufferProgress",
        "",
        "i",
        "",
        "i1",
        "i2",
        "s",
        "",
        "onCompleted",
        "speechError",
        "Lcom/iflytek/cloud/SpeechError;",
        "onEvent",
        "eventType",
        "bundle",
        "Landroid/os/Bundle;",
        "onSpeakBegin",
        "onSpeakPaused",
        "onSpeakProgress",
        "progress",
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


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

.field final synthetic c:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->c:Ljava/io/File;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgress(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    const-string v0, "TtsSynchronizer"

    const-string v1, "\u64ad\u653eonCompleted"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tts\u64ad\u653e\u5931\u8d25 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/mucang/android/core/utils/t;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->d(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 0

    const/16 p2, 0x520a

    if-ne p2, p1, :cond_1

    const-string p1, "TtsSynchronizer"

    const-string p2, "\u64ad\u653eEVENT_TTS_CANCEL"

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->d(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    :cond_1
    return-void
.end method

.method public onSpeakBegin()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :goto_0
    return-void
.end method

.method public onSpeakPaused()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :goto_0
    return-void
.end method

.method public onSpeakProgress(III)V
    .locals 6

    if-lez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->g(Z)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a()Ljava/lang/String;

    move-result-object v2

    const-string p1, "task.betterKey()"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->c:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    const-string p1, "pcmFile"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget v3, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a:I

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    const-string p1, "task.text"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :cond_0
    return-void
.end method

.method public onSpeakResumed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->c(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :goto_0
    return-void
.end method
