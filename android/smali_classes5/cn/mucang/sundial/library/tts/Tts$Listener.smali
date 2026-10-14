.class final Lcn/mucang/sundial/library/tts/Tts$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/tts/SpeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/tts/Tts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J2\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0096\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ2\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0096\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0006H\u0096\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0006H\u0096\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J(\u0010\u0019\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0096\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0006H\u0096\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/sundial/library/tts/Tts$Listener;",
        "Lcn/mucang/sundial/library/tts/SpeakListener;",
        "",
        "errorCode",
        "",
        "errorMsg",
        "Lkotlin/v;",
        "onCompleted",
        "(ILjava/lang/String;)V",
        "progress",
        "beginPos",
        "endPos",
        "info",
        "onBufferProgress",
        "(IIILjava/lang/String;)V",
        "eventType",
        "arg1",
        "arg2",
        "Landroid/os/Bundle;",
        "obj",
        "onEvent",
        "(IIILandroid/os/Bundle;)V",
        "onSpeakBegin",
        "()V",
        "onSpeakPaused",
        "onSpeakProgress",
        "(III)V",
        "onSpeakResumed",
        "delegate",
        "Lcn/mucang/sundial/library/tts/SpeakListener;",
        "<init>",
        "(Lcn/mucang/sundial/library/tts/SpeakListener;)V",
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
.field private final delegate:Lcn/mucang/sundial/library/tts/SpeakListener;


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/tts/Tts$Listener;->delegate:Lcn/mucang/sundial/library/tts/SpeakListener;

    return-void
.end method


# virtual methods
.method public onBufferProgress(IIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/tts/Tts$Listener;->delegate:Lcn/mucang/sundial/library/tts/SpeakListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/mucang/sundial/library/tts/SpeakListener;->onBufferProgress(IIILjava/lang/String;)V

    return-void
.end method

.method public onCompleted(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/tts/Tts;->INSTANCE:Lcn/mucang/sundial/library/tts/Tts;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcn/mucang/sundial/library/tts/Tts;->access$setTopLevel$p(Lcn/mucang/sundial/library/tts/Tts;Ljava/lang/Boolean;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/tts/Tts$Listener;->delegate:Lcn/mucang/sundial/library/tts/SpeakListener;

    invoke-interface {v0, p1, p2}, Lcn/mucang/sundial/library/tts/SpeakListener;->onCompleted(ILjava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->access$speechNext()V

    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/tts/Tts$Listener;->delegate:Lcn/mucang/sundial/library/tts/SpeakListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/mucang/sundial/library/tts/SpeakListener;->onEvent(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public onSpeakBegin()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/tts/Tts$Listener;->delegate:Lcn/mucang/sundial/library/tts/SpeakListener;

    invoke-interface {v0}, Lcn/mucang/sundial/library/tts/SpeakListener;->onSpeakBegin()V

    return-void
.end method

.method public onSpeakPaused()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/tts/Tts$Listener;->delegate:Lcn/mucang/sundial/library/tts/SpeakListener;

    invoke-interface {v0}, Lcn/mucang/sundial/library/tts/SpeakListener;->onSpeakPaused()V

    return-void
.end method

.method public onSpeakProgress(III)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/tts/Tts$Listener;->delegate:Lcn/mucang/sundial/library/tts/SpeakListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/sundial/library/tts/SpeakListener;->onSpeakProgress(III)V

    return-void
.end method

.method public onSpeakResumed()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/tts/Tts$Listener;->delegate:Lcn/mucang/sundial/library/tts/SpeakListener;

    invoke-interface {v0}, Lcn/mucang/sundial/library/tts/SpeakListener;->onSpeakResumed()V

    return-void
.end method
