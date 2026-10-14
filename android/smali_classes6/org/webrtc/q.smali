.class public final synthetic Lorg/webrtc/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# instance fields
.field public final synthetic a:Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/q;->a:Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    return-void
.end method


# virtual methods
.method public final onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/q;->a:Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-virtual {v0, p1}, Lorg/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->b(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
