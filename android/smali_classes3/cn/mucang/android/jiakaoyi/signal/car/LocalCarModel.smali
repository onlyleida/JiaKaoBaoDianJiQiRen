.class public final Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;",
        "Ljava/io/Serializable;",
        "()V",
        "config",
        "Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;",
        "getConfig",
        "()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;",
        "setConfig",
        "(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V",
        "modelName",
        "",
        "getModelName",
        "()Ljava/lang/String;",
        "setModelName",
        "(Ljava/lang/String;)V",
        "getCarCode",
        "",
        "getCarDesc",
        "getLogInfo",
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
.field private config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

.field private modelName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCarCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getCarDesc()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getUniversalModelNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getUniversalModelName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    :goto_2
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_6

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getDesc()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    if-nez v1, :cond_5

    const/4 v1, 0x2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getGearType()I

    move-result v1

    :goto_5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public final getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    return-object v0
.end method

.method public final getLogInfo()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    const-string v1, "name:"

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";\u63cf\u8ff0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getGearConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";\u6321\u4f4d\u7c7b\u578b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getGearType()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->gearName:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";\u901f\u5ea6\u6bd4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getSpeedScale()F

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";\u8f6c\u901f\u6bd4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getRpmScale()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 8
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";\u662f\u5426\u4fe1\u53f7\u5ef6\u65f6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getSignalDelay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 10
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";\u8f66\u7c7b\u578b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getEnergyType()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/EnergyType;->typeName:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->modelName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getModelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public final setConfig(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->config:Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    return-void
.end method

.method public final setModelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->modelName:Ljava/lang/String;

    return-void
.end method
