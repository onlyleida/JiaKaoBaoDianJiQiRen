.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;
    }
.end annotation


# instance fields
.field public appType:I

.field public auto:I

.field public basePointAltitude:Ljava/lang/String;

.field public basePointLatitude:Ljava/lang/String;

.field public basePointLongitude:Ljava/lang/String;

.field public clutchActiveEnd:F

.field public clutchActiveStart:F

.field public clutchTrainType:I

.field public deviceNum:Ljava/lang/String;

.field public enableNonPerceiveLogin:Z

.field public examSiteId:Ljava/lang/String;

.field public examSiteName:Ljava/lang/String;

.field public isDebug:Z

.field public isLeftUpper:Z

.field public leftFullAngel:I

.field public mapPath:Ljava/lang/String;

.field public mediaResPath:Ljava/lang/String;

.field public openK3:Z

.field public respath:Ljava/lang/String;

.field public rightFullAngel:I

.field public showAutoTeach:Z

.field public showHelpTeach:Z

.field public showLanguage:Z

.field public showMap:Z

.field public showNavigation:Z

.field public showSetting:Z

.field public speedControlHelper:Z

.field public stepConfig:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->clutchActiveStart:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->clutchActiveEnd:F

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->isDebug:Z

    return-void
.end method
