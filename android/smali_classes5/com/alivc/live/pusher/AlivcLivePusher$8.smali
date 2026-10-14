.class Lcom/alivc/live/pusher/AlivcLivePusher$8;
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
.field stateListener:Landroid/telephony/PhoneStateListener;

.field final synthetic this$0:Lcom/alivc/live/pusher/AlivcLivePusher;


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$8;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Lcom/alivc/live/pusher/AlivcLivePusher$8$1;

    invoke-direct {p1, p0}, Lcom/alivc/live/pusher/AlivcLivePusher$8$1;-><init>(Lcom/alivc/live/pusher/AlivcLivePusher$8;)V

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$8;->stateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher$8;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p2}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2600(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher$8;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p2, p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2602(Lcom/alivc/live/pusher/AlivcLivePusher;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    iget-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$8;->this$0:Lcom/alivc/live/pusher/AlivcLivePusher;

    invoke-static {p1}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$2600(Lcom/alivc/live/pusher/AlivcLivePusher;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object p2, p0, Lcom/alivc/live/pusher/AlivcLivePusher$8;->stateListener:Landroid/telephony/PhoneStateListener;

    const/16 v0, 0x20

    invoke-virtual {p1, p2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    :goto_0
    return-void
.end method
