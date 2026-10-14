.class public final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a;->c(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mAsrCallBack$1$onAsrResult$1",
        "Lcn/mucang/android/jiakaoyi/speech/callback/ISemanticCallback;",
        "onAnswerText",
        "",
        "sessionId",
        "",
        "answerText",
        "closeAfterTts",
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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAnswerText sessionId="

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->H(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Z)V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->E(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->H(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Z)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$a$a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->t(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object p1

    const/4 p2, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "waiting biz invoke result"

    .line 8
    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
