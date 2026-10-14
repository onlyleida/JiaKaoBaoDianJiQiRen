.class public final synthetic Lcn/mucang/android/jky/camera/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jky/camera/UsbCameraThread;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jky/camera/UsbCameraThread;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jky/camera/v;->a:Lcn/mucang/android/jky/camera/UsbCameraThread;

    iput-object p2, p0, Lcn/mucang/android/jky/camera/v;->b:Ljava/lang/Object;

    iput p3, p0, Lcn/mucang/android/jky/camera/v;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jky/camera/v;->a:Lcn/mucang/android/jky/camera/UsbCameraThread;

    iget-object v1, p0, Lcn/mucang/android/jky/camera/v;->b:Ljava/lang/Object;

    iget v2, p0, Lcn/mucang/android/jky/camera/v;->c:I

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jky/camera/UsbCameraThread;->d(Lcn/mucang/android/jky/camera/UsbCameraThread;Ljava/lang/Object;I)V

    return-void
.end method
