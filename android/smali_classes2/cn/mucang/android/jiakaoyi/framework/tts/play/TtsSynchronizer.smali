.class public final Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\"B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u0016\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0017J\u0010\u0010!\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;",
        "",
        "()V",
        "TAG",
        "",
        "currentTask",
        "Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$TaskWrapper;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "taskList",
        "Ljava/util/LinkedList;",
        "uploadThread",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "encodeAndUpload",
        "",
        "synthFile",
        "Ljava/io/File;",
        "betterKey",
        "code",
        "",
        "text",
        "task",
        "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;",
        "onFinish",
        "preWrapper",
        "speak",
        "wrapper",
        "start",
        "voiceTask",
        "listener",
        "Lcn/mucang/android/jiakaoyi/framework/tts/play/PlayerListener;",
        "stop",
        "synthesizeToUri",
        "TaskWrapper",
        "framework_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

.field private static final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ExecutorService;

.field private static final d:Lkotlinx/coroutines/i0;

.field private static e:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->b:Ljava/util/LinkedList;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/p2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/w;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "newSingleThreadExecutor()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlinx/coroutines/k1;->a(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->d:Lkotlinx/coroutines/i0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->h(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method public static final synthetic b()Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->e:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/LinkedList;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static final synthetic d(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->k(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    return-void
.end method

.method public static final synthetic e(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->e:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    return-void
.end method

.method public static final synthetic f(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->l(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    return-void
.end method

.method public static final synthetic g(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->o(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    return-void
.end method

.method private final h(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;-><init>(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final i(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 3

    const-string v0, "$betterKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$synthFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$text"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$task"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/j/a;->a(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    :try_start_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;

    invoke-direct {p1, p2, p3, v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/h/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/h/a;-><init>()V

    invoke-virtual {v1, v0, p1, p4}, Lcn/mucang/android/jiakaoyi/framework/tts/h/a;->n(Ljava/io/File;Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 6
    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthResultModel;->voiceUrl:Ljava/lang/String;

    iput-object p4, p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/SynthEntity;->url:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4f20\u6587\u4ef6\u5931\u8d25:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",key="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",text="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",code="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",error="

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :catchall_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic j(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->i(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method private final k(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->d:Lkotlinx/coroutines/i0;

    new-instance v3, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final l(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
    .locals 6

    const-string v0, "TtsSynchronizer"

    const-string v1, "speak"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d()Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pcm/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".pcm.t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/d;->a:Lcn/mucang/android/jiakaoyi/framework/tts/d;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pcmFileTmp.absolutePath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/d;->e(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    const-string v4, "getContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->m:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const-string v5, "task.speaker"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->a(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "task.finalPlayText"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;

    invoke-direct {v4, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$b;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Ljava/io/File;)V

    .line 7
    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/d;->f(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)V

    return-void
.end method

.method private final o(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
    .locals 10

    const-string v0, "TtsSynchronizer"

    const-string v1, "synthesizeToUri"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d()Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object v7

    .line 3
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->a()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/q;->b:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pcm/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".pcm.t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->m:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const-string v2, "voiceTask.speaker"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->a(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/d;->a:Lcn/mucang/android/jiakaoyi/framework/tts/d;

    .line 11
    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "voiceTask.finalPlayText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v2, "pcmFileTmp.absolutePath"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$c;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 14
    invoke-virtual {v0, v1, v8, v9}, Lcn/mucang/android/jiakaoyi/framework/tts/d;->h(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)V

    return-void
.end method


# virtual methods
.method public final m(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lcn/mucang/android/jiakaoyi/framework/tts/play/e;)V
    .locals 7

    const-string v0, "voiceTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TtsSynchronizer\u5f00\u59cb:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsSynchronizer"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 3
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->f(Lcn/mucang/android/jiakaoyi/framework/tts/play/e;)V

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->d:Lkotlinx/coroutines/i0;

    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$start$1;

    const/4 p1, 0x0

    invoke-direct {v4, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$start$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 8

    const-string v0, "voiceTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TtsSynchronizer\u505c\u6b62:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsSynchronizer"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->d:Lkotlinx/coroutines/i0;

    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
