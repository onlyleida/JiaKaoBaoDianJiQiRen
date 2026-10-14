.class public final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->g0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
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
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$2",
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

.field final synthetic b:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->b:Lkotlin/jvm/b/a;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->c:Lkotlin/jvm/b/a;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->d:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->f:Lkotlin/jvm/b/a;

    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->g:Lkotlin/jvm/b/a;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->a:Ljava/lang/String;

    const-string v1, "play tts onIntercept, text="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->c:Lkotlin/jvm/b/a;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->d:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->B(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onSpeakBegin()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->a:Ljava/lang/String;

    const-string v1, "play tts onStart, text="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechEngine"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->b:Lkotlin/jvm/b/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onSpeakEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->d:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->v(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Z

    move-result v0

    const-string v1, "SpeechEngine"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->a:Ljava/lang/String;

    const-string v2, "play tts onIntercept by self , text="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->f:Lkotlin/jvm/b/a;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->d:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->B(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->d:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->G(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->a:Ljava/lang/String;

    const-string v2, "play tts onCompleted , text="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$c;->g:Lkotlin/jvm/b/a;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_1
    return-void
.end method
