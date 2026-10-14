.class public final synthetic Lcn/mucang/android/jky/camera/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jky/camera/UsbCameraThread;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jky/camera/UsbCameraThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/camera/u;->a:Lcn/mucang/android/jky/camera/UsbCameraThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jky/camera/u;->a:Lcn/mucang/android/jky/camera/UsbCameraThread;

    invoke-static {v0}, Lcn/mucang/android/jky/camera/UsbCameraThread;->c(Lcn/mucang/android/jky/camera/UsbCameraThread;)V

    return-void
.end method
