.class public Lcn/mucang/jiakaoyi/uilib/socket/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/socket/u;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Z
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/16 v2, 0x12

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result v0

    return v0
.end method

.method public static c(Lcn/mucang/android/jiakaoyi/signal/ai/a;)Z
    .locals 2

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->a:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/a;->d:I

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->y([BI)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->L(B[B)Z

    move-result p0

    return p0

    .line 9
    :cond_1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/16 v1, -0x3e

    invoke-static {p0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static d(J)Z
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 v0, 0x56

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static e(JJ)Z
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 p2, 0x53

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static f(JB)Z
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 p2, 0x54

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static g(JJBB)Z
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 p2, 0x55

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static h(IIB)Z
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 p2, -0x6a

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static i(JBI)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8003\u573aid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\u57fa\u7ad9id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u79d1\u76ee:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/16 v0, 0xd

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 p2, 0x21

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static j([BB)Z
    .locals 2

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u4e0a\u62a5\u7ed9\u670d\u52a1\u5668\u6321\u4f4d\u6570\u636e\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 v0, 0x73

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static k(IZ)Z
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p0, p0

    .line 2
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    xor-int/lit8 p0, p1, 0x1

    int-to-byte p0, p0

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 v0, 0x72

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static l(DDIBB)Z
    .locals 1

    const/16 v0, 0x13

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    int-to-byte p0, p4

    .line 4
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0, p6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/16 p1, 0x20

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p0

    .line 8
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->L(B[B)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(I)Z
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short p0, p0

    .line 2
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/16 v1, -0x6c

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static o(II)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static q(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {p0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static r(Ljava/nio/ByteBuffer;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->y([BI)[B

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->L(B[B)Z

    move-result p0

    return p0

    .line 4
    :cond_2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/16 v1, -0x80

    invoke-static {p0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->b()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/16 v1, 0x25

    invoke-static {p0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static t(Z)Z
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    int-to-byte p0, p0

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    const/16 p0, -0x70

    invoke-static {v1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static u(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/socket/model/CmdModel;)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget p1, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/CmdModel;->id:I

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/16 p1, 0x30

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p0

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static v(I)Z
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static w(I)Z
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method public static x(ILjava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    array-length p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/socket/t;->a()Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/socket/s;->c([BB)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/socket/MCSocketManager;->K([B)Z

    move-result p0

    return p0
.end method

.method private static y([BI)[B
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/socket/u;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 2
    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
