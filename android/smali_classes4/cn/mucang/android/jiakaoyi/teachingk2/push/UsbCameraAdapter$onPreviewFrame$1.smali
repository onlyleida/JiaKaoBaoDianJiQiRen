.class final Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$onPreviewFrame$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->onPreviewFrame([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$onPreviewFrame$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$onPreviewFrame$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$onPreviewFrame$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->f(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;)Lcn/mucang/android/jky/camera/CameraIntent;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jky/camera/CameraIntent;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,\u89c6\u9891\u6d41\u65ad\u5f00\u4e86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter$onPreviewFrame$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;->h(Lcn/mucang/android/jiakaoyi/teachingk2/push/UsbCameraAdapter;Lcn/mucang/android/facelib/TimeOut;)V

    return-void
.end method
