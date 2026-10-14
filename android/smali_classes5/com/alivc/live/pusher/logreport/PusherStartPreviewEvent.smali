.class public Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;
    }
.end annotation


# static fields
.field public static kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

.field public static kTopicValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;->action:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    sput-object v0, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent;->kTopicType:Lcom/alivc/live/pusher/AlivcLivePushConstants$Topic;

    const-string v0, "startPreview"

    sput-object v0, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent;->kTopicValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArgsStr(Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean p0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPreviewEvent$Args;->sync:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "sync"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
