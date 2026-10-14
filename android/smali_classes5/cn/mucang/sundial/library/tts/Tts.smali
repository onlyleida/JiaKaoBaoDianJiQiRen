.class public final Lcn/mucang/sundial/library/tts/Tts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/tts/Tts$SpeechItem;,
        Lcn/mucang/sundial/library/tts/Tts$Listener;,
        Lcn/mucang/sundial/library/tts/Tts$NoopListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u001e\u001f B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u000bJ#\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\n\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000bR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/sundial/library/tts/Tts;",
        "",
        "",
        "word",
        "Lcn/mucang/sundial/library/tts/SpeakListener;",
        "listener",
        "Lkotlin/v;",
        "speak",
        "(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V",
        "speakNow",
        "speakStop",
        "()V",
        "speechNext",
        "init",
        "destroy",
        "Lcn/mucang/sundial/library/tts/Speaker;",
        "speaker",
        "Lcn/mucang/sundial/library/tts/Speaker;",
        "getSpeaker$library_release",
        "()Lcn/mucang/sundial/library/tts/Speaker;",
        "setSpeaker$library_release",
        "(Lcn/mucang/sundial/library/tts/Speaker;)V",
        "",
        "topLevel",
        "Ljava/lang/Boolean;",
        "Ljava/util/LinkedList;",
        "Lcn/mucang/sundial/library/tts/Tts$SpeechItem;",
        "textToSpeech",
        "Ljava/util/LinkedList;",
        "<init>",
        "Listener",
        "NoopListener",
        "SpeechItem",
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
.field public static final INSTANCE:Lcn/mucang/sundial/library/tts/Tts;

.field private static speaker:Lcn/mucang/sundial/library/tts/Speaker;

.field private static final textToSpeech:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/sundial/library/tts/Tts$SpeechItem;",
            ">;"
        }
    .end annotation
.end field

.field private static topLevel:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/tts/Tts;

    invoke-direct {v0}, Lcn/mucang/sundial/library/tts/Tts;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/tts/Tts;->INSTANCE:Lcn/mucang/sundial/library/tts/Tts;

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/tts/Tts;->textToSpeech:Ljava/util/LinkedList;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcn/mucang/sundial/library/tts/Tts;->topLevel:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTextToSpeech$p(Lcn/mucang/sundial/library/tts/Tts;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/sundial/library/tts/Tts;->textToSpeech:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static final synthetic access$getTopLevel$p(Lcn/mucang/sundial/library/tts/Tts;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/sundial/library/tts/Tts;->topLevel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$setTopLevel$p(Lcn/mucang/sundial/library/tts/Tts;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    sput-object p1, Lcn/mucang/sundial/library/tts/Tts;->topLevel:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$speechNext()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->speechNext()V

    return-void
.end method

.method public static final declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcn/mucang/sundial/library/tts/Tts;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts;->textToSpeech:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 3
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts;->speaker:Lcn/mucang/sundial/library/tts/Speaker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/mucang/sundial/library/tts/Speaker;->destroy()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized init()V
    .locals 2

    const-class v0, Lcn/mucang/sundial/library/tts/Tts;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts;->speaker:Lcn/mucang/sundial/library/tts/Speaker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/mucang/sundial/library/tts/Speaker;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final speak(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static final declared-synchronized speak(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 5

    const-class v0, Lcn/mucang/sundial/library/tts/Tts;

    monitor-enter v0

    :try_start_0
    const-string v1, "word"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts;->speaker:Lcn/mucang/sundial/library/tts/Speaker;

    if-eqz v1, :cond_1

    .line 2
    sget-object v2, Lcn/mucang/sundial/library/tts/Tts;->textToSpeech:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    .line 3
    new-instance v4, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;

    invoke-direct {v4, p0, p1}, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;-><init>(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcn/mucang/sundial/library/tts/Speaker;->isSpeaking()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/sundial/library/util/KtxsKt;->isTrue(Ljava/lang/Boolean;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->speechNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcn/mucang/sundial/library/tts/Tts;->speak(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V

    return-void
.end method

.method public static final speakNow(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcn/mucang/sundial/library/tts/Tts;->speakNow$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static final declared-synchronized speakNow(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 3

    const-class v0, Lcn/mucang/sundial/library/tts/Tts;

    monitor-enter v0

    :try_start_0
    const-string v1, "word"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts;->speaker:Lcn/mucang/sundial/library/tts/Speaker;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts;->textToSpeech:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 3
    new-instance v2, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;

    invoke-direct {v2, p0, p1}, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;-><init>(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->speechNext()V

    .line 5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcn/mucang/sundial/library/tts/Tts;->topLevel:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic speakNow$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcn/mucang/sundial/library/tts/Tts;->speakNow(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V

    return-void
.end method

.method public static final declared-synchronized speakStop()V
    .locals 5

    const-class v0, Lcn/mucang/sundial/library/tts/Tts;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts;->topLevel:Ljava/lang/Boolean;

    invoke-static {v1}, Lcn/mucang/sundial/library/util/KtxsKt;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts;->speaker:Lcn/mucang/sundial/library/tts/Speaker;

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts;->textToSpeech:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 5
    new-instance v2, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;

    const-string v3, "-"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcn/mucang/sundial/library/tts/Tts$SpeechItem;-><init>(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->speechNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final declared-synchronized speechNext()V
    .locals 2

    const-class v0, Lcn/mucang/sundial/library/tts/Tts;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/sundial/library/tts/Tts$speechNext$1;->INSTANCE:Lcn/mucang/sundial/library/tts/Tts$speechNext$1;

    invoke-static {v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final getSpeaker$library_release()Lcn/mucang/sundial/library/tts/Speaker;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/tts/Tts;->speaker:Lcn/mucang/sundial/library/tts/Speaker;

    return-object v0
.end method

.method public final setSpeaker$library_release(Lcn/mucang/sundial/library/tts/Speaker;)V
    .locals 0

    .line 1
    sput-object p1, Lcn/mucang/sundial/library/tts/Tts;->speaker:Lcn/mucang/sundial/library/tts/Speaker;

    return-void
.end method
