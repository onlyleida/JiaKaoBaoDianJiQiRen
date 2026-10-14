.class Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$a;
.super Landroid/location/GnssStatus$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$a;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->a(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;Landroid/location/GnssStatus;)I

    move-result p1

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->b(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;I)V

    return-void
.end method
