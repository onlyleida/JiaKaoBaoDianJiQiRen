.class public Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/Send;


# instance fields
.field private accOn:Z

.field private deal:Z

.field private doorLocked:Z

.field private eastLongitude:Z

.field private electricNormal:Z

.field private location:Z

.field private locationEncrypted:Z

.field private northLatitude:Z

.field private oilNormal:Z

.field private supplement:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNormal()Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->accOn:Z

    .line 3
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->location:Z

    .line 4
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->northLatitude:Z

    .line 5
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->eastLongitude:Z

    .line 6
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->deal:Z

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->locationEncrypted:Z

    .line 8
    iput-boolean v2, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->supplement:Z

    .line 9
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->oilNormal:Z

    .line 10
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->electricNormal:Z

    .line 11
    iput-boolean v1, v0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->doorLocked:Z

    return-object v0
.end method


# virtual methods
.method public encode()[B
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->accOn:Z

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    .line 3
    iget-boolean v2, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->location:Z

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    .line 4
    iget-boolean v2, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->northLatitude:Z

    xor-int/2addr v2, v3

    const/4 v4, 0x2

    invoke-static {v1, v4, v2}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    const/4 v2, 0x3

    .line 5
    iget-boolean v4, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->eastLongitude:Z

    xor-int/2addr v4, v3

    invoke-static {v1, v2, v4}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    const/4 v2, 0x4

    .line 6
    iget-boolean v4, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->deal:Z

    xor-int/2addr v4, v3

    invoke-static {v1, v2, v4}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    const/4 v2, 0x5

    .line 7
    iget-boolean v4, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->locationEncrypted:Z

    invoke-static {v1, v2, v4}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    const/4 v2, 0x6

    .line 8
    iget-boolean v4, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->supplement:Z

    invoke-static {v1, v2, v4}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    const/16 v2, 0xa

    .line 9
    iget-boolean v4, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->oilNormal:Z

    xor-int/2addr v4, v3

    invoke-static {v1, v2, v4}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    const/16 v2, 0xb

    .line 10
    iget-boolean v4, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->electricNormal:Z

    xor-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    const/16 v2, 0xc

    .line 11
    iget-boolean v3, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->doorLocked:Z

    invoke-static {v1, v2, v3}, Lcn/mucang/sundial/android/tcp/utils/BitUtils;->setBitOn(IIZ)I

    move-result v1

    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 13
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public isAccOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->accOn:Z

    return v0
.end method

.method public isDeal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->deal:Z

    return v0
.end method

.method public isDoorLocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->doorLocked:Z

    return v0
.end method

.method public isEastLongitude()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->eastLongitude:Z

    return v0
.end method

.method public isElectricNormal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->electricNormal:Z

    return v0
.end method

.method public isLocation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->location:Z

    return v0
.end method

.method public isLocationEncrypted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->locationEncrypted:Z

    return v0
.end method

.method public isNorthLatitude()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->northLatitude:Z

    return v0
.end method

.method public isOilNormal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->oilNormal:Z

    return v0
.end method

.method public isSupplement()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->supplement:Z

    return v0
.end method

.method public setAccOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->accOn:Z

    return-void
.end method

.method public setDeal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->deal:Z

    return-void
.end method

.method public setDoorLocked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->doorLocked:Z

    return-void
.end method

.method public setEastLongitude(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->eastLongitude:Z

    return-void
.end method

.method public setElectricNormal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->electricNormal:Z

    return-void
.end method

.method public setLocation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->location:Z

    return-void
.end method

.method public setLocationEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->locationEncrypted:Z

    return-void
.end method

.method public setNorthLatitude(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->northLatitude:Z

    return-void
.end method

.method public setOilNormal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->oilNormal:Z

    return-void
.end method

.method public setSupplement(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/VehicleStatus;->supplement:Z

    return-void
.end method
