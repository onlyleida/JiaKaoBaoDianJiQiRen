.class Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/BluetoothHeadsetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "BluetoothHeadsetUtils"

    if-eqz v0, :cond_2

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " State = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    const-string p1, "Headset connected"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$000(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$200(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$500(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p2}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$300(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$400(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_4

    const-string p1, "Headset disconnected"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$000(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$100(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_3

    const-string p1, "Headset audio connected"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1, v2}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$602(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;Z)Z

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$700(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$700(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;->onBlueTooth(Z)V

    goto :goto_0

    :cond_3
    if-ne p2, p1, :cond_4

    const-string p1, "Headset audio disconnected"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1, v3}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$602(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;Z)Z

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$700(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$700(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;->onBlueTooth(Z)V

    :cond_4
    :goto_0
    return-void
.end method
