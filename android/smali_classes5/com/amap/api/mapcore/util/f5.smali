.class public Lcom/amap/api/mapcore/util/f5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/f5$b;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-static {}, Lcom/amap/api/mapcore/util/c5;->c()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "0"

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "CI"

    const-string v3, "TS"

    .line 5
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/f5$b;

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/f5$b;-><init>(Lcom/amap/api/mapcore/util/f5$a;)V

    .line 2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/c5;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iput-object v2, v1, Lcom/amap/api/mapcore/util/f5$b;->d:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/amap/api/mapcore/util/c5;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iput-object v2, v1, Lcom/amap/api/mapcore/util/f5$b;->i:Ljava/lang/String;

    .line 6
    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/f5;->c(Landroid/content/Context;Lcom/amap/api/mapcore/util/f5$b;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string v1, "CI"

    const-string v2, "IX"

    .line 7
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/amap/api/mapcore/util/f5$b;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/f5;->l(Landroid/content/Context;Lcom/amap/api/mapcore/util/f5$b;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/h5;->f([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ":"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/c5;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/k5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "CI"

    const-string p2, "Sco"

    .line 3
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore/util/f5;->j(Landroid/content/Context;ZZ)Lcom/amap/api/mapcore/util/f5$b;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/f5;->c(Landroid/content/Context;Lcom/amap/api/mapcore/util/f5$b;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "CI"

    const-string v0, "gCXi"

    .line 2
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->o(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/amap/api/mapcore/util/n5;->j(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    new-array v0, p1, [B

    .line 5
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/n5;->j(Ljava/io/ByteArrayOutputStream;B[B)V

    :goto_1
    return-void
.end method

.method private static g(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->s([B)[B

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/f5;->m(Landroid/content/Context;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;ZZ)[B
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/f5;->j(Landroid/content/Context;ZZ)Lcom/amap/api/mapcore/util/f5$b;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/f5;->l(Landroid/content/Context;Lcom/amap/api/mapcore/util/f5$b;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "CI"

    const-string p2, "gz"

    .line 2
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Landroid/content/Context;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/h5;->b([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static j(Landroid/content/Context;ZZ)Lcom/amap/api/mapcore/util/f5$b;
    .locals 4

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/f5$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/f5$b;-><init>(Lcom/amap/api/mapcore/util/f5$a;)V

    .line 2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->a0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->a:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->R(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->b:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    .line 6
    :cond_0
    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->c:Ljava/lang/String;

    .line 7
    invoke-static {p0}, Lcom/amap/api/mapcore/util/c5;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->d:Ljava/lang/String;

    .line 8
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->e:Ljava/lang/String;

    .line 9
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->f:Ljava/lang/String;

    .line 10
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->g:Ljava/lang/String;

    .line 11
    invoke-static {p0}, Lcom/amap/api/mapcore/util/c5;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->h:Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lcom/amap/api/mapcore/util/c5;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->i:Ljava/lang/String;

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->j:Ljava/lang/String;

    .line 14
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->k:Ljava/lang/String;

    .line 15
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->Y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->l:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->V(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->m:Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->U(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->n:Ljava/lang/String;

    .line 18
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->o:Ljava/lang/String;

    .line 19
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->p:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 20
    iput-object v2, v0, Lcom/amap/api/mapcore/util/f5$b;->q:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->q:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_2

    .line 22
    iput-object v2, v0, Lcom/amap/api/mapcore/util/f5$b;->r:Ljava/lang/String;

    goto :goto_1

    .line 23
    :cond_2
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->r:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 24
    iput-object v2, v0, Lcom/amap/api/mapcore/util/f5$b;->s:Ljava/lang/String;

    .line 25
    iput-object v2, v0, Lcom/amap/api/mapcore/util/f5$b;->t:Ljava/lang/String;

    goto :goto_2

    .line 26
    :cond_3
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->S(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 27
    aget-object v3, p1, v3

    iput-object v3, v0, Lcom/amap/api/mapcore/util/f5$b;->s:Ljava/lang/String;

    .line 28
    aget-object p1, p1, v1

    iput-object p1, v0, Lcom/amap/api/mapcore/util/f5$b;->t:Ljava/lang/String;

    .line 29
    :goto_2
    invoke-static {}, Lcom/amap/api/mapcore/util/g5;->q()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/mapcore/util/f5$b;->w:Ljava/lang/String;

    .line 30
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 32
    iput-object p1, v0, Lcom/amap/api/mapcore/util/f5$b;->x:Ljava/lang/String;

    goto :goto_3

    .line 33
    :cond_4
    iput-object v2, v0, Lcom/amap/api/mapcore/util/f5$b;->x:Ljava/lang/String;

    .line 34
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aid="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 36
    sget-boolean p1, Lcom/amap/api/mapcore/util/y5;->f:Z

    if-nez p1, :cond_6

    :cond_5
    sget-boolean p1, Lcom/amap/api/mapcore/util/y5;->g:Z

    if-eqz p1, :cond_7

    .line 37
    :cond_6
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|oaid="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    :cond_7
    const-string p1, ","

    .line 40
    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore/util/g5;->s(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|multiImeis="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    .line 43
    :cond_8
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->b0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|meid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    .line 46
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|serial="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    .line 47
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|adiuExtras="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    .line 50
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|storage="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/api/mapcore/util/g5;->E()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "|ram="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->d0(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|arch="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Lcom/amap/api/mapcore/util/g5;->H()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/f5;->e(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroid/content/Context;Lcom/amap/api/mapcore/util/f5$b;)[B
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 3
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 4
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 5
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 6
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 7
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 8
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 9
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 10
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 11
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 12
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 13
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 14
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 15
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 16
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 17
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 18
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 19
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 20
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 21
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->t:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 22
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->u:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 23
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->v:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 24
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 25
    iget-object v2, p1, Lcom/amap/api/mapcore/util/f5$b;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 26
    iget-object p1, p1, Lcom/amap/api/mapcore/util/f5$b;->y:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/f5;->f(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/f5;->g(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v1, v0

    :goto_1
    :try_start_3
    const-string p1, "CI"

    const-string v2, "gzx"

    .line 30
    invoke-static {p0, p1, v2}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v1, :cond_0

    .line 31
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v0

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_1

    .line 33
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    :cond_1
    :goto_3
    throw p0
.end method

.method public static m(Landroid/content/Context;[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/n5;->y()Ljava/security/PublicKey;

    move-result-object p0

    .line 2
    array-length v0, p1

    const/16 v1, 0x75

    if-le v0, v1, :cond_0

    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/h5;->c([BLjava/security/Key;)[B

    move-result-object p0

    .line 5
    array-length v0, p1

    const/16 v3, 0x80

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 6
    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    array-length p0, p1

    sub-int/2addr p0, v1

    invoke-static {p1, v1, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p0}, Lcom/amap/api/mapcore/util/h5;->c([BLjava/security/Key;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method
