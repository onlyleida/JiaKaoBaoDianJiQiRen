.class public Lcn/mucang/android/core/encode/Digests;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MD5:Ljava/lang/String; = "MD5"

.field private static final SHA1:Ljava/lang/String; = "SHA-1"

.field private static random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcn/mucang/android/core/encode/Digests;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digest(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/16 v0, 0x2000

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 9
    invoke-virtual {p1, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 10
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcn/mucang/android/core/encode/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static digest([BLjava/lang/String;[BI)[B
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 p2, 0x1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 5
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/encode/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static generateSalt(I)[B
    .locals 1

    .line 1
    new-array p0, p0, [B

    .line 2
    sget-object v0, Lcn/mucang/android/core/encode/Digests;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/encode/Digests;->md5([B)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/encode/a;->e([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/encode/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static md5(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "MD5"

    .line 7
    invoke-static {p0, v0}, Lcn/mucang/android/core/encode/Digests;->digest(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5([B)[B
    .locals 3

    const-string v0, "MD5"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {p0, v0, v1, v2}, Lcn/mucang/android/core/encode/Digests;->digest([BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5([B[B)[B
    .locals 2

    const-string v0, "MD5"

    const/4 v1, 0x1

    .line 5
    invoke-static {p0, v0, p1, v1}, Lcn/mucang/android/core/encode/Digests;->digest([BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5([B[BI)[B
    .locals 1

    const-string v0, "MD5"

    .line 6
    invoke-static {p0, v0, p1, p2}, Lcn/mucang/android/core/encode/Digests;->digest([BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/encode/Digests;->sha1([B)[B

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/encode/a;->e([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/encode/b;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static sha1(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 7
    invoke-static {p0, v0}, Lcn/mucang/android/core/encode/Digests;->digest(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1([B)[B
    .locals 3

    const-string v0, "SHA-1"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcn/mucang/android/core/encode/Digests;->digest([BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1([B[B)[B
    .locals 2

    const-string v0, "SHA-1"

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lcn/mucang/android/core/encode/Digests;->digest([BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1([B[BI)[B
    .locals 1

    const-string v0, "SHA-1"

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcn/mucang/android/core/encode/Digests;->digest([BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method
