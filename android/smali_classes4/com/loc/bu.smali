.class public final Lcom/loc/bu;
.super Lcom/loc/bz;
.source "SourceFile"


# instance fields
.field private a:Lcom/loc/ay;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/loc/bz;-><init>()V

    new-instance v0, Lcom/loc/ba;

    invoke-direct {v0}, Lcom/loc/ba;-><init>()V

    iput-object v0, p0, Lcom/loc/bu;->a:Lcom/loc/ay;

    return-void
.end method

.method public constructor <init>(Lcom/loc/bz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/bz;-><init>(Lcom/loc/bz;)V

    new-instance p1, Lcom/loc/ba;

    invoke-direct {p1}, Lcom/loc/ba;-><init>()V

    iput-object p1, p0, Lcom/loc/bu;->a:Lcom/loc/ay;

    return-void
.end method


# virtual methods
.method protected final a([B)[B
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

    iget-object v0, p0, Lcom/loc/bu;->a:Lcom/loc/ay;

    invoke-virtual {v0, p1}, Lcom/loc/ay;->b([B)[B

    move-result-object p1

    return-object p1
.end method
