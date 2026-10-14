.class public final Lcn/mucang/android/jiakaoyi/signal/handle/gps/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->l(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/signal/handle/gps/JLocationManager$start$1",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;",
        "onLocationChanged",
        "",
        "location",
        "Landroid/location/Location;",
        "signal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/b;-><init>()V

    .line 4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    const/16 p1, 0x9

    .line 5
    iput p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a()Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver;->d()Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/GnssStatusObserver$d;->a:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->c(Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    return-void
.end method
