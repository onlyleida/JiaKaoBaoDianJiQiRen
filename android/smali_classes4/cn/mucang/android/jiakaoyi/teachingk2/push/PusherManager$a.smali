.class public final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/opencv/android/LoaderCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$init$2",
        "Lorg/opencv/android/LoaderCallbackInterface;",
        "onManagerConnected",
        "",
        "status",
        "",
        "onPackageInstall",
        "operation",
        "callback",
        "Lorg/opencv/android/InstallCallbackInterface;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerConnected(I)V
    .locals 0

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    const/4 p1, 0x1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->p(Z)V

    return-void
.end method

.method public onPackageInstall(ILorg/opencv/android/InstallCallbackInterface;)V
    .locals 0

    return-void
.end method
