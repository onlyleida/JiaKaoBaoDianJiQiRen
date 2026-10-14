.class public final synthetic Lcn/mucang/android/jky/camera/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jky/camera/CameraIntent;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jky/camera/CameraIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/camera/g;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jky/camera/g;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    invoke-static {v0}, Lcn/mucang/android/jky/camera/UsbCameraManager;->g(Lcn/mucang/android/jky/camera/CameraIntent;)V

    return-void
.end method
