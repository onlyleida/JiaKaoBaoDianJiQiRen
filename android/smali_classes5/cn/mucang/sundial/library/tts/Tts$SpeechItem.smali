.class final Lcn/mucang/sundial/library/tts/Tts$SpeechItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/tts/Tts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpeechItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/sundial/library/tts/Tts$SpeechItem;",
        "",
        "",
        "word",
        "Ljava/lang/String;",
        "getWord",
        "()Ljava/lang/String;",
        "Lcn/mucang/sundial/library/tts/SpeakListener;",
        "listener",
        "Lcn/mucang/sundial/library/tts/SpeakListener;",
        "getListener",
        "()Lcn/mucang/sundial/library/tts/SpeakListener;",
        "<init>",
        "(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V",
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
.field private final listener:Lcn/mucang/sundial/library/tts/SpeakListener;

.field private final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 1

    const-string v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;->word:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;->listener:Lcn/mucang/sundial/library/tts/SpeakListener;

    return-void
.end method


# virtual methods
.method public final getListener()Lcn/mucang/sundial/library/tts/SpeakListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;->listener:Lcn/mucang/sundial/library/tts/SpeakListener;

    return-object v0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;->word:Ljava/lang/String;

    return-object v0
.end method
