.class public final Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0011J\u0008\u0010\u0015\u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\"\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;",
        "",
        "()V",
        "isInit",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<set-?>",
        "Lcn/mucang/jiakaoyi/sundial/service/SundialSpeaker;",
        "speaker",
        "getSpeaker",
        "()Lcn/mucang/jiakaoyi/sundial/service/SundialSpeaker;",
        "Lcn/mucang/jiakaoyi/sundial/service/JkySundialDevice;",
        "sundialDevice",
        "getSundialDevice",
        "()Lcn/mucang/jiakaoyi/sundial/service/JkySundialDevice;",
        "destroy",
        "",
        "init",
        "isStart",
        "start",
        "timerSend",
        "sundial_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lkotlinx/coroutines/i0;

.field private b:Z

.field private c:Lcn/mucang/jiakaoyi/sundial/service/c;

.field private d:Lcn/mucang/jiakaoyi/sundial/service/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->a:Lkotlinx/coroutines/i0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService$timerSend$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService$timerSend$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/library/util/ActivityUtil;->finishAll()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->a:Lkotlinx/coroutines/i0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/j0;->d(Lkotlinx/coroutines/i0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :goto_0
    iput-object v1, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->a:Lkotlinx/coroutines/i0;

    const-string v0, "SundialLog"

    const-string v1, "Service:\u8ba1\u65f6\u5668\u670d\u52a1\u9500\u6bc1"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcn/mucang/jiakaoyi/sundial/service/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->c:Lcn/mucang/jiakaoyi/sundial/service/c;

    return-object v0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->b:Z

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/p2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/w;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->a:Lkotlinx/coroutines/i0;

    .line 4
    new-instance v1, Lcn/mucang/jiakaoyi/sundial/service/c;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/sundial/service/c;-><init>()V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->c:Lcn/mucang/jiakaoyi/sundial/service/c;

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/sundial/service/d;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/sundial/service/d;-><init>()V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->d:Lcn/mucang/jiakaoyi/sundial/service/d;

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->c:Lcn/mucang/jiakaoyi/sundial/service/c;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v3, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->d:Lcn/mucang/jiakaoyi/sundial/service/d;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v1, v2, v3, v0}, Lcn/mucang/sundial/library/Sundial;->init(Landroid/app/Application;Lcn/mucang/sundial/library/device/SundialDevice;Lcn/mucang/sundial/library/tts/Speaker;Z)V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->b:Z

    return v0
.end method

.method public final e()V
    .locals 2

    const-string v0, "SundialLog"

    const-string v1, "Service:\u8ba1\u65f6\u5668\u670d\u52a1\u542f\u52a8\u6210\u529f"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->c()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->f()V

    return-void
.end method
