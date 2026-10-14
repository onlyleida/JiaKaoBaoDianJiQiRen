.class Lg/e/a/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/e/a/a$a;->onConnect(Landroid/hardware/usb/UsbDevice;Lcom/serenegiant/usb/USBMonitor$UsbControlBlock;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/e/a/a$a;


# direct methods
.method constructor <init>(Lg/e/a/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a$a$a;->a:Lg/e/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lg/e/a/a$a$a;->a:Lg/e/a/a$a;

    iget-object v0, v0, Lg/e/a/a$a;->b:Lg/e/a/a;

    invoke-static {v0}, Lg/e/a/a;->c(Lg/e/a/a;)Lcom/serenegiant/usb/widget/CameraViewInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/e/a/a;->s(Lcom/serenegiant/usb/widget/CameraViewInterface;)V

    return-void
.end method
