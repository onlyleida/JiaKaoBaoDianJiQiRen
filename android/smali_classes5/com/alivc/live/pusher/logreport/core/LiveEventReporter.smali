.class public Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$BaseParamGetCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLivePusher:Lcom/alivc/live/pusher/AlivcLivePusher;

.field private mPushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

.field private mPushId:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alivc/live/pusher/AlivcLivePusher;Lcom/alivc/live/pusher/AlivcLivePushConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mPushId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mLivePusher:Lcom/alivc/live/pusher/AlivcLivePusher;

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mPushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    iput-object p1, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mLivePusher:Lcom/alivc/live/pusher/AlivcLivePusher;

    iput-object p3, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mPushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mSessionId:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mPushId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Lcom/alivc/live/pusher/AlivcLivePusher;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mLivePusher:Lcom/alivc/live/pusher/AlivcLivePusher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Lcom/alivc/live/pusher/AlivcLivePushConfig;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mPushConfig:Lcom/alivc/live/pusher/AlivcLivePushConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mPushId:Ljava/lang/String;

    return-object p0
.end method

.method private sendAsync(Lcom/alivc/live/pusher/logreport/core/LogParams;)V
    .locals 2

    invoke-virtual {p1}, Lcom/alivc/live/pusher/logreport/core/LogParams;->getLogPublicParams()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$2;

    invoke-direct {v1, p0, p1}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$2;-><init>(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public refreshPushId()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mPushId:Ljava/lang/String;

    return-void
.end method

.method public sendEvent(Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/alivc/live/pusher/logreport/core/LogParams;

    iget-object v1, p0, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter$1;-><init>(Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/pusher/logreport/core/LogParams;-><init>(Landroid/content/Context;Lcom/alivc/live/pusher/logreport/core/LogParams$OnParamGetCallback;)V

    invoke-direct {p0, v0}, Lcom/alivc/live/pusher/logreport/core/LiveEventReporter;->sendAsync(Lcom/alivc/live/pusher/logreport/core/LogParams;)V

    return-void
.end method
