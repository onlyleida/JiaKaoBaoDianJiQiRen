.class public Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/logreport/PusherStartPushEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Args"
.end annotation


# instance fields
.field public ao:Z

.field public asr:I

.field public autMs:J

.field public bbe:I

.field public bbu:I

.field public bcp:I

.field public br:I

.field public bsf:I

.field public btf:I

.field public bw:I

.field public cri:I

.field public crmc:I

.field public ct:I

.field public flash:Z

.field public fps:I

.field public gop:I

.field public he:Z

.field public ivb:I

.field public mavb:I

.field public mivb:I

.field public po:I

.field public prm:Z

.field public pum:Z

.field public resolution:Ljava/lang/String;

.field public st:Ljava/lang/String;

.field public sync:Z

.field public utm:I

.field public vo:Z

.field public vutMs:J

.field public wc:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->sync:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->autMs:J

    iput-wide v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->vutMs:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->resolution:Ljava/lang/String;

    const-string v1, "dual"

    iput-object v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->st:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->ao:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->vo:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->he:Z

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->wc:I

    iput-boolean v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->pum:Z

    const/16 v1, 0x14

    iput v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->fps:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->ivb:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->mavb:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->mivb:I

    const/16 v1, 0x7d00

    iput v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->asr:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->po:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->ct:I

    const/16 v1, 0x46

    iput v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->bw:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->bbu:I

    iput v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->br:I

    iput v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->btf:I

    const/16 v1, 0x32

    iput v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->bsf:I

    const/16 v1, 0x1e

    iput v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->bbe:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->bcp:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->flash:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->crmc:I

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->cri:I

    iput-boolean v1, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->prm:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->gop:I

    iput v2, p0, Lcom/alivc/live/pusher/logreport/PusherStartPushEvent$Args;->utm:I

    return-void
.end method
