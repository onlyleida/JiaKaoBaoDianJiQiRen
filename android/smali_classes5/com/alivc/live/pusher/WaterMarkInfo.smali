.class public Lcom/alivc/live/pusher/WaterMarkInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mWaterMarkCoordX:F

.field public mWaterMarkCoordY:F

.field public mWaterMarkHeight:F

.field public mWaterMarkPath:Ljava/lang/String;

.field public mWaterMarkWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkPath:Ljava/lang/String;

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkHeight:F

    iput v0, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordX:F

    iput v0, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordY:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkPath:Ljava/lang/String;

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkHeight:F

    iput v0, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordX:F

    iput v0, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordY:F

    iput-object p1, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkPath:Ljava/lang/String;

    iput p2, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkWidth:F

    iput p3, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkHeight:F

    iput p4, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordX:F

    iput p5, p0, Lcom/alivc/live/pusher/WaterMarkInfo;->mWaterMarkCoordY:F

    return-void
.end method
