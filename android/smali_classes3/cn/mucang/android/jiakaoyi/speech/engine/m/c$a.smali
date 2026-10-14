.class public final Lcn/mucang/android/jiakaoyi/speech/engine/m/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/WakeuperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/m/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J*\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/speech/engine/wakeup/IflytekWakeupEngine$mWakeuperListener$1",
        "Lcom/iflytek/cloud/WakeuperListener;",
        "onBeginOfSpeech",
        "",
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
        "Lcom/iflytek/cloud/WakeuperResult;",
        "onVolumeChanged",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/speech/engine/m/c;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/speech/engine/m/c;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/m/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "onError "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "IflytekWakeupEngine"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/WakeuperResult;)V
    .locals 4

    const-string v0, "IflytekWakeupEngine"

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/iflytek/cloud/WakeuperResult;->getResultString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "keyword"

    .line 2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/m/c;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->h(Lcn/mucang/android/jiakaoyi/speech/engine/m/c;)Lcn/mucang/android/jiakaoyi/speech/d/f;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    const-string v3, "keyWord"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lcn/mucang/android/jiakaoyi/speech/d/f;->a(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0

    return-void
.end method
