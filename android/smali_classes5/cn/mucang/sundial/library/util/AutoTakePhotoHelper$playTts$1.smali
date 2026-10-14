.class public final Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/tts/SpeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/AutoTakePhotoHelper;->playTts(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1",
        "Lcn/mucang/sundial/library/tts/SpeakListener;",
        "",
        "errorCode",
        "",
        "errorMsg",
        "Lkotlin/v;",
        "onCompleted",
        "(ILjava/lang/String;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $delay:I

.field final synthetic $onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1;->$onComplete:Ljava/lang/Runnable;

    iput p2, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1;->$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgress(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/sundial/library/tts/SpeakListener$DefaultImpls;->onBufferProgress(Lcn/mucang/sundial/library/tts/SpeakListener;IIILjava/lang/String;)V

    return-void
.end method

.method public onCompleted(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1$onCompleted$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1$onCompleted$1;-><init>(Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1;)V

    .line 2
    iget p2, p0, Lcn/mucang/sundial/library/util/AutoTakePhotoHelper$playTts$1;->$delay:I

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    .line 3
    invoke-static {p1, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/sundial/library/tts/SpeakListener$DefaultImpls;->onEvent(Lcn/mucang/sundial/library/tts/SpeakListener;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public onSpeakBegin()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/library/tts/SpeakListener$DefaultImpls;->onSpeakBegin(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    return-void
.end method

.method public onSpeakPaused()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/library/tts/SpeakListener$DefaultImpls;->onSpeakPaused(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    return-void
.end method

.method public onSpeakProgress(III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/sundial/library/tts/SpeakListener$DefaultImpls;->onSpeakProgress(Lcn/mucang/sundial/library/tts/SpeakListener;III)V

    return-void
.end method

.method public onSpeakResumed()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/library/tts/SpeakListener$DefaultImpls;->onSpeakResumed(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    return-void
.end method
