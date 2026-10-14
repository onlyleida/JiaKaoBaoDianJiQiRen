.class public final Lcn/mucang/android/core/utils/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u0004J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0011H\u0007J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0018H\u0007J\u0012\u0010\u0019\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u000cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\t\u001a*\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0004\u0012\u00020\u000c0\nj\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0004\u0012\u00020\u000c`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/core/utils/MultiProcessBroadcastManager;",
        "",
        "()V",
        "KEY_PACKAGE_NAME",
        "",
        "KEY_PID",
        "localBroadcastManager",
        "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
        "kotlin.jvm.PlatformType",
        "receiverMap",
        "Ljava/util/HashMap;",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/BroadcastReceiver;",
        "Lkotlin/collections/HashMap;",
        "makePermission",
        "regGlobalReceiver",
        "filter",
        "Landroid/content/IntentFilter;",
        "registerReceiver",
        "",
        "receiver",
        "sendBroadcast",
        "",
        "intent",
        "Landroid/content/Intent;",
        "unregisterReceiver",
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
.field public static final a:Lcn/mucang/android/core/utils/w;

.field private static final b:Landroidx/localbroadcastmanager/a/a;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/utils/w;

    invoke-direct {v0}, Lcn/mucang/android/core/utils/w;-><init>()V

    sput-object v0, Lcn/mucang/android/core/utils/w;->a:Lcn/mucang/android/core/utils/w;

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->q()Landroidx/localbroadcastmanager/a/a;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/utils/w;->b:Landroidx/localbroadcastmanager/a/a;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/core/utils/w;->c:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroidx/localbroadcastmanager/a/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/w;->b:Landroidx/localbroadcastmanager/a/a;

    return-object v0
.end method

.method private final c(Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/core/utils/w$a;

    invoke-direct {v0}, Lcn/mucang/android/core/utils/w$a;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/android/core/utils/w;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-object v0
.end method

.method public static final d(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2

    const-string v0, "receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/w;->b:Landroidx/localbroadcastmanager/a/a;

    invoke-virtual {v0, p0, p1}, Landroidx/localbroadcastmanager/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2
    sget-object v0, Lcn/mucang/android/core/utils/w;->a:Lcn/mucang/android/core/utils/w;

    invoke-direct {v0, p1}, Lcn/mucang/android/core/utils/w;->c(Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    .line 3
    sget-object v0, Lcn/mucang/android/core/utils/w;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final e(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/w;->b:Landroidx/localbroadcastmanager/a/a;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/a/a;->d(Landroid/content/Intent;)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 3
    sget-object v1, Lcn/mucang/android/core/utils/w;->a:Lcn/mucang/android/core/utils/w;

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v2

    const-string v3, "__mc_core_app_broad_cast_pid__"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__mc_core_app_broad_cast_package_name__"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/core/utils/w;->b()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v2, p0, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return v0
.end method

.method public static final f(Landroid/content/BroadcastReceiver;)V
    .locals 3

    const-string v0, "receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/w;->b:Landroidx/localbroadcastmanager/a/a;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 2
    sget-object v0, Lcn/mucang/android/core/utils/w;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "it.next()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "item.value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".app.broadcast.permission"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
