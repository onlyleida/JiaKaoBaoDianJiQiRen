.class public Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/PacketResponseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObserveRequest"
.end annotation


# instance fields
.field private final packetResult:Landroid/util/SparseBooleanArray;

.field private final packets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requestResultListener:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

.field final timeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->packetResult:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->packets:Ljava/util/Set;

    .line 4
    new-instance v0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest$1;-><init>(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->timeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->requestResultListener:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

    invoke-interface {v0, p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;->onResult(Z)V

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->getPackets()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->requestResultListener:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->onPacketResponse(IZ)V

    return-void
.end method

.method private getPackets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->packets:Ljava/util/Set;

    return-object v0
.end method

.method private judgeState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->packetResult:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->packets:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->packetResult:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->packetResult:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    and-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->requestResultListener:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcn/mucang/sundial/android/tcp/b;

    invoke-direct {v0, p0, v1}, Lcn/mucang/sundial/android/tcp/b;-><init>(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;Z)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    .line 7
    :cond_2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->getInstance()Lcn/mucang/sundial/android/tcp/PacketResponseObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->stopObserve(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)V

    return-void
.end method

.method private onPacketResponse(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->packetResult:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->judgeState()V

    return-void
.end method


# virtual methods
.method public synthetic b(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->a(Z)V

    return-void
.end method

.method public observe()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->getInstance()Lcn/mucang/sundial/android/tcp/PacketResponseObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver;->observe(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;)V

    return-void
.end method

.method public observePacket(I)Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->packets:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setRequestResultListener(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->requestResultListener:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

    return-object p0
.end method
