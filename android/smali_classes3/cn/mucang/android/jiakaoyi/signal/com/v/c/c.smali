.class public Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;
.super Lcn/mucang/android/jiakaoyi/signal/com/v/a;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Landroid/serialport/SerialPort;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/signal/com/v/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->e:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->f:I

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u4e32\u53e3:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcn/mucang/android/jiakaoyi/framework/utils/q;->a:Z

    if-eqz p3, :cond_0

    const-string p1, "v600"

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->h:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/rscja/deviceapi/b;->b()Lcom/rscja/deviceapi/b;

    move-result-object v0

    const/4 v1, 0x5

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/rscja/deviceapi/b;->c(II)Z
    :try_end_0
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/b;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->a:Ljava/io/InputStream;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/f/c;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->b:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "v600\u521d\u59cb\u5316\u5931\u8d25"

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v1
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
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/q;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->g:Landroid/serialport/SerialPort;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/serialport/SerialPort;->close()V

    :cond_1
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
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/framework/utils/q;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->c()V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->e:Ljava/lang/String;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->f:I

    invoke-static {v0, v1}, Landroid/serialport/SerialPort;->newBuilder(Ljava/lang/String;I)Landroid/serialport/SerialPort$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/serialport/SerialPort$Builder;->build()Landroid/serialport/SerialPort;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->g:Landroid/serialport/SerialPort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v0, 0xc8

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 5
    :try_start_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->g:Landroid/serialport/SerialPort;

    invoke-virtual {v0}, Landroid/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->a:Ljava/io/InputStream;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->g:Landroid/serialport/SerialPort;

    invoke-virtual {v0}, Landroid/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->b:Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e32\u53e3init 2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e32\u53e3init 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/a;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/ComState;->ErrorInitial:Lcn/mucang/android/jiakaoyi/signal/com/ComState;

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/signal/com/exception/ComException;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/names/ComName;Lcn/mucang/android/jiakaoyi/signal/com/ComState;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->f:I

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/v/c/c;->h:Ljava/lang/String;

    return-object v0
.end method
