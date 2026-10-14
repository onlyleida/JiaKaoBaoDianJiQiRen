.class final Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1;->f(Ljava/lang/String;Ljava/lang/String;Z)V
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
.field final synthetic $isFinal:Z

.field final synthetic $sessionId:Ljava/lang/String;

.field final synthetic $words:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;->$sessionId:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;->$words:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;->$isFinal:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->c()Lcn/mucang/android/jiakaoyi/speech/d/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;->$sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;->$words:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;->$isFinal:Z

    invoke-interface {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/speech/d/e;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
