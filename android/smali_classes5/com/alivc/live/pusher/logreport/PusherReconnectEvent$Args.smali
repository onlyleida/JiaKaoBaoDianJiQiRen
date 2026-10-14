.class public Lcom/alivc/live/pusher/logreport/PusherReconnectEvent$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/PusherReconnectEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Args"
.end annotation


# instance fields
.field public autMs:J

.field public vutMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/live/pusher/logreport/PusherReconnectEvent$Args;->autMs:J

    iput-wide v0, p0, Lcom/alivc/live/pusher/logreport/PusherReconnectEvent$Args;->vutMs:J

    return-void
.end method
