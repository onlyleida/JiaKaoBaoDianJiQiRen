.class Lcom/alivc/live/pusher/BluetoothHeadsetUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    iput-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$1;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "BluetoothHeadsetUtils"

    const-string v0, "Profile listener onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$1;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$002(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$1;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$000(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$1;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$200(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "BluetoothHeadsetUtils"

    const-string v0, "Profile listener onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$1;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$000(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$1;->this$0:Lcom/alivc/live/pusher/BluetoothHeadsetUtils;

    invoke-static {p1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->access$100(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)V

    :cond_0
    return-void
.end method
