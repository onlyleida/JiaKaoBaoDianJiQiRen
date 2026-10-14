.class Lcom/alivc/live/pusher/AlivcLivePusher$8$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/pusher/AlivcLivePusher$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alivc/live/pusher/AlivcLivePusher$8;


# direct methods
.method constructor <init>(Lcom/alivc/live/pusher/AlivcLivePusher$8;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/AlivcLivePusher$8$1;->this$1:Lcom/alivc/live/pusher/AlivcLivePusher$8;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const-string p2, "AlivcLivePusher"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "PHONE: CALL_STATE_OFFHOOK"

    invoke-static {p2, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_1
    const-string p1, "PHONE: CALL_STATE_RINGING"

    invoke-static {p2, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    if-eqz p1, :cond_3

    :goto_0
    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alivc/live/pusher/LivePusherJNI;->setMute(Z)I

    goto :goto_1

    :cond_2
    const-string p1, "PHONE: CALL_STATE_IDLE"

    invoke-static {p2, p1}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/alivc/live/pusher/AlivcLivePusher;->access$500()Lcom/alivc/live/pusher/LivePusherJNI;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alivc/live/pusher/LivePusherJNI;->setMute(Z)I

    :cond_3
    :goto_1
    return-void
.end method
