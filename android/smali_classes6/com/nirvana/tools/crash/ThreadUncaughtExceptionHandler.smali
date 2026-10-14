.class Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

.field private mOtherExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mStackAnalyzer:Lcom/nirvana/tools/crash/StackAnalyzer;

.field private onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;


# direct methods
.method public constructor <init>(Lcom/nirvana/tools/crash/CrashUcSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nirvana/tools/crash/StackAnalyzer;

    invoke-direct {v0}, Lcom/nirvana/tools/crash/StackAnalyzer;-><init>()V

    iput-object v0, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mStackAnalyzer:Lcom/nirvana/tools/crash/StackAnalyzer;

    iput-object p1, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    return-void
.end method


# virtual methods
.method public initAddSdkConfig(Lcom/nirvana/tools/crash/SdkInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mStackAnalyzer:Lcom/nirvana/tools/crash/StackAnalyzer;

    invoke-virtual {v0, p1}, Lcom/nirvana/tools/crash/StackAnalyzer;->initAddSdkConfig(Lcom/nirvana/tools/crash/SdkInfo;)V

    return-void
.end method

.method isMainThread(Ljava/lang/Thread;)Z
    .locals 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public register()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mOtherExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public register(Ljava/lang/Thread;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mOtherExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public setCrashCallback(Lcom/nirvana/tools/crash/OnCrashCallbackProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    return-void
.end method

.method throw2OtherHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mOtherExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public unRegister()V
    .locals 1

    iget-object v0, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mOtherExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->isMainThread(Ljava/lang/Thread;)Z

    move-result v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mStackAnalyzer:Lcom/nirvana/tools/crash/StackAnalyzer;

    invoke-virtual {v2, v9}, Lcom/nirvana/tools/crash/StackAnalyzer;->checkJavaCrashInSdk(Ljava/lang/String;)Lcom/nirvana/tools/crash/SdkInfo;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v12, "uuid"

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    const-string v8, "java"

    move-object v5, v9

    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v11}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-virtual {v1, v10, p1, p2, v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->uploadException(Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)Z

    return-void

    :cond_2
    if-eqz v10, :cond_3

    iget-object v0, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-virtual {v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->isUcUsable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v11}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->mCrashUcSdk:Lcom/nirvana/tools/crash/CrashUcSdk;

    invoke-virtual {v2, v10, p1, p2, v0}, Lcom/nirvana/tools/crash/CrashUcSdk;->generateCustomLogUploadItrace(Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, "java"

    move-object v5, v9

    move-object v6, v1

    invoke-virtual/range {v2 .. v8}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->onCrashCallbackProxy:Lcom/nirvana/tools/crash/OnCrashCallbackProxy;

    invoke-virtual {v10}, Lcom/nirvana/tools/crash/SdkInfo;->getSdkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v9, v1}, Lcom/nirvana/tools/crash/OnCrashCallbackProxy;->onCrashUploadFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/nirvana/tools/crash/ThreadUncaughtExceptionHandler;->throw2OtherHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
