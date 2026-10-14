.class public Lcom/amap/api/mapcore/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:J

.field private d:F

.field private e:Landroid/content/Context;

.field private f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private g:Lcom/amap/api/maps/model/Marker;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/b;->c:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b;->h:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b;->e:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    :try_start_0
    const-string p2, "sensor"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->a:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    .line 7
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->b:Landroid/hardware/Sensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/b;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/b;->d:F

    return p1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    if-eqz p0, :cond_3

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_3

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, -0x5a

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :catchall_0
    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/b;->c:J

    return-wide p1
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/b;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/b;->d:F

    return p0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/model/Marker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/maps/model/Marker;

    return-object p0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/b;->h:Z

    return p0
.end method

.method static synthetic l(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    return-object p0
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->b:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public f(Lcom/amap/api/maps/model/Marker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b;->g:Lcom/amap/api/maps/model/Marker;

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/b;->h:Z

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b;->b:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/b;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b;->f:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/q3;->a()Lcom/amap/api/mapcore/util/q3;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/b$a;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/b$a;-><init>(Lcom/amap/api/mapcore/util/b;Landroid/hardware/SensorEvent;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q3;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
