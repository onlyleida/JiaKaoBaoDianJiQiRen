.class public Lcom/alivc/live/pusher/logreport/PusherStopPushEvent$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/PusherStopPushEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Args"
.end annotation


# instance fields
.field public totalTime:J

.field public totalUploadSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/live/pusher/logreport/PusherStopPushEvent$Args;->totalUploadSize:J

    iput-wide v0, p0, Lcom/alivc/live/pusher/logreport/PusherStopPushEvent$Args;->totalTime:J

    return-void
.end method
