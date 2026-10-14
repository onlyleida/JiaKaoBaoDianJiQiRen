.class final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->T(I)V
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
.field final synthetic $type:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;


# direct methods
.method constructor <init>(ILcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;->$type:I

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;->$type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->t(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mSpeechHandler$2$a;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/speech/engine/k$a;->a(Lcn/mucang/android/jiakaoyi/speech/engine/k;IZILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$handleAsrTimeout$1;->this$0:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->r(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->B(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
