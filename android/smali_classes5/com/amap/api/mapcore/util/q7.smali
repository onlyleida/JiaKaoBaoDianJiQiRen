.class public Lcom/amap/api/mapcore/util/q7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/amap/api/mapcore/util/z6;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/z6;->F()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "ofm"

    const-string v1, "dlo"

    .line 2
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static b(Lcom/amap/api/mapcore/util/z6;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore/util/z6;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z6;->x(Ljava/lang/String;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/z6;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "ofm"

    const-string v0, "dlo"

    .line 4
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static c(Lcom/amap/api/mapcore/util/p7;)V
    .locals 9

    const-string v0, "code"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/p7;->f:Lcom/amap/api/mapcore/util/k8;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/k8;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/p7;->f:Lcom/amap/api/mapcore/util/k8;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/k8;->b(Z)V

    .line 3
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/p7;->a:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/p7;->b:J

    invoke-static {v2, v3, v3, v4, v5}, Lcom/amap/api/mapcore/util/z6;->d(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/z6;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {v2, p0, v4}, Lcom/amap/api/mapcore/util/q7;->f(Lcom/amap/api/mapcore/util/z6;Lcom/amap/api/mapcore/util/p7;Ljava/util/List;)[B

    move-result-object v5

    if-eqz v5, :cond_4

    .line 6
    array-length v6, v5

    if-nez v6, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v6, Lcom/amap/api/mapcore/util/d6;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/p7;->c:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Lcom/amap/api/mapcore/util/d6;-><init>([BLjava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/amap/api/mapcore/util/f7;->a()Lcom/amap/api/mapcore/util/f7;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/amap/api/mapcore/util/f7;->e(Lcom/amap/api/mapcore/util/k7;)[B

    move-result-object v6

    .line 9
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p7;->f:Lcom/amap/api/mapcore/util/k8;

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 12
    array-length v3, v5

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore/util/k8;->a(I)V

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/p7;->f:Lcom/amap/api/mapcore/util/k8;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/k8;->d()I

    move-result p0

    const v0, 0x7fffffff

    if-ge p0, v0, :cond_2

    .line 14
    invoke-static {v2, v4}, Lcom/amap/api/mapcore/util/q7;->b(Lcom/amap/api/mapcore/util/z6;Ljava/util/List;)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {v2}, Lcom/amap/api/mapcore/util/q7;->a(Lcom/amap/api/mapcore/util/z6;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 16
    :try_start_2
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/z6;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-void

    :catchall_1
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 18
    :try_start_3
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catchall_3
    move-exception p0

    :goto_3
    :try_start_4
    const-string v0, "leg"

    const-string v2, "uts"

    .line 20
    invoke-static {p0, v0, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_7

    .line 21
    :try_start_5
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_7
    :goto_4
    return-void

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :cond_8
    :goto_5
    throw p0
.end method

.method public static d(Ljava/lang/String;[BLcom/amap/api/mapcore/util/p7;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p2, Lcom/amap/api/mapcore/util/p7;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/amap/api/mapcore/util/q7;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p2, Lcom/amap/api/mapcore/util/p7;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_1
    iget-wide v2, p2, Lcom/amap/api/mapcore/util/p7;->b:J

    iget v4, p2, Lcom/amap/api/mapcore/util/p7;->d:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    const/4 v4, 0x1

    invoke-static {v1, v4, v4, v2, v3}, Lcom/amap/api/mapcore/util/z6;->d(Ljava/io/File;IIJ)Lcom/amap/api/mapcore/util/z6;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :try_start_1
    iget v2, p2, Lcom/amap/api/mapcore/util/p7;->d:I

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/z6;->h(I)V

    .line 7
    iget-object p2, p2, Lcom/amap/api/mapcore/util/p7;->e:Lcom/amap/api/mapcore/util/w6;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore/util/w6;->b([B)[B

    move-result-object p1

    .line 8
    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore/util/z6;->n(Ljava/lang/String;)Lcom/amap/api/mapcore/util/z6$d;

    move-result-object p0

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/z6$d;->b(I)Ljava/io/OutputStream;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/z6$d;->c()V

    .line 12
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->C()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 15
    :try_start_3
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object v1, v0

    :goto_2
    if-eqz v0, :cond_4

    .line 17
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 19
    :try_start_5
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/z6;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :cond_5
    :goto_4
    throw p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "leg"

    const-string v0, "fet"

    .line 3
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static f(Lcom/amap/api/mapcore/util/z6;Lcom/amap/api/mapcore/util/p7;Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore/util/z6;",
            "Lcom/amap/api/mapcore/util/p7;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/z6;->s()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    const-string v6, ".0"

    .line 5
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "\\."

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7
    aget-object v5, v5, v0

    .line 8
    invoke-static {p0, v5, v0}, Lcom/amap/api/mapcore/util/w7;->f(Lcom/amap/api/mapcore/util/z6;Ljava/lang/String;Z)[B

    move-result-object v6

    .line 9
    array-length v7, v6

    add-int/2addr v4, v7

    .line 10
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v5, p1, Lcom/amap/api/mapcore/util/p7;->f:Lcom/amap/api/mapcore/util/k8;

    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/k8;->d()I

    move-result v5

    if-le v4, v5, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    iget-object v5, p1, Lcom/amap/api/mapcore/util/p7;->g:Lcom/amap/api/mapcore/util/e8;

    invoke-virtual {v5, v6}, Lcom/amap/api/mapcore/util/e8;->c([B)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    :goto_2
    iget-object p0, p1, Lcom/amap/api/mapcore/util/p7;->g:Lcom/amap/api/mapcore/util/e8;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/e8;->a()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "leg"

    const-string p2, "gCo"

    .line 14
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-array p0, v0, [B

    return-object p0
.end method
