.class Lcom/amap/api/mapcore/util/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c;->a(Lcom/amap/api/mapcore/util/c;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c;->a(Lcom/amap/api/mapcore/util/c;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->refreshLogo()V

    goto :goto_0

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c;->a(Lcom/amap/api/mapcore/util/c;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c;->g(Lcom/amap/api/mapcore/util/c;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showLogoEnabled(Z)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c;->a(Lcom/amap/api/mapcore/util/c;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c;->f(Lcom/amap/api/mapcore/util/c;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showIndoorSwitchControlsEnabled(Z)V

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c;->a(Lcom/amap/api/mapcore/util/c;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c;->e(Lcom/amap/api/mapcore/util/c;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showMyLocationButtonEnabled(Z)V

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c;->a(Lcom/amap/api/mapcore/util/c;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c;->d(Lcom/amap/api/mapcore/util/c;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showCompassEnabled(Z)V

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c;->a(Lcom/amap/api/mapcore/util/c;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c;->c(Lcom/amap/api/mapcore/util/c;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showScaleEnabled(Z)V

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c;->a(Lcom/amap/api/mapcore/util/c;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c$a;->a:Lcom/amap/api/mapcore/util/c;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c;->b(Lcom/amap/api/mapcore/util/c;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showZoomControlsEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "UiSettingsDelegateImp"

    const-string v1, "handleMessage"

    .line 10
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
