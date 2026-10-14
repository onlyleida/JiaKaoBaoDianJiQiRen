.class public final Lcn/mucang/jiakaoyi/sundial/client/SundialClient$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/camera/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->u(Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/jiakaoyi/sundial/client/SundialClient$init$1",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;",
        "createSource",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "sundial_release"
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
.method public a()Lcn/mucang/android/jiakaoyi/framework/camera/b;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;

    sget-object v1, Lcn/mucang/android/jky/camera/CameraIntent;->FACE:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-direct {v0, v1}, Lcn/mucang/jiakaoyi/sundial/client/DefaultCameraAdapter;-><init>(Lcn/mucang/android/jky/camera/CameraIntent;)V

    return-object v0
.end method
