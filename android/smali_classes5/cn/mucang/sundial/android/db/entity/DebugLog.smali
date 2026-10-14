.class public Lcn/mucang/sundial/android/db/entity/DebugLog;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private createTime:J

.field private distance:Ljava/lang/String;

.field private gpsDistance:Ljava/lang/String;

.field private gpsSpeed:Ljava/lang/String;

.field private log1:Ljava/lang/String;

.field private log2:Ljava/lang/String;

.field private log3:Ljava/lang/String;

.field private log4:Ljava/lang/String;

.field private maxSpeed:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private rpm:Ljava/lang/String;

.field private speed:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->createTime:J

    return-wide v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsDistance()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->gpsDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->gpsSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getLog1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->log1:Ljava/lang/String;

    return-object v0
.end method

.method public getLog2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->log2:Ljava/lang/String;

    return-object v0
.end method

.method public getLog3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->log3:Ljava/lang/String;

    return-object v0
.end method

.method public getLog4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->log4:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->maxSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getRpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->rpm:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->type:I

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->createTime:J

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->distance:Ljava/lang/String;

    return-void
.end method

.method public setGpsDistance(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->gpsDistance:Ljava/lang/String;

    return-void
.end method

.method public setGpsSpeed(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->gpsSpeed:Ljava/lang/String;

    return-void
.end method

.method public setLog1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->log1:Ljava/lang/String;

    return-void
.end method

.method public setLog2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->log2:Ljava/lang/String;

    return-void
.end method

.method public setLog3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->log3:Ljava/lang/String;

    return-void
.end method

.method public setLog4(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->log4:Ljava/lang/String;

    return-void
.end method

.method public setMaxSpeed(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->maxSpeed:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->remark:Ljava/lang/String;

    return-void
.end method

.method public setRpm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->rpm:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->speed:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/DebugLog;->type:I

    return-void
.end method
