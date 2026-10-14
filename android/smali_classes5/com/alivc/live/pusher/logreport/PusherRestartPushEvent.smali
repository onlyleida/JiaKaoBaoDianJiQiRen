.class public Lcom/alivc/live/pusher/logreport/PusherRestartPushEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

.field public static kTopicValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->action:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sput-object v0, Lcom/alivc/live/pusher/logreport/PusherRestartPushEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    const-string v0, "restartPush"

    sput-object v0, Lcom/alivc/live/pusher/logreport/PusherRestartPushEvent;->kTopicValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent;->getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
