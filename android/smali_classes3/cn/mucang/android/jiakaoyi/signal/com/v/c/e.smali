.class public Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;
.super Lcn/mucang/android/jiakaoyi/signal/com/v/a;
.source "SourceFile"


# instance fields
.field private e:Lcom/felhr/usbserial/j;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    return-void
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;Lcom/felhr/usbserial/j;)Lcom/felhr/usbserial/j;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;->e:Lcom/felhr/usbserial/j;

    return-object p1
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->a:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->b:Ljava/io/OutputStream;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->close()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;->e:Lcom/felhr/usbserial/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/felhr/usbserial/j;->m()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e$a;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/e$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/v/c/e;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/u;->c(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/communicate/u$a;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "TAG"

    const-string v2, "usb\u4e32\u53e3\u6253\u5f00\u5931\u8d25"

    .line 4
    invoke-static {v1, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public v()I
    .locals 1

    const/16 v0, 0x2d00

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    const-string v0, "usb"

    return-object v0
.end method
