.class Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest$1;->this$0:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest$1;->this$0:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->access$100(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;->onTimeout()V

    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest$1;->a()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->getInstance()Lcn/mucang/sundial/android/tcp/PacketResponseObserver;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest$1;->this$0:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->stopObserve(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest$1;->this$0:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->access$100(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/sundial/android/tcp/a;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/android/tcp/a;-><init>(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest$1;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
