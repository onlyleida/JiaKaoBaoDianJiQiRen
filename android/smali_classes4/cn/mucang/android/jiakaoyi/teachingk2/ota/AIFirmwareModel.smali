.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;
.super Lcn/mucang/android/jiakaoyi/teachingk2/ota/FirmwareModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ota/FirmwareModel;",
        "()V",
        "hardwareVersion",
        "",
        "getHardwareVersion",
        "()Ljava/lang/String;",
        "setHardwareVersion",
        "(Ljava/lang/String;)V",
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
.field private hardwareVersion:Ljava/lang/String;

.field private localVersion:Ljava/lang/String;

.field private onlineVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ota/FirmwareModel;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;->hardwareVersion:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;->localVersion:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;->onlineVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getHardwareVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;->hardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;->localVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnlineVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;->onlineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final setHardwareVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;->hardwareVersion:Ljava/lang/String;

    return-void
.end method

.method public final setLocalVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;->localVersion:Ljava/lang/String;

    return-void
.end method

.method public final setOnlineVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ota/AIFirmwareModel;->onlineVersion:Ljava/lang/String;

    return-void
.end method
