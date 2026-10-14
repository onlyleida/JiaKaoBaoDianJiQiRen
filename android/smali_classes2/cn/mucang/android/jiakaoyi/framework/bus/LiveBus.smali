.class public final Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u000b\u001a\u0012\u0012\u0002\u0008\u0003 \u000c*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00060\u0006\"\u0004\u0008\u0000\u0010\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0007J\"\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0006\"\u0004\u0008\u0000\u0010\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0005H\u0007R/\u0010\u0003\u001a\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;",
        "",
        "()V",
        "busMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Ljava/lang/Class;",
        "Landroidx/lifecycle/BusLiveData;",
        "getBusMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "busMap$delegate",
        "Lkotlin/Lazy;",
        "bus",
        "kotlin.jvm.PlatformType",
        "T",
        "clazz",
        "post",
        "",
        "event",
        "with",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;

.field private static final b:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->a:Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus$busMap$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus$busMap$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->b:Lkotlin/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Class;)Landroidx/lifecycle/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroidx/lifecycle/c<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroidx/lifecycle/c;

    invoke-direct {v1}, Landroidx/lifecycle/c;-><init>()V

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    .line 5
    :cond_1
    :goto_0
    check-cast v1, Landroidx/lifecycle/c;

    return-object v1
.end method

.method private final b()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/lifecycle/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final c(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public static final d(Ljava/lang/Class;)Landroidx/lifecycle/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroidx/lifecycle/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->a:Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->a(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.lifecycle.BusLiveData<T of cn.mucang.android.jiakaoyi.framework.bus.LiveBus.with>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method
