.class Lcom/alivc/live/pusher/AlivcLivePusher$7;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/AlivcLivePusher;
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

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$7;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BluetoothHeadsetUtils"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string p1, "ACTION_AUDIO_BECOMING_NOISY headset out"

    invoke-static {v1, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$7;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$700(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setMode(I)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$7;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$700(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    sput-boolean v3, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "headset out"

    invoke-static {v1, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$7;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$700(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setMode(I)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$7;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$700(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    sget-boolean p1, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    if-eqz p1, :cond_2

    sput-boolean v3, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/alivc/live/pusher/LivePusherJNI;->setHeadSet(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2

    const-string p1, "headset in"

    invoke-static {v1, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$7;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$700(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    sput-boolean v2, Lcom/alivc/live/pusher/LivePusherJNI;->headSetOn:Z

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alivc/live/pusher/LivePusherJNI;->setHeadSet(Z)V

    :cond_2
    :goto_1
    return-void
.end method
