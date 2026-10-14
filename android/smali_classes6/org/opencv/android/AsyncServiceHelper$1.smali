.class Lorg/opencv/android/AsyncServiceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/opencv/android/InstallCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/AsyncServiceHelper;->InstallService(Landroid/content/Context;Lorg/opencv/android/LoaderCallbackInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

.field final synthetic val$AppContext:Landroid/content/Context;

.field final synthetic val$Callback:Lorg/opencv/android/LoaderCallbackInterface;


# direct methods
.method constructor <init>(Lorg/opencv/android/LoaderCallbackInterface;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$Callback:Lorg/opencv/android/LoaderCallbackInterface;

    iput-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$AppContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$1;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "OpenCVManager/Helper"

    const-string v1, "OpenCV library installation was canceled"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init finished with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Calling using callback"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$1;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v0, v2}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "OpenCV Manager"

    return-object v0
.end method

.method public install()V
    .locals 4

    const-string v0, "OpenCVManager/Helper"

    const-string v1, "Trying to install OpenCV Manager via Google Play"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lorg/opencv/android/AsyncServiceHelper$1;->val$AppContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/opencv/android/AsyncServiceHelper;->InstallServiceQuiet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3
    sput-boolean v1, Lorg/opencv/android/AsyncServiceHelper;->mServiceInstallationProgress:Z

    const-string v1, "Package installation started"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "OpenCV package was not installed!"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init finished with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Unbind from service"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Calling using callback"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$1;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v0, v1}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    :goto_0
    return-void
.end method

.method public wait_install()V
    .locals 2

    const-string v0, "OpenCVManager/Helper"

    const-string v1, "Installation was not started! Nothing to wait!"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
