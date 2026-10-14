.class public interface abstract Lcn/mucang/sundial/library/tts/SpeakListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/tts/SpeakListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008f\u0018\u00002\u00020\u0001J1\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ1\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u000cJ\u000f\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u000cJ!\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/sundial/library/tts/SpeakListener;",
        "",
        "",
        "progress",
        "beginPos",
        "endPos",
        "",
        "info",
        "Lkotlin/v;",
        "onBufferProgress",
        "(IIILjava/lang/String;)V",
        "onSpeakBegin",
        "()V",
        "onSpeakProgress",
        "(III)V",
        "eventType",
        "arg1",
        "arg2",
        "Landroid/os/Bundle;",
        "obj",
        "onEvent",
        "(IIILandroid/os/Bundle;)V",
        "onSpeakPaused",
        "onSpeakResumed",
        "errorCode",
        "errorMsg",
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


# virtual methods
.method public abstract onBufferProgress(IIILjava/lang/String;)V
.end method

.method public abstract onCompleted(ILjava/lang/String;)V
.end method

.method public abstract onEvent(IIILandroid/os/Bundle;)V
.end method

.method public abstract onSpeakBegin()V
.end method

.method public abstract onSpeakPaused()V
.end method

.method public abstract onSpeakProgress(III)V
.end method

.method public abstract onSpeakResumed()V
.end method
