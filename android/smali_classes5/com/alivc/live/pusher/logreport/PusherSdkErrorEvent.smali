.class public Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;
    }
.end annotation


# static fields
.field public static kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

.field public static kTopicValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->error:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sput-object v0, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    const-string v0, "sdkError"

    sput-object v0, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent;->kTopicValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArgsStr(Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;->error_code:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;->error_msg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_msg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;->totalUploadSize:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalUploadSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/alivc/live/pusher/logreport/PusherSdkErrorEvent$Args;->totalTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "totalTime"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
