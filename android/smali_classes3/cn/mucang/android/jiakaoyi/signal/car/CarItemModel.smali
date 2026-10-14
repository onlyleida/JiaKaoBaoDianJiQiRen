.class public final Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010/\u001a\u0004\u0018\u00010\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0017\"\u0004\u0008%\u0010\u0019R\u001a\u0010&\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010 \"\u0004\u0008(\u0010\"R\u001c\u0010)\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u000f\"\u0004\u0008+\u0010\u0011R\u001a\u0010,\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0006\"\u0004\u0008.\u0010\u0008\u00a8\u00060"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;",
        "Ljava/io/Serializable;",
        "()V",
        "code",
        "",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "energyType",
        "getEnergyType",
        "setEnergyType",
        "gearConfig",
        "",
        "getGearConfig",
        "()Ljava/lang/String;",
        "setGearConfig",
        "(Ljava/lang/String;)V",
        "gearType",
        "getGearType",
        "setGearType",
        "isSelect",
        "",
        "()Z",
        "setSelect",
        "(Z)V",
        "modelType",
        "getModelType",
        "setModelType",
        "rpmScale",
        "",
        "getRpmScale",
        "()F",
        "setRpmScale",
        "(F)V",
        "signalDelay",
        "getSignalDelay",
        "setSignalDelay",
        "speedScale",
        "getSpeedScale",
        "setSpeedScale",
        "universalModelName",
        "getUniversalModelName",
        "setUniversalModelName",
        "universalModelNum",
        "getUniversalModelNum",
        "setUniversalModelNum",
        "getDesc",
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


# instance fields
.field private code:I

.field private energyType:I

.field private gearConfig:Ljava/lang/String;

.field private gearType:I

.field private isSelect:Z

.field private modelType:I

.field private rpmScale:F

.field private signalDelay:Z

.field private speedScale:F

.field private universalModelName:Ljava/lang/String;

.field private universalModelNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->speedScale:F

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->rpmScale:F

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->energyType:I

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->signalDelay:Z

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->code:I

    return v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->gearConfig:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnergyType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->energyType:I

    return v0
.end method

.method public final getGearConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->gearConfig:Ljava/lang/String;

    return-object v0
.end method

.method public final getGearType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->gearType:I

    return v0
.end method

.method public final getModelType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->modelType:I

    return v0
.end method

.method public final getRpmScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->rpmScale:F

    return v0
.end method

.method public final getSignalDelay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->signalDelay:Z

    return v0
.end method

.method public final getSpeedScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->speedScale:F

    return v0
.end method

.method public final getUniversalModelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->universalModelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniversalModelNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->universalModelNum:I

    return v0
.end method

.method public final isSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->isSelect:Z

    return v0
.end method

.method public final setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->code:I

    return-void
.end method

.method public final setEnergyType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->energyType:I

    return-void
.end method

.method public final setGearConfig(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->gearConfig:Ljava/lang/String;

    return-void
.end method

.method public final setGearType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->gearType:I

    return-void
.end method

.method public final setModelType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->modelType:I

    return-void
.end method

.method public final setRpmScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->rpmScale:F

    return-void
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->isSelect:Z

    return-void
.end method

.method public final setSignalDelay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->signalDelay:Z

    return-void
.end method

.method public final setSpeedScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->speedScale:F

    return-void
.end method

.method public final setUniversalModelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->universalModelName:Ljava/lang/String;

    return-void
.end method

.method public final setUniversalModelNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->universalModelNum:I

    return-void
.end method
