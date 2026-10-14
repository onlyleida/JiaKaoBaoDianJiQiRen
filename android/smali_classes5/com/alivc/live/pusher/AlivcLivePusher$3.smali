.class Lcom/alivc/live/pusher/AlivcLivePusher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alivc/live/pusher/AlivcLivePusher;->init(Landroid/content/Context;Lcom/alivc/live/pusher/AlivcLivePushConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/live/pusher/AlivcLivePusher;


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$3;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlueTooth(Z)V
    .locals 2

    sput-boolean p1, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$3;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$700(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/alivc/live/pusher/AlivcLivePusher$3;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$700(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :goto_0
    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alivc/live/pusher/LivePusherJNI;->setHeadSet(Z)V

    :cond_1
    return-void
.end method
