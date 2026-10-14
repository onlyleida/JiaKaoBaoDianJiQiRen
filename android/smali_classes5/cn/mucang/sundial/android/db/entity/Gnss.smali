.class public Lcn/mucang/sundial/android/db/entity/Gnss;
.super Lcn/mucang/android/core/db/IdEntity;
.source "SourceFile"


# instance fields
.field private createTime:J

.field private gnssData:Ljava/lang/String;

.field private uploadStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/db/IdEntity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/sundial/android/db/entity/Gnss;->uploadStatus:I

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/db/entity/Gnss;->createTime:J

    return-wide v0
.end method

.method public getGnssData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/entity/Gnss;->gnssData:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/db/entity/Gnss;->uploadStatus:I

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/android/db/entity/Gnss;->createTime:J

    return-void
.end method

.method public setGnssData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/db/entity/Gnss;->gnssData:Ljava/lang/String;

    return-void
.end method

.method public setUploadStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/db/entity/Gnss;->uploadStatus:I

    return-void
.end method
