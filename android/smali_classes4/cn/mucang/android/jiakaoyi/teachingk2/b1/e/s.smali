.class public Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/unity/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/unity/c/c<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;
    .locals 6

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/s;->d()V

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;-><init>()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->version:Ljava/lang/String;

    const-string v1, ""

    .line 5
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->mediaResPath:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->deviceNum:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/GearType;->isAuto()Z

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->auto:I

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->h()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->leftFullAngel:I

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->i()I

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->rightFullAngel:I

    const-wide/16 v2, 0x0

    .line 10
    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->examSiteId:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->a()Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->examSiteName:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getDriveSchoolName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->examSiteName:Ljava/lang/String;

    .line 14
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/a;->b()Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->isLeftUpper:Z

    .line 15
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ShowMap:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->showMap:Z

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 17
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->BianXianLianXi:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->id:I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v3, v1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v1

    .line 18
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->YuanHuanLianXi:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->id:I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-static {v1, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v1

    .line 19
    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->DoubleYuanHuanLianXi:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel$TrainProject;->id:I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v5

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-static {v1, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->f(IIZ)I

    move-result v1

    .line 20
    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->stepConfig:I

    .line 21
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->f()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->clutchActiveStart:F

    .line 22
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->e()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->clutchActiveEnd:F

    .line 23
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->h()Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->showNavigation:Z

    .line 24
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v4, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;

    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/AbsTeachBaseProvider;->getAppType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->appType:I

    .line 26
    :cond_6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->showAutoTeach:Z

    .line 27
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->HelpTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->showHelpTeach:Z

    .line 28
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->OpenK3:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->openK3:Z

    .line 29
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/ctrspeed/CtrSpeedAssistMgr;->O()Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->speedControlHelper:Z

    .line 30
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->altitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->basePointAltitude:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->basePointLongitude:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->a:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->basePointLatitude:Ljava/lang/String;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->mapPath:Ljava/lang/String;

    .line 34
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->EnableNonPerceiveLogin:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->enableNonPerceiveLogin:Z

    .line 35
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->g()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->clutchTrainType:I

    .line 36
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ShowLanguage:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->showLanguage:Z

    .line 37
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->l()Z

    move-result v1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->showSetting:Z

    return-object v0
.end method

.method public static c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;
    .locals 11

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/s;->b()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v4

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->Unity:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;

    invoke-static {v1, v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;J)Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v3

    const-string v9, ""

    const-string v10, "unity\u8d44\u6e90\u4e0d\u5b58\u5728"

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v10}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 6
    iput-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->respath:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_0
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$Resource;->fileRoot:Ljava/lang/String;

    iget v6, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->version:I

    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->url:Ljava/lang/String;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$VersionInfo;->md5:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/res/k;->c(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-static {v10}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 10
    iput-object v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->respath:Ljava/lang/String;

    return-object v0

    .line 11
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;->respath:Ljava/lang/String;

    return-object v0
.end method

.method private static d()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/s;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;Landroid/app/Activity;)Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/s;->c()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/ResVersionInfoModel;

    move-result-object p1

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;-><init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-object p2
.end method
