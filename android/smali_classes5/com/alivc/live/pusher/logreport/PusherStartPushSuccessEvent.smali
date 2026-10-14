.class public Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent$Args;
    }
.end annotation


# static fields
.field public static kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

.field public static kTopicValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->event:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sput-object v0, Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    const-string v0, "startPushSuccess"

    sput-object v0, Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent;->kTopicValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent$Args;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent$Args;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushSuccessEvent$Args;->url:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
