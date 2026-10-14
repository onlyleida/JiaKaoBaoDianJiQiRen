.class public Lcn/mucang/sundial/library/entity/UpdateInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private md5:Ljava/lang/String;

.field private needUpdate:Z

.field private size:J

.field private url:Ljava/lang/String;

.field private versionName:Ljava/lang/String;

.field private versionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->versionNumber:I

    return v0
.end method

.method public isNeedUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->needUpdate:Z

    return v0
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->md5:Ljava/lang/String;

    return-void
.end method

.method public setNeedUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->needUpdate:Z

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->size:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setVersionNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/entity/UpdateInfo;->versionNumber:I

    return-void
.end method
