.class final Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/TimeoutManager$ITimeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil;->registerLoginLogoutTimeoutCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "onTimeout",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$4;

    invoke-direct {v0}, Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$4;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$4;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil$registerLoginLogoutTimeoutCallback$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeout()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    new-instance v1, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;

    invoke-direct {v1}, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->post(Ljava/lang/Object;)V

    return-void
.end method
