.class public Lcom/nirvana/tools/crash/CrashSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CRASH_TYPE_ANR:Ljava/lang/String; = "anr"

.field public static final CRASH_TYPE_JAVA:Ljava/lang/String; = "java"

.field public static final CRASH_TYPE_JNI:Ljava/lang/String; = "jni"

.field public static final CRASH_TYPE_UNEXP:Ljava/lang/String; = "unexp"

.field private static volatile mInstance:Lcom/nirvana/tools/crash/CrashSdk;


# instance fields
.field private isUcEnable:Z

.field private mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

.field private mThreadExceptionHandler:Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;

.field private onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

.field private ucInitDelayTime:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mThreadExceptionHandler:Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->ucInitDelayTime:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->isUcEnable:Z

    return-void
.end method

.method public static getInstance()Lcom/nirvana/tools/crash/CrashSdk;
    .locals 2

    sget-object v0, Lcom/nirvana/tools/crash/CrashSdk;->mInstance:Lcom/nirvana/tools/crash/CrashSdk;

    if-nez v0, :cond_1

    const-class v0, Lcom/nirvana/tools/crash/CrashSdk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nirvana/tools/crash/CrashSdk;->mInstance:Lcom/nirvana/tools/crash/CrashSdk;

    if-nez v1, :cond_0

    new-instance v1, Lcom/nirvana/tools/crash/CrashSdk;

    invoke-direct {v1}, Lcom/nirvana/tools/crash/CrashSdk;-><init>()V

    sput-object v1, Lcom/nirvana/tools/crash/CrashSdk;->mInstance:Lcom/nirvana/tools/crash/CrashSdk;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/nirvana/tools/crash/CrashSdk;->mInstance:Lcom/nirvana/tools/crash/CrashSdk;

    return-object v0
.end method

.method private setCrashCallback()V
    .locals 2

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mThreadExceptionHandler:Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nirvana/tools/crash/CrashSdk;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->setCrashCallback(Lcom/nirvana/tools/crash/OnCrashCallbackProxy;)V

    :cond_0
    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nirvana/tools/crash/CrashSdk;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/CrashUcSdk;->setCrashCallback(Lcom/nirvana/tools/crash/OnCrashCallbackProxy;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public enableUC(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/nirvana/tools/crash/CrashSdk;->isUcEnable:Z

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->setFeatureEnable(Z)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-direct {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;-><init>()V

    iput-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    iget-boolean v1, p0, Lcom/nirvana/tools/crash/CrashSdk;->isUcEnable:Z

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/CrashUcSdk;->setFeatureEnable(Z)V

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    iget v1, p0, Lcom/nirvana/tools/crash/CrashSdk;->ucInitDelayTime:I

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/crash/CrashUcSdk;->setUcCrashDelayTime(I)V

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-virtual {v0, p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/nirvana/tools/crash/CrashSdk;->mThreadExceptionHandler:Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->unRegister()V

    :cond_0
    new-instance p1, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    invoke-direct {p1}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;-><init>()V

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashSdk;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    new-instance p1, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-direct {p1, v0}, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;-><init>(Lcom/nirvana/tools/crash/CrashUcSdk;)V

    iput-object p1, p0, Lcom/nirvana/tools/crash/CrashSdk;->mThreadExceptionHandler:Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;

    invoke-virtual {p1}, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->register()V

    invoke-direct {p0}, Lcom/nirvana/tools/crash/CrashSdk;->setCrashCallback()V

    return-void
.end method

.method public isUcUsable()Z
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->isUcUsable()Z

    move-result v0

    return v0
.end method

.method public registerSdk(Lcom/nirvana/tools/crash/SdkInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mThreadExceptionHandler:Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mThreadExceptionHandler:Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;

    invoke-virtual {v0, p1}, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->initAddSdkConfig(Lcom/nirvana/tools/crash/SdkInfo;)V

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-virtual {v0, p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->registerUc(Lcom/nirvana/tools/crash/SdkInfo;)V

    :cond_1
    return-void
.end method

.method public setCrashCallback(Ljava/lang/String;Lcom/nirvana/tools/crash/OnCrashCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    invoke-virtual {v0, p1, p2}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->registerCrashCallback(Ljava/lang/String;Lcom/nirvana/tools/crash/OnCrashCallback;)V

    return-void
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nirvana/tools/crash/CrashUcSdk;->updateConfig(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setUcCrashDelayTime(I)V
    .locals 0

    iput p1, p0, Lcom/nirvana/tools/crash/CrashSdk;->ucInitDelayTime:I

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

    iget-object v0, p0, Lcom/nirvana/tools/crash/CrashSdk;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nirvana/tools/crash/CrashUcSdk;->uploadException(Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
