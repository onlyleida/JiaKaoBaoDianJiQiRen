.class public final Lcn/mucang/android/jiakaoyi/speech/SpeechManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\"\n\u0000*\u0001\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0008\u0010\u0014\u001a\u00020\u0012H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0016J\u0008\u0010\u0019\u001a\u00020\u0012H\u0016J\u0008\u0010\u001a\u001a\u00020\u0010H\u0016J\"\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00102\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010 \u001a\u00020\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010#\u001a\u00020\u0010H\u0016J\u0016\u0010$\u001a\u00020\u00122\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00120&H\u0002J\u0012\u0010\'\u001a\u00020\u00122\u0008\u0010(\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010)\u001a\u00020\u0012H\u0016J\u0014\u0010*\u001a\u0004\u0018\u00010\u00042\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010+\u001a\u00020\u0012H\u0016J\u0008\u0010,\u001a\u00020\u0012H\u0016J\u0008\u0010\u001e\u001a\u00020\u0012H\u0016J\u0012\u0010-\u001a\u00020\u00122\u0008\u0010(\u001a\u0004\u0018\u00010\u000cH\u0016J\u0018\u0010.\u001a\u00020\u00122\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u000100H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/SpeechManager;",
        "Lcn/mucang/android/jiakaoyi/speech/ISpeechManager;",
        "()V",
        "TAG",
        "",
        "mSpeechCallbackWrap",
        "cn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1",
        "Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1;",
        "mSpeechEngine",
        "Lcn/mucang/android/jiakaoyi/speech/engine/ISpeechEngine;",
        "mSpeechStateCallbacks",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechStateChangeCallback;",
        "mSpeechViewCallback",
        "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;",
        "checkEngineOK",
        "",
        "disable",
        "",
        "dismissHint",
        "enable",
        "getMode",
        "",
        "getSpeechState",
        "state",
        "getVrWelcomeWords",
        "hasSession",
        "init",
        "context",
        "Landroid/content/Context;",
        "switchWakeup",
        "speechViewCallback",
        "invokeSpeechRet",
        "mode",
        "Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;",
        "isEnable",
        "postMain",
        "method",
        "Lkotlin/Function0;",
        "registerSpeechStateChangeCallback",
        "callback",
        "release",
        "showHint",
        "startSpeech",
        "stopSpeech",
        "unregisterSpeechStateChangeCallback",
        "uploadHotWords",
        "words",
        "",
        "speech_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

.field private static b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

.field private static c:Lcn/mucang/android/jiakaoyi/speech/d/e;

.field private static final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcn/mucang/android/jiakaoyi/speech/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/ui/i;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/ui/i;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->c:Lcn/mucang/android/jiakaoyi/speech/d/e;

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e:Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic b()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic c()Lcn/mucang/android/jiakaoyi/speech/d/e;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->c:Lcn/mucang/android/jiakaoyi/speech/d/e;

    return-object v0
.end method

.method public static final synthetic d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->n(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private final e()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "SpeechManager"

    const-string v1, "must call init(context: Context, switchWakeup: Boolean, speechCallback: ISpeechCallback?)"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic m(Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->o(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private final n(Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/a;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/a;-><init>(Lkotlin/jvm/b/a;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final o(Lkotlin/jvm/b/a;)V
    .locals 1

    const-string v0, "$method"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ZLcn/mucang/android/jiakaoyi/speech/d/e;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/utils/f;->a:Lcn/mucang/android/jiakaoyi/speech/utils/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/f;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->b()V

    if-eqz p3, :cond_0

    .line 3
    sput-object p3, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->c:Lcn/mucang/android/jiakaoyi/speech/d/e;

    .line 4
    :cond_0
    new-instance p3, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;-><init>()V

    sput-object p3, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez p3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e:Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1;

    invoke-interface {p3, p1, v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->h(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/speech/d/e;)V

    :goto_0
    if-eqz p2, :cond_3

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/engine/k$a;->a(Lcn/mucang/android/jiakaoyi/speech/engine/k;IZILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->disable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public final i(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "speaking"

    goto :goto_0

    :cond_1
    const-string p1, "asr"

    goto :goto_0

    :cond_2
    const-string p1, "error"

    goto :goto_0

    :cond_3
    const-string p1, "wakeup"

    :goto_0
    return-object p1
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public k(Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->j(Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->a()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public p(Lcn/mucang/android/jiakaoyi/speech/d/d;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public r(Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getPlayText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showHint tts="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechManager"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/g;->a:Lcn/mucang/android/jiakaoyi/framework/tts/g;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->e(I)Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-result-object v0

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->c()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getGrade()Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->getGrade()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getListener()Lcn/mucang/android/jiakaoyi/framework/tts/f;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onIntercept()V

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getPlayText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "showHint onIntercept, tts="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    .line 6
    :cond_5
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getPlayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getVoiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getGrade()Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-result-object v3

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getCloseAfterSpeak()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->getListener()Lcn/mucang/android/jiakaoyi/framework/tts/f;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->e(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ZLcn/mucang/android/jiakaoyi/framework/tts/f;)V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "SpeechManager"

    const-string v1, "startSpeech, \u8bed\u97f3\u52a9\u624b\u5df2\u88ab\u7981\u7528"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->b(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/k;->f()V

    .line 3
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->b:Lcn/mucang/android/jiakaoyi/speech/engine/k;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcn/mucang/android/jiakaoyi/speech/engine/k$a;->a(Lcn/mucang/android/jiakaoyi/speech/engine/k;IZILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
