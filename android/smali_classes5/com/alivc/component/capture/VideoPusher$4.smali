.class Lcom/alivc/component/capture/VideoPusher$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/component/capture/VideoPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alivc/component/capture/VideoPusher;


# direct methods
.method constructor <init>(Lcom/alivc/component/capture/VideoPusher;)V
    .locals 0

    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoPusher;->isPreviewRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$300(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1300(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1302(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1402(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    invoke-static {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->access$1502(Lcom/alivc/component/capture/VideoPusher;F)F

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1300(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v5, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v5}, Lcom/alivc/component/capture/VideoPusher;->access$1400(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v5

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v6}, Lcom/alivc/component/capture/VideoPusher;->access$1500(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v6

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_2

    cmpl-float v0, v5, v7

    if-gtz v0, :cond_2

    cmpl-float v0, v6, v7

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1600(Lcom/alivc/component/capture/VideoPusher;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1700(Lcom/alivc/component/capture/VideoPusher;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    invoke-static {v0, v5}, Lcom/alivc/component/capture/VideoPusher;->access$1302(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    invoke-static {v0, v5}, Lcom/alivc/component/capture/VideoPusher;->access$1402(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v4

    invoke-static {v0, v5}, Lcom/alivc/component/capture/VideoPusher;->access$1502(Lcom/alivc/component/capture/VideoPusher;F)F

    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1800(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1802(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1902(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    invoke-static {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->access$2002(Lcom/alivc/component/capture/VideoPusher;F)F

    return-void

    :cond_4
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1800(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v1}, Lcom/alivc/component/capture/VideoPusher;->access$1900(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v1

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v5, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v5}, Lcom/alivc/component/capture/VideoPusher;->access$2000(Lcom/alivc/component/capture/VideoPusher;)F

    move-result v5

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float/2addr v6, v7

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v8, 0x3ff6666660000000L    # 1.399999976158142

    cmpl-double v10, v6, v8

    if-lez v10, :cond_5

    iget-object v6, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v6}, Lcom/alivc/component/capture/VideoPusher;->access$1600(Lcom/alivc/component/capture/VideoPusher;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1700(Lcom/alivc/component/capture/VideoPusher;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1802(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1902(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    invoke-static {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->access$2002(Lcom/alivc/component/capture/VideoPusher;F)F

    return-void

    :cond_5
    const v6, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_6

    cmpl-float v0, v1, v6

    if-gtz v0, :cond_6

    cmpl-float v0, v5, v6

    if-lez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1600(Lcom/alivc/component/capture/VideoPusher;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->access$1700(Lcom/alivc/component/capture/VideoPusher;)V

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1802(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-static {v0, v1}, Lcom/alivc/component/capture/VideoPusher;->access$1902(Lcom/alivc/component/capture/VideoPusher;F)F

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher$4;->this$0:Lcom/alivc/component/capture/VideoPusher;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    invoke-static {v0, p1}, Lcom/alivc/component/capture/VideoPusher;->access$2002(Lcom/alivc/component/capture/VideoPusher;F)F

    :cond_7
    :goto_0
    return-void
.end method
