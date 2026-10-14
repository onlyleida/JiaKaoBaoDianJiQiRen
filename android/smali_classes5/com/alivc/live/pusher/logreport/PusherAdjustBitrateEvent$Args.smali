.class public Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Args"
.end annotation


# instance fields
.field public ceb:I

.field public cub:I

.field public neb:I

.field public oeb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;->oeb:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;->neb:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;->ceb:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherAdjustBitrateEvent$Args;->cub:I

    return-void
.end method
