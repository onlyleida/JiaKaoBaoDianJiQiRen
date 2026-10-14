.class public final Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;
.super Lcn/mucang/android/jiakaoyi/framework/tts/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->o(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$synthesizeToUri$1",
        "Lcn/mucang/android/jiakaoyi/framework/tts/SimpleSynthesizerListener;",
        "onCompleted",
        "",
        "speechError",
        "Lcom/iflytek/cloud/SpeechError;",
        "onEvent",
        "eventType",
        "",
        "i1",
        "i2",
        "bundle",
        "Landroid/os/Bundle;",
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

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->b:Ljava/io/File;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->c:Ljava/io/File;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->e:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .locals 8

    const-string v0, "TtsSynchronizer"

    const-string v1, "\u5408\u6210onCompleted"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-static {v2, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->d(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->b:Ljava/io/File;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->c:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->g(Z)V

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->c:Ljava/io/File;

    const-string p1, "pcmFile"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->d:Ljava/lang/String;

    const-string p1, "betterKey"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->e:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    iget v5, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a:I

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    const-string p1, "voiceTask.text"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->e:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :cond_0
    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 0

    const/16 p2, 0x520a

    if-ne p2, p1, :cond_1

    const-string p1, "TtsSynchronizer"

    const-string p2, "\u5408\u6210EVENT_TTS_CANCEL"

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->d(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    :cond_1
    return-void
.end method
