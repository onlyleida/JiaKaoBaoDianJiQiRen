.class public final Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010A\u001a\u00020\u0004J\u0006\u0010B\u001a\u00020\rR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u000f\"\u0004\u0008\"\u0010\u0011R\u001c\u0010#\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0006\"\u0004\u0008%\u0010\u0008R\u001a\u0010&\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0015\"\u0004\u0008(\u0010\u0017R\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0006\"\u0004\u0008+\u0010\u0008R\u001a\u0010,\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u000f\"\u0004\u0008.\u0010\u0011R\u001c\u0010/\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0006\"\u0004\u00081\u0010\u0008R\u001c\u00102\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0006\"\u0004\u00084\u0010\u0008R\u001a\u00105\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0015\"\u0004\u00087\u0010\u0017R\u001c\u00108\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u0006\"\u0004\u0008:\u0010\u0008R\u001a\u0010;\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0015\"\u0004\u0008=\u0010\u0017R\u001c\u0010>\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0006\"\u0004\u0008@\u0010\u0008\u00a8\u0006C"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;",
        "Ljava/io/Serializable;",
        "()V",
        "downloadFilePath",
        "",
        "getDownloadFilePath",
        "()Ljava/lang/String;",
        "setDownloadFilePath",
        "(Ljava/lang/String;)V",
        "filePath",
        "getFilePath",
        "setFilePath",
        "force",
        "",
        "getForce",
        "()Z",
        "setForce",
        "(Z)V",
        "hardwarePlatform",
        "",
        "getHardwarePlatform",
        "()I",
        "setHardwarePlatform",
        "(I)V",
        "hardwareVer",
        "getHardwareVer",
        "setHardwareVer",
        "id",
        "",
        "getId",
        "()J",
        "setId",
        "(J)V",
        "isFileAvailable",
        "setFileAvailable",
        "md5",
        "getMd5",
        "setMd5",
        "modelCode",
        "getModelCode",
        "setModelCode",
        "modelName",
        "getModelName",
        "setModelName",
        "notice",
        "getNotice",
        "setNotice",
        "noticeContent",
        "getNoticeContent",
        "setNoticeContent",
        "noticeTitle",
        "getNoticeTitle",
        "setNoticeTitle",
        "type",
        "getType",
        "setType",
        "uid",
        "getUid",
        "setUid",
        "version",
        "getVersion",
        "setVersion",
        "versionName",
        "getVersionName",
        "setVersionName",
        "getTypeName",
        "isMainObd",
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
.field private transient downloadFilePath:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private force:Z

.field private hardwarePlatform:I

.field private hardwareVer:I

.field private id:J

.field private isFileAvailable:Z

.field private md5:Ljava/lang/String;

.field private modelCode:I

.field private modelName:Ljava/lang/String;

.field private notice:Z

.field private noticeContent:Ljava/lang/String;

.field private noticeTitle:Ljava/lang/String;

.field private type:I

.field private uid:Ljava/lang/String;

.field private version:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDownloadFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getForce()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->force:Z

    return v0
.end method

.method public final getHardwarePlatform()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->hardwarePlatform:I

    return v0
.end method

.method public final getHardwareVer()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->hardwareVer:I

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->id:J

    return-wide v0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->modelCode:I

    return v0
.end method

.method public final getModelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->notice:Z

    return v0
.end method

.method public final getNoticeContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->noticeContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getNoticeTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->noticeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->type:I

    return v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->type:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->parse(I)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parse(type).getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->version:I

    return v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final isFileAvailable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isFileAvailable:Z

    return v0
.end method

.method public final isMainObd()Z
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final setDownloadFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->downloadFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setFileAvailable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isFileAvailable:Z

    return-void
.end method

.method public final setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->filePath:Ljava/lang/String;

    return-void
.end method

.method public final setForce(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->force:Z

    return-void
.end method

.method public final setHardwarePlatform(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->hardwarePlatform:I

    return-void
.end method

.method public final setHardwareVer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->hardwareVer:I

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->id:J

    return-void
.end method

.method public final setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->md5:Ljava/lang/String;

    return-void
.end method

.method public final setModelCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->modelCode:I

    return-void
.end method

.method public final setModelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->modelName:Ljava/lang/String;

    return-void
.end method

.method public final setNotice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->notice:Z

    return-void
.end method

.method public final setNoticeContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->noticeContent:Ljava/lang/String;

    return-void
.end method

.method public final setNoticeTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->noticeTitle:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->type:I

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->version:I

    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->versionName:Ljava/lang/String;

    return-void
.end method
