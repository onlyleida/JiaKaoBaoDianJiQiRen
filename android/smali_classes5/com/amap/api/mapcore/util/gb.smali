.class public Lcom/amap/api/mapcore/util/gb;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/gb;->a:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/gb;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/gb;->c:Ljava/lang/String;

    const-string v0, "1900"

    .line 5
    iput-object v0, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string v0, "UnknownError"

    .line 6
    iput-object v0, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    .line 8
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->a:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/gb;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lcom/amap/api/mapcore/util/gb;->b:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/amap/api/mapcore/util/gb;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x15

    .line 4
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    const-string p1, "1902"

    .line 5
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string p1, "IOException"

    .line 6
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x16

    .line 8
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto/16 :goto_0

    :cond_1
    const-string v0, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x17

    .line 10
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    const-string p1, "1802"

    .line 11
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string p1, "SocketTimeoutException"

    .line 12
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x18

    .line 14
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    const-string p1, "1901"

    .line 15
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string p1, "IllegalArgumentException"

    .line 16
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string v0, "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x19

    .line 18
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    const-string p1, "1903"

    .line 19
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string p1, "NullPointException"

    .line 20
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v0, "url\u5f02\u5e38 - MalformedURLException"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x1a

    .line 22
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    const-string p1, "1803"

    .line 23
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string p1, "MalformedURLException"

    .line 24
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v0, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x1b

    .line 26
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    const-string p1, "1804"

    .line 27
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string p1, "UnknownHostException"

    .line 28
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x1c

    .line 30
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    const-string p1, "1805"

    .line 31
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string p1, "CannotConnectToHostException"

    .line 32
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x1d

    .line 34
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    const-string p1, "1801"

    .line 35
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string p1, "ProtocolException"

    .line 36
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x1e

    .line 38
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    const-string p1, "1806"

    .line 39
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    const-string p1, "ConnectionException"

    .line 40
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0x1f

    .line 42
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto/16 :goto_0

    :cond_a
    const-string v0, "key\u9274\u6743\u5931\u8d25"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0x20

    .line 44
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto/16 :goto_0

    :cond_b
    const-string v0, "requeust is null"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    .line 46
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto/16 :goto_0

    :cond_c
    const-string v0, "request url is empty"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x2

    .line 48
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto :goto_0

    :cond_d
    const-string v0, "response is null"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x3

    .line 50
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto :goto_0

    :cond_e
    const-string v0, "thread pool has exception"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p1, 0x4

    .line 52
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto :goto_0

    :cond_f
    const-string v0, "sdk name is invalid"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x5

    .line 54
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto :goto_0

    :cond_10
    const-string v0, "sdk info is null"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x6

    .line 56
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto :goto_0

    :cond_11
    const-string v0, "sdk packages is null"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p1, 0x7

    .line 58
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto :goto_0

    :cond_12
    const-string v0, "\u7ebf\u7a0b\u6c60\u4e3a\u7a7a"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p1, 0x8

    .line 60
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto :goto_0

    :cond_13
    const-string v0, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/16 p1, 0x65

    .line 62
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    goto :goto_0

    :cond_14
    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/amap/api/mapcore/util/gb;->f:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gb;->c:Ljava/lang/String;

    return-object v0
.end method
