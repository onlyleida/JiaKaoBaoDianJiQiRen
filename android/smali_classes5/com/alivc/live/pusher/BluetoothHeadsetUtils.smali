.class public Lcom/alivc/live/pusher/BluetoothHeadsetUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothHeadsetUtils"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlueToothListener:Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mContext:Landroid/content/Context;

.field private mHeadsetBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mIsOnHeadsetSco:Z

.field private mIsStarted:Z

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mIsOnHeadsetSco:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mIsStarted:Z

    iput-boolean v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBlueToothListener:Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

    new-instance v0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$1;

    invoke-direct {v0, p0}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$1;-><init>(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)V

    iput-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;

    invoke-direct {v0, p0}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$2;-><init>(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)V

    iput-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mHeadsetBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$002(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->stopBluetoothSco()V

    return-void
.end method

.method static synthetic access$200(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->startBluetoothSco()V

    return-void
.end method

.method static synthetic access$300(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$602(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mIsOnHeadsetSco:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alivc/live/pusher/BluetoothHeadsetUtils;)Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;
    .locals 0

    iget-object p0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBlueToothListener:Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

    return-object p0
.end method

.method private startBluetoothSco()V
    .locals 2

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBlueToothListener:Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;->onBlueTooth(Z)V

    :cond_0
    return-void
.end method

.method private stopBluetoothSco()V
    .locals 2

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBlueToothListener:Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;->onBlueTooth(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isOnHeadsetSco()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mIsOnHeadsetSco:Z

    return v0
.end method

.method public start(Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;)V
    .locals 3

    iput-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBlueToothListener:Lcom/alivc/live/pusher/BluetoothHeadsetUtils$BlueToothListener;

    iget-boolean p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mIsStarted:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mHeadsetBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mHeadsetBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mRegistered:Z

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_2
    iput-boolean p1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mIsStarted:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    iget-boolean v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mIsStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    :cond_1
    iget-boolean v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mHeadsetBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Bluetooth"

    const-string v2, "unregisterReceiver exception"

    invoke-static {v0, v2}, Lcom/alivc/live/pusher/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-boolean v1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mRegistered:Z

    :cond_2
    iput-boolean v1, p0, Lcom/alivc/live/pusher/BluetoothHeadsetUtils;->mIsStarted:Z

    return-void
.end method
