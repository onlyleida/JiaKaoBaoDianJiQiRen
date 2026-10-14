.class public final Lcn/mucang/sundial/library/GlobalEventListeners;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcn/mucang/sundial/library/GlobalEventListeners;",
        "",
        "Lkotlin/v;",
        "register",
        "()V",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/GlobalEventListeners;

    invoke-direct {v0}, Lcn/mucang/sundial/library/GlobalEventListeners;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/GlobalEventListeners;->INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final register()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/PowerOffEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v1

    .line 2
    new-instance v2, Landroidx/lifecycle/i0$b;

    sget-object v3, Lcn/mucang/sundial/library/GlobalEventListeners$register$1;->INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$1;

    invoke-direct {v2, v1, v3}, Landroidx/lifecycle/i0$b;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/i0;->p(Landroidx/lifecycle/i0$b;)V

    .line 3
    const-class v1, Lcn/mucang/sundial/android/eventbus/event/UpdateEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v1

    .line 4
    new-instance v2, Landroidx/lifecycle/i0$b;

    sget-object v3, Lcn/mucang/sundial/library/GlobalEventListeners$register$2;->INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$2;

    invoke-direct {v2, v1, v3}, Landroidx/lifecycle/i0$b;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/i0;->p(Landroidx/lifecycle/i0$b;)V

    .line 5
    const-class v1, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v1

    .line 6
    new-instance v2, Landroidx/lifecycle/i0$b;

    sget-object v3, Lcn/mucang/sundial/library/GlobalEventListeners$register$3;->INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$3;

    invoke-direct {v2, v1, v3}, Landroidx/lifecycle/i0$b;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/i0;->p(Landroidx/lifecycle/i0$b;)V

    .line 7
    const-class v1, Lcn/mucang/sundial/android/eventbus/event/AutoTakePhotoEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    .line 8
    new-instance v1, Landroidx/lifecycle/i0$b;

    sget-object v2, Lcn/mucang/sundial/library/GlobalEventListeners$register$4;->INSTANCE:Lcn/mucang/sundial/library/GlobalEventListeners$register$4;

    invoke-direct {v1, v0, v2}, Landroidx/lifecycle/i0$b;-><init>(Landroidx/lifecycle/i0;Landroidx/lifecycle/a0;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i0;->p(Landroidx/lifecycle/i0$b;)V

    return-void
.end method
