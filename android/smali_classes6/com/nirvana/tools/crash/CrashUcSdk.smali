.class Lcom/nirvana/tools/crash/CrashUcSdk;
.super Lcom/nirvana/tools/core/BaseDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirvana/tools/crash/CrashUcSdk$CrashCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_INIT_TIME:I = 0x1388

.field private static final KEY_SDK_VERSION:Ljava/lang/String; = "nirvana_sdk_version"

.field private static final LINE_SEP:Ljava/lang/String; = "\n"

.field private static final LOG_TYPE:Ljava/lang/String; = "CrashShield"


# instance fields
.field initDelayTime:I

.field private initTime:Ljava/lang/String;

.field private isAppRegister:Z

.field private volatile isFeatureEnable:Z

.field private isInitFinished:Z

.field private isUcInitReadied:Z

.field private mAppPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCustomInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerCrashCallback:Lcom/nirvana/tools/crash/OnCrashCallback;

.field private mPendingSdk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nirvana/tools/crash/SdkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStackAnalyzer:Lcom/nirvana/tools/crash/StackAnalyzer;

.field private mUploadCrashSdk:Lcom/nirvana/tools/crash/SdkInfo;

.field private onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

.field private singleThreadExecutor:Lcom/nirvana/tools/crash/SingleThreadExecutor;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/nirvana/tools/core/BaseDelegate;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mAppPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mUploadCrashSdk:Lcom/nirvana/tools/crash/SdkInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->initDelayTime:I

    new-instance v0, Lcom/nirvana/tools/crash/StackAnalyzer;

    invoke-direct {v0}, Lcom/nirvana/tools/crash/StackAnalyzer;-><init>()V

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mStackAnalyzer:Lcom/nirvana/tools/crash/StackAnalyzer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isAppRegister:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->initTime:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isInitFinished:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isFeatureEnable:Z

    iput-boolean v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isUcInitReadied:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mPendingSdk:Ljava/util/List;

    new-instance v0, Lcom/nirvana/tools/crash/CrashUcSdk$1;

    invoke-direct {v0, p0}, Lcom/nirvana/tools/crash/CrashUcSdk$1;-><init>(Lcom/nirvana/tools/crash/CrashUcSdk;)V

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mInnerCrashCallback:Lcom/nirvana/tools/crash/OnCrashCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/OnCrashCallbackProxy;
    .locals 0

    iget-object p0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nirvana/tools/crash/CrashUcSdk;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirvana/tools/crash/CrashUcSdk;->lazyRegisterUc()V

    return-void
.end method

.method static synthetic access$200(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/SdkInfo;
    .locals 0

    iget-object p0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mUploadCrashSdk:Lcom/nirvana/tools/crash/SdkInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/nirvana/tools/crash/CrashUcSdk;Lcom/nirvana/tools/crash/SdkInfo;)Lcom/nirvana/tools/crash/SdkInfo;
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mUploadCrashSdk:Lcom/nirvana/tools/crash/SdkInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nirvana/tools/crash/CrashUcSdk;Ljava/lang/String;Lcom/nirvana/tools/crash/SdkInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirvana/tools/crash/CrashUcSdk;->checkModifySymbolFile(Ljava/lang/String;Lcom/nirvana/tools/crash/SdkInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nirvana/tools/crash/CrashUcSdk;)Lcom/nirvana/tools/crash/StackAnalyzer;
    .locals 0

    iget-object p0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mStackAnalyzer:Lcom/nirvana/tools/crash/StackAnalyzer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/nirvana/tools/crash/CrashUcSdk;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isAppRegister:Z

    return p0
.end method

