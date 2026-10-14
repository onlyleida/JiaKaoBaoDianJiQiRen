.class final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->h0(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $closeAfterTts:Z

.field final synthetic $sessionId:Ljava/lang/String;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;


# direct methods
.method constructor <init>(ZLcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;->$closeAfterTts:Z

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;->$sessionId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;->$closeAfterTts:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;->$sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->m0(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$playTtsWithSession$1;->$sessionId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->B(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
