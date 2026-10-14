.class public Lcom/amap/api/mapcore/util/z7;
.super Lcom/amap/api/mapcore/util/e8;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/amap/api/mapcore/util/w6;

.field private f:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/e8;Lcom/amap/api/mapcore/util/w6;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/e8;-><init>(Lcom/amap/api/mapcore/util/e8;)V

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/z7;->c:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/amap/api/mapcore/util/z7;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/amap/api/mapcore/util/z7;->e:Lcom/amap/api/mapcore/util/w6;

    .line 5
    iput-object p5, p0, Lcom/amap/api/mapcore/util/z7;->f:[Ljava/lang/Object;

    return-void
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z7;->d:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/z7;->f:[Ljava/lang/Object;

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "ofm"

    const-string v1, "gpj"

    .line 5
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
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
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/z7;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z7;->e:Lcom/amap/api/mapcore/util/w6;

    .line 3
    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->o(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/w6;->b([B)[B

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->g([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected b([B)[B
    .locals 3
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
    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->g([B)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z7;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/z7;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"pinfo\":\""

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"els\":["

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]}"

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/n5;->o(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
