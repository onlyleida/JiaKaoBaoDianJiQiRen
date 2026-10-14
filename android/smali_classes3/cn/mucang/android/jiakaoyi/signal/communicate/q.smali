.class public final Lcn/mucang/android/jiakaoyi/signal/communicate/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B[\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\u0006\u0010\u0018\u001a\u00020\u000cJ\u0015\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u001aJ\u0008\u0010\u001b\u001a\u00020\u000cH\u0007J\u0008\u0010\u001c\u001a\u00020\u000cH\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/communicate/MessageSender;",
        "T",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveDataNeedCheck;",
        "",
        "clazz",
        "Ljava/lang/Class;",
        "retryTime",
        "",
        "retryDuration",
        "",
        "task",
        "Lkotlin/Function0;",
        "",
        "onTimeout",
        "onResponse",
        "Lkotlin/Function1;",
        "(Ljava/lang/Class;IJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "handler",
        "Landroid/os/Handler;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "retryCount",
        "runnable",
        "Ljava/lang/Runnable;",
        "clear",
        "t",
        "(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveDataNeedCheck;)V",
        "send",
        "sendTask",
        "signal_release"
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
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:J

.field private final d:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "TT;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private volatile h:I

.field private final i:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;IJ",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-TT;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a:Ljava/lang/Class;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->b:I

    .line 4
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->c:J

    .line 5
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->d:Lkotlin/jvm/b/a;

    .line 6
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->e:Lkotlin/jvm/b/a;

    .line 7
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->f:Lkotlin/jvm/b/l;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->g:Landroid/os/Handler;

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/communicate/m;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/m;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/q;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i:Landroidx/lifecycle/a0;

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/communicate/l;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/l;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/q;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V
    .locals 9

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    const/16 v3, 0xa

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    move-wide v4, v0

    goto :goto_1

    :cond_1
    move-wide v4, p3

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    move-object v7, p6

    .line 11
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->f(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/signal/communicate/q;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->h(Lcn/mucang/android/jiakaoyi/signal/communicate/q;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/signal/communicate/q;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->e(Lcn/mucang/android/jiakaoyi/signal/communicate/q;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V

    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/signal/communicate/q;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->g(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/communicate/k;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/k;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V

    invoke-static {p0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;->type:I

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u5e95\u5c42\u56de\u5e94:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final g(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->f:Lkotlin/jvm/b/l;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/signal/communicate/q;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->h:I

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->h:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->b:I

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->e:Lkotlin/jvm/b/a;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u7b49\u5f85\u5e95\u5c42\u54cd\u5e94\u8d85\u65f6\uff0c\u54cd\u5e94\u6570\u636e\u7c7b\u578b\u662f:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->j()V

    :goto_0
    return-void
.end method

.method private final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->d:Lkotlin/jvm/b/a;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->j:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->j()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a:Ljava/lang/Class;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a:Ljava/lang/Class;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7ed9\u5e95\u5c42\u53d1\u9001\u6307\u4ee4\uff0c\u54cd\u5e94\u6570\u636e\u7c7b\u578b\u662f:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
