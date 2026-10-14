.class final Lcn/mucang/sundial/library/tts/Tts$NoopListener;
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
    name = "NoopListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcn/mucang/sundial/library/tts/Tts$NoopListener;",
        "Lcn/mucang/sundial/library/tts/SpeakListener;",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/tts/Tts$NoopListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/tts/Tts$NoopListener;

    invoke-direct {v0}, Lcn/mucang/sundial/library/tts/Tts$NoopListener;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/tts/Tts$NoopListener;->INSTANCE:Lcn/mucang/sundial/library/tts/Tts$NoopListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
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
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/sundial/library/tts/SpeakListener$DefaultImpls;->onCompleted(Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/String;)V

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
