.class public Lcom/iflytek/cloud/util/Accelerometer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;
    }
.end annotation


# static fields
.field private static a:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:Z

.field private d:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->b:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->c:Z

    .line 4
    new-instance v0, Lcom/iflytek/cloud/util/Accelerometer$a;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/util/Accelerometer$a;-><init>(Lcom/iflytek/cloud/util/Accelerometer;)V

    iput-object v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->d:Landroid/hardware/SensorEventListener;

    const-string v0, "sensor"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/iflytek/cloud/util/Accelerometer;->b:Landroid/hardware/SensorManager;

    .line 6
    sget-object p1, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg0:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    sput-object p1, Lcom/iflytek/cloud/util/Accelerometer;->a:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;
    .locals 0

    .line 1
    sput-object p0, Lcom/iflytek/cloud/util/Accelerometer;->a:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    return-object p0
.end method

.method public static getDirection()I
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/util/Accelerometer;->a:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-virtual {v0}, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->getValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->c:Z

    .line 3
    sget-object v1, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg0:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    sput-object v1, Lcom/iflytek/cloud/util/Accelerometer;->a:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/util/Accelerometer;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/iflytek/cloud/util/Accelerometer;->d:Landroid/hardware/SensorEventListener;

    .line 5
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v3, 0x3

    .line 6
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->c:Z

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/iflytek/cloud/util/Accelerometer;->d:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
