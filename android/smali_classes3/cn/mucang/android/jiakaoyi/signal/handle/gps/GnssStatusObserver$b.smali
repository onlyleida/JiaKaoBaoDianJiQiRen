.class Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$b;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$b;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->c(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->b(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;I)V

    :cond_0
    return-void
.end method
