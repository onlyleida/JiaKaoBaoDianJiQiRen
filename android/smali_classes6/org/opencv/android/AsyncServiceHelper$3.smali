.class Lorg/opencv/android/AsyncServiceHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/opencv/android/AsyncServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/opencv/android/AsyncServiceHelper;


# direct methods
.method constructor <init>(Lorg/opencv/android/AsyncServiceHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const-string p1, "Calling using callback"

    const-string v0, "Unbind from service"

    const-string v1, "OpenCVManager/Helper"

    const-string v2, "Service connection created"

    .line 1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    invoke-static {p2}, Lorg/opencv/engine/OpenCVEngineInterface$Stub;->asInterface(Landroid/os/IBinder;)Lorg/opencv/engine/OpenCVEngineInterface;

    move-result-object p2

    iput-object p2, v2, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    .line 3
    iget-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object p2, p2, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    if-nez p2, :cond_0

    const-string p1, "OpenCV Manager Service connection fails. May be service was not installed?"

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object p2, p1, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object p1, p1, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-static {p2, p1}, Lorg/opencv/android/AsyncServiceHelper;->InstallService(Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)V

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x0

    .line 6
    sput-boolean v2, Lorg/opencv/android/AsyncServiceHelper;->mServiceInstallationProgress:Z

    const/16 v3, 0xff

    .line 7
    :try_start_0
    invoke-interface {p2}, Lorg/opencv/engine/OpenCVEngineInterface;->getEngineVersion()I

    move-result p2

    const/4 v4, 0x2

    if-ge p2, v4, :cond_1

    const-string p2, "Init finished with status 4"

    .line 8
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v2, p2, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object p2, p2, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 11
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object p2, p2, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v2, 0x4

    invoke-interface {p2, v2}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    return-void

    :cond_1
    const-string p2, "Trying to get library path"

    .line 13
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, p2, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    iget-object p2, p2, Lorg/opencv/android/AsyncServiceHelper;->mOpenCVersion:Ljava/lang/String;

    invoke-interface {v4, p2}, Lorg/opencv/engine/OpenCVEngineInterface;->getLibPathByVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v4, "Trying to get library list"

    .line 16
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sput-boolean v2, Lorg/opencv/android/AsyncServiceHelper;->mLibraryInstallationProgress:Z

    .line 18
    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v5, v4, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper;->mOpenCVersion:Ljava/lang/String;

    invoke-interface {v5, v4}, Lorg/opencv/engine/OpenCVEngineInterface;->getLibraryList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library list: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "First attempt to load libs"

    .line 20
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v5, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    invoke-static {v5, p2, v4}, Lorg/opencv/android/AsyncServiceHelper;->access$000(Lorg/opencv/android/AsyncServiceHelper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "First attempt to load libs is OK"

    .line 22
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "line.separator"

    .line 23
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {}, Lorg/opencv/core/Core;->getBuildInformation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, p2, v5

    .line 25
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string p2, "First attempt to load libs fails"

    .line 26
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xff

    .line 27
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init finished with status "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, p2, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object p2, p2, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 30
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object p2, p2, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {p2, v2}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    goto :goto_3

    .line 32
    :cond_5
    :goto_1
    sget-boolean p2, Lorg/opencv/android/AsyncServiceHelper;->mLibraryInstallationProgress:Z

    if-nez p2, :cond_6

    .line 33
    new-instance p2, Lorg/opencv/android/AsyncServiceHelper$3$1;

    invoke-direct {p2, p0}, Lorg/opencv/android/AsyncServiceHelper$3$1;-><init>(Lorg/opencv/android/AsyncServiceHelper$3;)V

    .line 34
    iget-object v4, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v4, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v4, v2, p2}, Lorg/opencv/android/LoaderCallbackInterface;->onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V

    goto :goto_2

    .line 35
    :cond_6
    new-instance p2, Lorg/opencv/android/AsyncServiceHelper$3$2;

    invoke-direct {p2, p0}, Lorg/opencv/android/AsyncServiceHelper$3$2;-><init>(Lorg/opencv/android/AsyncServiceHelper$3;)V

    .line 36
    iget-object v2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v2, v2, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v4, 0x1

    invoke-interface {v2, v4, p2}, Lorg/opencv/android/LoaderCallbackInterface;->onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p2

    .line 37
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p2, "Init finished with status 255"

    .line 38
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v0, p2, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object p2, p2, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 41
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object p1, p1, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {p1, v3}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    :goto_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    return-void
.end method
