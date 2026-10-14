.class public final Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$TaskWrapper;",
        "",
        "voiceTask",
        "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;",
        "(Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;)V",
        "finished",
        "",
        "getFinished",
        "()Z",
        "setFinished",
        "(Z)V",
        "notify",
        "Lcn/mucang/android/jiakaoyi/framework/tts/play/PlayerListener;",
        "getNotify",
        "()Lcn/mucang/android/jiakaoyi/framework/tts/play/PlayerListener;",
        "setNotify",
        "(Lcn/mucang/android/jiakaoyi/framework/tts/play/PlayerListener;)V",
        "uploaded",
        "getUploaded",
        "setUploaded",
        "getVoiceTask",
        "()Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;",
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
.field private final a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

.field private b:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 1

    const-string v0, "voiceTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->c:Z

    return v0
.end method

.method public final b()Lcn/mucang/android/jiakaoyi/framework/tts/play/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d:Z

    return v0
.end method

.method public final d()Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    return-object v0
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->c:Z

    return-void
.end method

.method public final f(Lcn/mucang/android/jiakaoyi/framework/tts/play/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->b:Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d:Z

    return-void
.end method
