.class Lorg/opencv/android/AsyncServiceHelper$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/opencv/android/InstallCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/AsyncServiceHelper$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/opencv/android/AsyncServiceHelper$3;


# direct methods
.method constructor <init>(Lorg/opencv/android/AsyncServiceHelper$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "OpenCVManager/Helper"

    const-string v1, "OpenCV library installation was canceled"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    sput-boolean v1, Lorg/opencv/android/AsyncServiceHelper;->mLibraryInstallationProgress:Z

    const-string v1, "Init finished with status 3"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Unbind from service"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v1, v1, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v2, v1, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, v1, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v1, "Calling using callback"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "OpenCV library"

    return-object v0
.end method

.method public install()V
    .locals 2

    const-string v0, "OpenCVManager/Helper"

    const-string v1, "Nothing to install we just wait current installation"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public wait_install()V
    .locals 5

    const-string v0, "Calling using callback"

    const-string v1, "Unbind from service"

    const-string v2, "OpenCVManager/Helper"

    const-string v3, "Waiting for current installation"

    .line 1
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v3, Lorg/opencv/android/AsyncServiceHelper;->mEngineService:Lorg/opencv/engine/OpenCVEngineInterface;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mOpenCVersion:Ljava/lang/String;

    invoke-interface {v4, v3}, Lorg/opencv/engine/OpenCVEngineInterface;->installVersion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "OpenCV package was not installed!"

    .line 3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Init finished with status 2"

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    goto :goto_0

    :cond_0
    const-string v3, "Waiting for package installation"

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v3, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v4, v3, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v3, v3, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 10
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v3, "Init finished with status 255"

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v1, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v1, v1, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v3, v1, Lorg/opencv/android/AsyncServiceHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, v1, Lorg/opencv/android/AsyncServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$3$2;->this$1:Lorg/opencv/android/AsyncServiceHelper$3;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper$3;->this$0:Lorg/opencv/android/AsyncServiceHelper;

    iget-object v0, v0, Lorg/opencv/android/AsyncServiceHelper;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    :goto_1
    return-void
.end method
