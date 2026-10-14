.class final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0007\n\u0000\n\u0000*\u0001\u0001\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$1"
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->s(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Landroid/os/Looper;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2;->invoke()Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    return-object v0
.end method
