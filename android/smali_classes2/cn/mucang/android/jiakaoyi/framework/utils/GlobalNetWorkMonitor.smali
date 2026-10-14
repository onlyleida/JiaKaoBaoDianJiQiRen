.class public final Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0007J\u0012\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;",
        "",
        "()V",
        "connect",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "context",
        "Landroid/app/Application;",
        "kotlin.jvm.PlatformType",
        "listeners",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$NetWorkChangeListener;",
        "addListener",
        "",
        "listener",
        "removeListener",
        "NetWorkChangeListener",
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
.field private static final a:Landroid/app/Application;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/flow/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->a:Landroid/app/Application;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->b:Ljava/util/List;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$connect$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$connect$1;-><init>(Lkotlin/coroutines/c;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/f;->d(Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/c;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->c:Lkotlinx/coroutines/flow/c;

    .line 4
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$1;

    invoke-direct {v5, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/flow/c;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->c:Lkotlinx/coroutines/flow/c;

    return-object v0
.end method

.method public static final synthetic b()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->a:Landroid/app/Application;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->b:Ljava/util/List;

    return-object v0
.end method

.method public static final d(Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final e(Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor$a;)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/GlobalNetWorkMonitor;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    return-void
.end method
