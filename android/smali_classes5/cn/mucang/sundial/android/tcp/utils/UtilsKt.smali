.class public final Lcn/mucang/sundial/android/tcp/utils/UtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u001a+\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "",
        "url",
        "Ljava/io/File;",
        "path",
        "md5",
        "",
        "downloadURLToFile",
        "(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)J",
        "base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final downloadURLToFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/http/a;->q()Lcn/mucang/android/core/http/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/mucang/android/core/http/a;->v(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-nez p2, :cond_0

    .line 4
    invoke-static {p0, v1}, Lcn/mucang/android/core/utils/j;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x2000

    new-array p1, p1, [B

    const-string v0, "MD5"

    .line 5
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1, p1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 8
    invoke-virtual {v0, p1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/j;->a([B)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 11
    invoke-static {p2, p1, v0}, Lkotlin/text/l;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr p1, v2

    .line 13
    invoke-static {p0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return-wide p1

    .line 15
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "md5\u4e0d\u4e00\u81f4,md5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",realMd5="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_2
    move-object v0, p0

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v1, v0

    :goto_3
    move-object v0, p0

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v1, v0

    :goto_4
    move-object v0, p0

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_7

    :catch_4
    move-exception p1

    move-object v1, v0

    :goto_5
    :try_start_4
    const-string p0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 16
    invoke-static {p0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3
    move-exception p1

    goto :goto_7

    :catch_5
    move-exception p1

    move-object v1, v0

    .line 18
    :goto_6
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 19
    :goto_7
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 20
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p1
.end method
