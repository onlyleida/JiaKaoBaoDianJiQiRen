.class public final Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0006\u0010\u001e\u001a\u00020\u001cJ\u0018\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/dtu/G781Model;",
        "",
        "()V",
        "COMMAND_ICCID",
        "",
        "COMMAND_IMEI",
        "COMMAND_PWD",
        "COMMAND_VER",
        "IP_ADDRESS",
        "SplitByte",
        "",
        "SplitTo",
        "SplitTo1",
        "inputStream",
        "Ljava/io/InputStream;",
        "lastByte",
        "Ljava/lang/Byte;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "socket",
        "Ljava/net/Socket;",
        "checkTimeout",
        "",
        "timeout",
        "",
        "startTime",
        "",
        "configG781tcp",
        "",
        "decode",
        "listenG781SimInfo",
        "sendData",
        "cmd",
        "teachbase_release"
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
.field private final a:Ljava/lang/String;

.field private final b:B

.field private final c:B

.field private final d:B

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/net/Socket;

.field private j:Ljava/io/InputStream;

.field private k:Ljava/io/OutputStream;

.field private l:Ljava/lang/Byte;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://192.168.118.1"

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->a:Ljava/lang/String;

    const/16 v0, 0xd

    .line 3
    iput-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->b:B

    const/16 v0, 0xa

    .line 4
    iput-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->c:B

    const/16 v0, 0x2b

    .line 5
    iput-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->d:B

    const-string v0, "www.usr.cn"

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->e:Ljava/lang/String;

    const-string v0, "#AT+imei"

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->f:Ljava/lang/String;

    const-string v0, "#AT+iccid"

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->g:Ljava/lang/String;

    const-string v0, "#AT+ver"

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->h:Ljava/lang/String;

    return-void
.end method

.method private final a(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    if-lez p1, :cond_1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    int-to-long p1, p1

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final c(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    const-wide/16 v3, 0x1

    if-gtz v2, :cond_1

    .line 3
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 4
    invoke-direct {p0, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->a(IJ)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 6
    iget-byte v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->b:B

    if-eq v5, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_3

    .line 8
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 9
    invoke-direct {p0, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->a(IJ)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 11
    iget-byte v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->c:B

    if-eq v3, v2, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    .line 13
    iget-byte v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->d:B

    if-ne v3, v2, :cond_0

    const/16 p2, 0x400

    new-array v2, p2, [B

    const/4 v3, 0x0

    const/4 p2, 0x0

    .line 14
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 15
    aput-byte v0, v2, p2

    .line 16
    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->b:B

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->l:Ljava/lang/Byte;

    const/4 v5, 0x1

    if-nez v4, :cond_6

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_9

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->c:B

    if-ne v1, v0, :cond_9

    sub-int/2addr p2, v5

    .line 17
    new-array p1, p2, [B

    if-nez p2, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    xor-int/2addr v0, v5

    if-eqz v0, :cond_8

    .line 18
    invoke-static {v2, v3, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    :cond_8
    sget-object p2, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_9
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->l:Ljava/lang/Byte;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method private final e(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 3
    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->b:B

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 4
    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->c:B

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 6
    iget-byte p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->b:B

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 7
    iget-byte p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->c:B

    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 9
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/x;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-DTU IP:"

    .line 2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v1, "application/x-www-form-urlencoded"

    .line 3
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src_file=sockets_cn.html&cmd_save=para set user.socka.enable=ON;para set user.socka.type=TCPC;para set user.socka.server="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";para set user.socka.port=2317;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->a:Ljava/lang/String;

    const-string v4, "/cgi-bin/httpd.cgi"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Authorization"

    const-string v4, "Basic YWRtaW46YWRtaW4="

    .line 6
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 7
    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 8
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-DTU "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 12

    const-string v0, "-DTU "

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "-DTU \u5f00\u59cb\u5c1d\u8bd5\u83b7\u53d6G781\u578bSIM\u5361\u4fe1\u606f"

    .line 1
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v3, Ljava/net/ServerSocket;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/com/n;->c:Lcn/mucang/android/jiakaoyi/signal/com/n;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/com/n;->b:I

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    const-string v4, "-DTU \u542f\u52a8\u670d\u52a1\u5668...."

    .line 3
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->i:Ljava/net/Socket;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-DTU \u5ba2\u6237\u7aef: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->i:Ljava/net/Socket;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u8fde\u63a5\u5230\u670d\u52a1\u5668"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->i:Ljava/net/Socket;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->j:Ljava/io/InputStream;

    .line 7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->i:Ljava/net/Socket;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->k:Ljava/io/OutputStream;

    .line 8
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->e:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->h:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->e(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->j:Ljava/io/InputStream;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/16 v4, 0x7d0

    invoke-direct {p0, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->c(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->e()Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v11

    const-string v6, "VER:"

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 12
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->k:Ljava/io/OutputStream;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->e:Ljava/lang/String;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->g:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->e(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 13
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->j:Ljava/io/InputStream;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v5, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->c(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->b()Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v5

    const-string v7, "ICCID:"

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 16
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->k:Ljava/io/OutputStream;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->e:Ljava/lang/String;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->f:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->e(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 17
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->j:Ljava/io/InputStream;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v5, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->c(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-static {v0, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->c()Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v4

    const-string v7, "IMEI:"

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->i()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 21
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/c;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 22
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->j:Ljava/io/InputStream;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->k:Ljava/io/OutputStream;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->i:Ljava/net/Socket;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 26
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->j:Ljava/io/InputStream;

    .line 27
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->k:Ljava/io/OutputStream;

    .line 28
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->i:Ljava/net/Socket;

    return v2

    .line 29
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->j:Ljava/io/InputStream;

    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 30
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->k:Ljava/io/OutputStream;

    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 31
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->i:Ljava/net/Socket;

    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 32
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->j:Ljava/io/InputStream;

    .line 33
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->k:Ljava/io/OutputStream;

    .line 34
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dtu/d;->i:Ljava/net/Socket;

    throw v0
.end method
