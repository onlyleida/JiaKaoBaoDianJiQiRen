.class public final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2;->invoke()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
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
.method constructor <init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->z(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage msg="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->w(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->H(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Z)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    sget v1, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key7:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->E(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->A(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)V

    :cond_2
    :goto_0
    return-void
.end method
