.class public Lcom/serenegiant/usb/HandlerThreadHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerThreadHandler"


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public static final createHandler()Lcom/serenegiant/usb/HandlerThreadHandler;
    .locals 1

    const-string v0, "HandlerThreadHandler"

    .line 1
    invoke-static {v0}, Lcom/serenegiant/usb/HandlerThreadHandler;->createHandler(Ljava/lang/String;)Lcom/serenegiant/usb/HandlerThreadHandler;

    move-result-object v0

    return-object v0
.end method

.method public static final createHandler(Landroid/os/Handler$Callback;)Lcom/serenegiant/usb/HandlerThreadHandler;
    .locals 1

    const-string v0, "HandlerThreadHandler"

    .line 5
    invoke-static {v0, p0}, Lcom/serenegiant/usb/HandlerThreadHandler;->createHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Lcom/serenegiant/usb/HandlerThreadHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final createHandler(Ljava/lang/String;)Lcom/serenegiant/usb/HandlerThreadHandler;
    .locals 1

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance p0, Lcom/serenegiant/usb/HandlerThreadHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/serenegiant/usb/HandlerThreadHandler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public static final createHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Lcom/serenegiant/usb/HandlerThreadHandler;
    .locals 1

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance p0, Lcom/serenegiant/usb/HandlerThreadHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/serenegiant/usb/HandlerThreadHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object p0
.end method
