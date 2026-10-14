.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/camera/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/SundialVideoFactory;",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;",
        "()V",
        "createSource",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/jiakaoyi/framework/camera/b;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->SundialCameraFromAi:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/j0;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;)V

    :goto_0
    return-object v0
.end method
