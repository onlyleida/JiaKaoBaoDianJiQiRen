.class public final Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/eventbus/LiveBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J3\u0010\u0007\u001a\u0012\u0012\u0002\u0008\u0003 \u0006*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00050\u0005\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J)\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0007\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\rR7\u0010\u0016\u001a\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u000f8B@\u0003X\u0083\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;",
        "",
        "T",
        "Ljava/lang/Class;",
        "clazz",
        "Landroidx/lifecycle/i0;",
        "kotlin.jvm.PlatformType",
        "bus",
        "(Ljava/lang/Class;)Landroidx/lifecycle/i0;",
        "with",
        "event",
        "Lkotlin/v;",
        "post",
        "(Ljava/lang/Object;)V",
        "immediatelyPost",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "busMap$delegate",
        "Lkotlin/f;",
        "getBusMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "getBusMap$annotations",
        "()V",
        "busMap",
        "<init>",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$bus(Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;Ljava/lang/Class;)Landroidx/lifecycle/i0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->bus(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBusMap$p(Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->getBusMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method private final bus(Ljava/lang/Class;)Landroidx/lifecycle/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroidx/lifecycle/i0<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->getBusMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroidx/lifecycle/i0;

    invoke-direct {v1}, Landroidx/lifecycle/i0;-><init>()V

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    .line 5
    :cond_1
    :goto_0
    check-cast v1, Landroidx/lifecycle/i0;

    return-object v1
.end method

.method private final getBusMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/lifecycle/i0<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Lcn/mucang/sundial/android/eventbus/LiveBus;->access$getBusMap$cp()Lkotlin/f;

    move-result-object v0

    sget-object v1, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static synthetic getBusMap$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final immediatelyPost(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public final post(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public final with(Ljava/lang/Class;)Landroidx/lifecycle/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroidx/lifecycle/i0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->bus(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.lifecycle.TtLiveData<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method
