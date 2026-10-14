.class public final Lcn/mucang/android/core/utils/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000[\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dH\u0007J0\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\n\u0010 \u001a\u00060!j\u0002`\"H\u0002J\u0008\u0010#\u001a\u00020\u0016H\u0003J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010%\u001a\u00020&H\u0007J\u0010\u0010\'\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/android/core/utils/RpcSupport;",
        "",
        "()V",
        "KEY_ACTION",
        "",
        "KEY_DIRECT_EXECUTED",
        "KEY_DIRECT_EXECUTED_RESULT",
        "KEY_HANDLED",
        "KEY_PENDING_EXECUTED_NAME",
        "KEY_PENDING_EXECUTED_RESULT",
        "KEY_RPC_FROM_PID",
        "KEY_RPC_KEY",
        "TAG",
        "actionMap",
        "Ljava/util/HashMap;",
        "Lcn/mucang/android/core/utils/RpcRegInfo;",
        "init",
        "",
        "queryBroadcastReceiver",
        "cn/mucang/android/core/utils/RpcSupport$queryBroadcastReceiver$1",
        "Lcn/mucang/android/core/utils/RpcSupport$queryBroadcastReceiver$1;",
        "callRpcAction",
        "",
        "key",
        "params",
        "Landroid/os/Bundle;",
        "callback",
        "Lcn/mucang/android/core/utils/RpcActionCallback;",
        "callbackTimeOutMs",
        "",
        "handleExecutedResult",
        "directCalledResultBundle",
        "timeOutStack",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "initIfNeed",
        "registerRpcAction",
        "action",
        "Lcn/mucang/android/core/utils/RpcAction;",
        "unregisterRpcAction",
        "core-lib_release"
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
.field public static final a:Lcn/mucang/android/core/utils/h0;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/core/utils/g0;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z

.field private static final d:Lcn/mucang/android/core/utils/h0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/utils/h0;

    invoke-direct {v0}, Lcn/mucang/android/core/utils/h0;-><init>()V

    sput-object v0, Lcn/mucang/android/core/utils/h0;->a:Lcn/mucang/android/core/utils/h0;

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/core/utils/h0;->b:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lcn/mucang/android/core/utils/h0$c;

    invoke-direct {v0}, Lcn/mucang/android/core/utils/h0$c;-><init>()V

    sput-object v0, Lcn/mucang/android/core/utils/h0;->d:Lcn/mucang/android/core/utils/h0$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/h0;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic b(Lcn/mucang/android/core/utils/h0;Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;JLjava/lang/RuntimeException;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/mucang/android/core/utils/h0;->e(Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;JLjava/lang/RuntimeException;)V

    return-void
.end method

.method public static final c(Ljava/lang/String;Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;J)V
    .locals 10

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/h0;->g()V

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "executeRpcTimeOutStack"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/content/Intent;

    const-string v1, "__rpc_support_action__"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "__rpc_support_rpc_key__"

    .line 5
    invoke-virtual {v3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result p0

    const-string v1, "__rpc_support_rpc_from_pid__"

    invoke-virtual {v3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    :goto_0
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    sget-object p0, Lcn/mucang/android/core/utils/w;->a:Lcn/mucang/android/core/utils/w;

    invoke-virtual {p0}, Lcn/mucang/android/core/utils/w;->b()Ljava/lang/String;

    move-result-object v4

    .line 10
    new-instance v5, Lcn/mucang/android/core/utils/h0$a;

    invoke-direct {v5, p2, p3, p4, v0}, Lcn/mucang/android/core/utils/h0$a;-><init>(Lcn/mucang/android/core/utils/f0;JLjava/lang/RuntimeException;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 11
    invoke-virtual/range {v2 .. v9}, Landroid/app/Application;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x2710

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcn/mucang/android/core/utils/h0;->c(Ljava/lang/String;Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;J)V

    return-void
.end method

.method private final e(Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;JLjava/lang/RuntimeException;)V
    .locals 5

    const-string v0, "__rpc_support_handled__"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "EMPTY"

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, v1}, Lcn/mucang/android/core/utils/f0;->a(Landroid/os/Bundle;Z)V

    goto/16 :goto_4

    :cond_1
    const-string v0, "__rpc_support_direct_executed__"

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "__rpc_support_direct_executed_result__"

    .line 4
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "rpcSupport"

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p2, p1, v3}, Lcn/mucang/android/core/utils/f0;->a(Landroid/os/Bundle;Z)V

    .line 6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x5b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]receive direct callback with result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v4, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    const-string v3, "__rpc_support_direct_pending_execute_name__"

    .line 8
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    invoke-static {p1}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, v1}, Lcn/mucang/android/core/utils/f0;->a(Landroid/os/Bundle;Z)V

    :goto_3
    const-string p1, "FATAL error found:received pending execution without name"

    .line 11
    invoke-static {v4, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 12
    :cond_7
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 13
    new-instance v1, Lcn/mucang/android/core/utils/h0$b;

    invoke-direct {v1, v0, p2}, Lcn/mucang/android/core/utils/h0$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/core/utils/f0;)V

    .line 14
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    .line 15
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v1, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    new-instance p1, Lcn/mucang/android/core/utils/c;

    invoke-direct {p1, v1, p2, p5}, Lcn/mucang/android/core/utils/c;-><init>(Lcn/mucang/android/core/utils/h0$b;Lcn/mucang/android/core/utils/f0;Ljava/lang/RuntimeException;)V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1, p3, p4}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :goto_4
    return-void
.end method

.method private static final f(Lcn/mucang/android/core/utils/h0$b;Lcn/mucang/android/core/utils/f0;Ljava/lang/RuntimeException;)V
    .locals 1

    const-string v0, "$pendingReceiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$timeOutStack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v0, "EMPTY"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcn/mucang/android/core/utils/f0;->a(Landroid/os/Bundle;Z)V

    .line 3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p1, 0x5b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]FATAL pending callback timeout,checkout stack for detail."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "rpcSupport"

    .line 5
    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final declared-synchronized g()V
    .locals 6

    const-class v0, Lcn/mucang/android/core/utils/h0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcn/mucang/android/core/utils/h0;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    .line 4
    sget-object v2, Lcn/mucang/android/core/utils/h0;->d:Lcn/mucang/android/core/utils/h0$c;

    .line 5
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "__rpc_support_action__"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v4, Lcn/mucang/android/core/utils/w;->a:Lcn/mucang/android/core/utils/w;

    invoke-virtual {v4}, Lcn/mucang/android/core/utils/w;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 8
    sput-boolean v1, Lcn/mucang/android/core/utils/h0;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic h(Lcn/mucang/android/core/utils/h0$b;Lcn/mucang/android/core/utils/f0;Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/h0;->f(Lcn/mucang/android/core/utils/h0$b;Lcn/mucang/android/core/utils/f0;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Lcn/mucang/android/core/utils/e0;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/h0;->g()V

    .line 2
    sget-object v0, Lcn/mucang/android/core/utils/h0;->b:Ljava/util/HashMap;

    new-instance v1, Lcn/mucang/android/core/utils/g0;

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcn/mucang/android/core/utils/g0;-><init>(ILcn/mucang/android/core/utils/e0;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
