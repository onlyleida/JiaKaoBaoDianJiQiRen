.class public final synthetic Lcn/mucang/android/jky/camera/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jky/camera/CameraIntent;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jky/camera/CameraIntent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/camera/b;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    iput p2, p0, Lcn/mucang/android/jky/camera/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jky/camera/b;->a:Lcn/mucang/android/jky/camera/CameraIntent;

    iget v1, p0, Lcn/mucang/android/jky/camera/b;->b:I

    invoke-static {v0, v1}, Lcn/mucang/android/jky/camera/UsbCameraManager;->b(Lcn/mucang/android/jky/camera/CameraIntent;I)V

    return-void
.end method
