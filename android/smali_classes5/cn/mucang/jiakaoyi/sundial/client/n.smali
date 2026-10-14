.class public final Lcn/mucang/jiakaoyi/sundial/client/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/opencv/android/LoaderCallbackInterface;
.implements Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/sundial/client/n$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0006\u0010\u001a\u001a\u00020\rJ\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u001c\u001a\u00020\rR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/client/SilenceCamera;",
        "Lorg/opencv/android/LoaderCallbackInterface;",
        "Lcn/mucang/android/jky/camera/UsbCameraManager$UsbCameraListener;",
        "()V",
        "frameCallback",
        "Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;",
        "openCVIsSuccess",
        "",
        "picFileCallback",
        "Lcn/mucang/jiakaoyi/sundial/client/SilenceCamera$PicFileCallback;",
        "sourceVideoStream",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoStream;",
        "init",
        "",
        "onConnect",
        "onDisconnect",
        "onManagerConnected",
        "status",
        "",
        "onPackageInstall",
        "operation",
        "callback",
        "Lorg/opencv/android/InstallCallbackInterface;",
        "onPreviewFrame",
        "data",
        "",
        "release",
        "setPicFileCallback",
        "takePhoto",
        "PicFileCallback",
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


# instance fields
.field private a:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

.field private b:Lcn/mucang/jiakaoyi/sundial/client/n$a;

.field private c:Lcn/mucang/android/jiakaoyi/framework/camera/b;


# direct methods
.method public static final synthetic a(Lcn/mucang/jiakaoyi/sundial/client/n;)Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/client/n;->a:Lcn/mucang/jiakaoyi/sundial/client/FrameCallback;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/sundial/client/n;)Lcn/mucang/jiakaoyi/sundial/client/n$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/client/n;->b:Lcn/mucang/jiakaoyi/sundial/client/n$a;

    return-object p0
.end method

.method public static final synthetic c(Lcn/mucang/jiakaoyi/sundial/client/n;)Lcn/mucang/android/jiakaoyi/framework/camera/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/sundial/client/n;->c:Lcn/mucang/android/jiakaoyi/framework/camera/b;

    return-object p0
.end method