.method static synthetic access$600(Lcom/nirvana/tools/crash/CrashUcSdk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->updateVersionInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nirvana/tools/crash/CrashUcSdk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/nirvana/tools/crash/CrashUcSdk;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/nirvana/tools/crash/CrashUcSdk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->initTime:Ljava/lang/String;

    return-object p0
.end method

.method private checkModifySymbolFile(Ljava/lang/String;Lcom/nirvana/tools/crash/SdkInfo;)V
    .locals 3

    invoke-static {p1}, Lcom/nirvana/tools/crash/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/nirvana/tools/crash/SdkInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p2}, Lcom/nirvana/tools/crash/SdkInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nirvana/tools/crash/FileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private doRegisterUc(Landroid/content/Context;Lcom/nirvana/tools/crash/SdkInfo;)V
    .locals 2

    iget-boolean v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isFeatureEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mStackAnalyzer:Lcom/nirvana/tools/crash/StackAnalyzer;

    invoke-virtual {v0, p2}, Lcom/nirvana/tools/crash/StackAnalyzer;->initAddSdkConfig(Lcom/nirvana/tools/crash/SdkInfo;)V

    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/nirvana/tools/crash/CrashUcSdk;->initUcSdk(Landroid/content/Context;Lcom/nirvana/tools/crash/SdkInfo;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isAppRegister:Z

    :goto_0
    iput-boolean v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isInitFinished:Z

    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p1

    new-instance p2, Lcom/nirvana/tools/crash/CrashUcSdk$3;

    invoke-direct {p2, p0}, Lcom/nirvana/tools/crash/CrashUcSdk$3;-><init>(Lcom/nirvana/tools/crash/CrashUcSdk;)V

    invoke-virtual {p1, v1, p2}, Lcom/uc/crashsdk/export/CrashApi;->registerCallback(ILandroid/webkit/ValueCallback;)Z

    return-void
.end method

.method private initUcSdk(Landroid/content/Context;Lcom/nirvana/tools/crash/SdkInfo;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mDebug"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mZipLog"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mEncryptLog"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mSyncUploadLogs"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mCallJavaDefaultHandler"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mCallNativeDefaultHandler"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mAddLogcat"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mAddThreadsDump"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mMaxUploadCustomLogCountPerDay"

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mMaxCustomLogCountPerTypePerDay"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/nirvana/tools/crash/SdkInfo;->getAppId()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/nirvana/tools/crash/CrashUcSdk$CrashCallback;

    iget-object v3, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mInnerCrashCallback:Lcom/nirvana/tools/crash/OnCrashCallback;

    invoke-direct {v1, p0, v3}, Lcom/nirvana/tools/crash/CrashUcSdk$CrashCallback;-><init>(Lcom/nirvana/tools/crash/CrashUcSdk;Lcom/nirvana/tools/crash/OnCrashCallback;)V

    invoke-static {p1, p2, v2, v0, v1}, Lcom/uc/crashsdk/export/CrashApi;->createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/uc/crashsdk/export/ICrashClient;)Lcom/uc/crashsdk/export/CrashApi;

    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uc/crashsdk/export/CrashApi;->updateCustomInfo(Landroid/os/Bundle;)I

    return-void
.end method

.method private declared-synchronized lazyRegisterUc()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isUcInitReadied:Z

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mPendingSdk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nirvana/tools/crash/SdkInfo;

    iget-object v2, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/nirvana/tools/crash/CrashUcSdk;->doRegisterUc(Landroid/content/Context;Lcom/nirvana/tools/crash/SdkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateVersionInfo(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nirvana/tools/crash/CrashUcSdk;->isUcUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "nirvana_sdk_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public generateCustomLogUploadItrace(Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nirvana/tools/crash/SdkInfo;",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nirvana/tools/crash/SdkInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "java.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->singleThreadExecutor:Lcom/nirvana/tools/crash/SingleThreadExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nirvana/tools/crash/SingleThreadExecutor;

    const-string v1, "crashUpload"

    invoke-direct {v0, v1}, Lcom/nirvana/tools/crash/SingleThreadExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->singleThreadExecutor:Lcom/nirvana/tools/crash/SingleThreadExecutor;

    :cond_0
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "uuid"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, ""

    :goto_1
    move-object v10, v0

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->singleThreadExecutor:Lcom/nirvana/tools/crash/SingleThreadExecutor;

    new-instance v1, Lcom/nirvana/tools/crash/CrashUcSdk$5;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v10}, Lcom/nirvana/tools/crash/CrashUcSdk$5;-><init>(Lcom/nirvana/tools/crash/CrashUcSdk;Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/SingleThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSubClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.uc.crashsdk.export.CrashApi"

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->initTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mAppPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mContext:Landroid/content/Context;

    iget p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->initDelayTime:I

    if-gez p1, :cond_0

    const/16 p1, 0x1388

    iput p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->initDelayTime:I

    :cond_0
    sget-object p1, Lcom/nirvana/tools/core/BaseDelegate;->sComponentClassExist:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->initDelayTime:I

    if-lez p1, :cond_1

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/nirvana/tools/crash/CrashUcSdk$2;

    invoke-direct {v0, p0}, Lcom/nirvana/tools/crash/CrashUcSdk$2;-><init>(Lcom/nirvana/tools/crash/CrashUcSdk;)V

    iget v1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->initDelayTime:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/nirvana/tools/crash/CrashUcSdk;->lazyRegisterUc()V

    :cond_2
    return-void
.end method

.method public initAddSdkConfig(Lcom/nirvana/tools/crash/SdkInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mStackAnalyzer:Lcom/nirvana/tools/crash/StackAnalyzer;

    invoke-virtual {v0, p1}, Lcom/nirvana/tools/crash/StackAnalyzer;->initAddSdkConfig(Lcom/nirvana/tools/crash/SdkInfo;)V

    return-void
.end method

.method public isUcUsable()Z
    .locals 1

    sget-object v0, Lcom/nirvana/tools/core/BaseDelegate;->sComponentClassExist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isInitFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isFeatureEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized registerUc(Lcom/nirvana/tools/crash/SdkInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isUcInitReadied:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->doRegisterUc(Landroid/content/Context;Lcom/nirvana/tools/crash/SdkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mPendingSdk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCrashCallback(Lcom/nirvana/tools/crash/OnCrashCallbackProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    return-void
.end method

.method public setFeatureEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->isFeatureEnable:Z

    return-void
.end method

.method public setUcCrashDelayTime(I)V
    .locals 0

    iput p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->initDelayTime:I

    return-void
.end method

.method public updateConfig(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mCustomInfo:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/nirvana/tools/crash/CrashUcSdk;->isUcUsable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mCustomInfo:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public uploadException(Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nirvana/tools/crash/SdkInfo;",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nirvana/tools/crash/CrashUcSdk;->isUcUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->mUploadCrashSdk:Lcom/nirvana/tools/crash/SdkInfo;

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->singleThreadExecutor:Lcom/nirvana/tools/crash/SingleThreadExecutor;

    if-nez p1, :cond_0

    new-instance p1, Lcom/nirvana/tools/crash/SingleThreadExecutor;

    const-string v0, "crashUpload"

    invoke-direct {p1, v0}, Lcom/nirvana/tools/crash/SingleThreadExecutor;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->singleThreadExecutor:Lcom/nirvana/tools/crash/SingleThreadExecutor;

    :cond_0
    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashUcSdk;->singleThreadExecutor:Lcom/nirvana/tools/crash/SingleThreadExecutor;

    new-instance v0, Lcom/nirvana/tools/crash/CrashUcSdk$4;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/nirvana/tools/crash/CrashUcSdk$4;-><init>(Lcom/nirvana/tools/crash/CrashUcSdk;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/nirvana/tools/crash/SingleThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nirvana/tools/crash/CrashUcSdk;->generateCustomLogUploadItrace(Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
