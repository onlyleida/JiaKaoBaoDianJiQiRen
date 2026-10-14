.class public Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Args"
.end annotation


# instance fields
.field public isFrontCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/PusherSwitchCameraEvent$Args;->isFrontCamera:Z

    return-void
.end method
