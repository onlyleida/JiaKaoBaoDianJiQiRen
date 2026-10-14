.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ota/FirmwareModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u000e\u0010\u0006\"\u0004\u0008\u000f\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ota/FirmwareModel;",
        "()V",
        "hardwareVersion",
        "",
        "getHardwareVersion",
        "()Ljava/lang/Integer;",
        "setHardwareVersion",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "localVersion",
        "getLocalVersion",
        "setLocalVersion",
        "onlineVersion",
        "getOnlineVersion",
        "setOnlineVersion",
        "teachbase_release"
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
.field private hardwareVersion:Ljava/lang/Integer;

.field private localVersion:Ljava/lang/Integer;

.field private onlineVersion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ota/FirmwareModel;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;->hardwareVersion:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;->localVersion:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;->onlineVersion:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getHardwareVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;->hardwareVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLocalVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;->localVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOnlineVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;->onlineVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setHardwareVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;->hardwareVersion:Ljava/lang/Integer;

    return-void
.end method

.method public final setLocalVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;->localVersion:Ljava/lang/Integer;

    return-void
.end method

.method public final setOnlineVersion(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/RobotFirmwareModel;->onlineVersion:Ljava/lang/Integer;

    return-void
.end method
