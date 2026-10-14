.class final Lcn/mucang/sundial/library/tts/Tts$speechNext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/tts/Tts;->speechNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/tts/Tts$speechNext$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/tts/Tts$speechNext$1;

    invoke-direct {v0}, Lcn/mucang/sundial/library/tts/Tts$speechNext$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/tts/Tts$speechNext$1;->INSTANCE:Lcn/mucang/sundial/library/tts/Tts$speechNext$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/tts/Tts;->INSTANCE:Lcn/mucang/sundial/library/tts/Tts;

    invoke-static {v0}, Lcn/mucang/sundial/library/tts/Tts;->access$getTextToSpeech$p(Lcn/mucang/sundial/library/tts/Tts;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1}, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3e8

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/library/tts/Tts;->getSpeaker$library_release()Lcn/mucang/sundial/library/tts/Speaker;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;->getWord()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/mucang/sundial/library/tts/Tts$Listener;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;->getListener()Lcn/mucang/sundial/library/tts/SpeakListener;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts$NoopListener;->INSTANCE:Lcn/mucang/sundial/library/tts/Tts$NoopListener;

    :goto_0
    invoke-direct {v3, v1}, Lcn/mucang/sundial/library/tts/Tts$Listener;-><init>(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    invoke-virtual {v0, v2, v3}, Lcn/mucang/sundial/library/tts/Speaker;->speak(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
