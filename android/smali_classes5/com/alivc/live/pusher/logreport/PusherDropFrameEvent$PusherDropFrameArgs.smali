.class public Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PusherDropFrameArgs"
.end annotation


# instance fields
.field public apiubad:I

.field public apiubbd:I

.field public vpiubad:I

.field public vpiubbd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;->vpiubbd:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;->vpiubad:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;->apiubbd:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherDropFrameEvent$PusherDropFrameArgs;->apiubad:I

    return-void
.end method
