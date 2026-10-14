.class Lorg/opencv/android/AsyncServiceHelper$2;
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
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$2;->val$Callback:Lorg/opencv/android/LoaderCallbackInterface;

    iput-object p2, p0, Lorg/opencv/android/AsyncServiceHelper$2;->val$AppContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/opencv/android/AsyncServiceHelper$2;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "OpenCVManager/Helper"

    const-string v1, "Waiting for OpenCV canceled by user"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    sput-boolean v1, Lorg/opencv/android/AsyncServiceHelper;->mServiceInstallationProgress:Z

    .line 3
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

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$2;->mUserAppCallback:Lorg/opencv/android/LoaderCallbackInterface;

    invoke-interface {v0, v2}, Lorg/opencv/android/LoaderCallbackInterface;->onManagerConnected(I)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "OpenCV Manager"

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
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/opencv/android/AsyncServiceHelper$2;->val$AppContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/opencv/android/AsyncServiceHelper;->InstallServiceQuiet(Landroid/content/Context;)Z

    return-void
.end method
