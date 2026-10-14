.class public Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Args"
.end annotation


# instance fields
.field public captureDelay:I

.field public encoderDelay:I

.field public sendDelay:I

.field public totalDelay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;->totalDelay:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;->captureDelay:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;->encoderDelay:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherDelayInfoEvent$Args;->sendDelay:I

    return-void
.end method
