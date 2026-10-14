.class Lcom/iflytek/cloud/util/Accelerometer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/util/Accelerometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/util/Accelerometer;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/util/Accelerometer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/util/Accelerometer$a;->a:Lcom/iflytek/cloud/util/Accelerometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    .line 3
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 4
    aget p1, p1, v2

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_4

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    cmpl-float p1, v0, v3

    if-lez p1, :cond_1

    .line 7
    sget-object p1, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg0:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {p1}, Lcom/iflytek/cloud/util/Accelerometer;->a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg180:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {p1}, Lcom/iflytek/cloud/util/Accelerometer;->a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    goto :goto_0

    :cond_2
    cmpl-float p1, v1, v3

    if-lez p1, :cond_3

    .line 9
    sget-object p1, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg90:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {p1}, Lcom/iflytek/cloud/util/Accelerometer;->a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    goto :goto_0

    .line 10
    :cond_3
    sget-object p1, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg270:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {p1}, Lcom/iflytek/cloud/util/Accelerometer;->a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    :cond_4
    :goto_0
    return-void
.end method
