.class Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/base/amap/mapcore/maploader/NetworkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;->reference:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;->reference:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$MyBroadcastReceiver;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;

    invoke-interface {p2, p1}, Lcom/autonavi/base/amap/mapcore/maploader/NetworkState$NetworkChangeListener;->networkStateChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
