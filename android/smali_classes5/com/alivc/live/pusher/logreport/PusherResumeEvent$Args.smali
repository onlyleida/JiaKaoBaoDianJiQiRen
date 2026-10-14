.class public Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/PusherResumeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Args"
.end annotation


# instance fields
.field public cost:J

.field public isResumeScreen:Z

.field public sync:Z

.field public totalTime:J

.field public totalUploadSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->sync:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->isResumeScreen:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->totalUploadSize:J

    iput-wide v0, p0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->totalTime:J

    iput-wide v0, p0, Lcom/alivc/live/pusher/logreport/PusherResumeEvent$Args;->cost:J

    return-void
.end method
