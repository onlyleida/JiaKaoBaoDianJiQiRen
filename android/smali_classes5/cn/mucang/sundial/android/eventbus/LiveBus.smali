.class public final Lcn/mucang/sundial/android/eventbus/LiveBus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcn/mucang/sundial/android/eventbus/LiveBus;",
        "",
        "<init>",
        "()V",
        "Companion",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

.field private static final busMap$delegate:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion$busMap$2;->INSTANCE:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion$busMap$2;

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    sput-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->busMap$delegate:Lkotlin/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBusMap$cp()Lkotlin/f;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->busMap$delegate:Lkotlin/f;

    return-object v0
.end method

.method private static final bus(Ljava/lang/Class;)Landroidx/lifecycle/i0;
    .locals 1
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

    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    invoke-static {v0, p0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->access$bus(Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object p0

    return-object p0
.end method

.method private static final getBusMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
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

    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    invoke-static {v0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->access$getBusMap$p(Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static final immediatelyPost(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    invoke-virtual {v0, p0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->immediatelyPost(Ljava/lang/Object;)V

    return-void
.end method

.method public static final post(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    invoke-virtual {v0, p0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static final with(Ljava/lang/Class;)Landroidx/lifecycle/i0;
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

    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    invoke-virtual {v0, p0}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object p0

    return-object p0
.end method
