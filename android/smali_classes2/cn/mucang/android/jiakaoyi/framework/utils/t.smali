.class public final Lcn/mucang/android/jiakaoyi/framework/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J2\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\u0008J\u0010\u0010\u0013\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u001a\u0010\u0014\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001a\u0010\u0015\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0006\u0010\u0016\u001a\u00020\u0008R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/utils/Downloader;",
        "",
        "url",
        "",
        "path",
        "md5",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "doDownload",
        "",
        "cacheFile",
        "Ljava/io/File;",
        "totalSize",
        "",
        "downloadCallback",
        "Lcn/mucang/android/jiakaoyi/framework/utils/DownloadCallback;",
        "inputStream",
        "Ljava/io/InputStream;",
        "fileOutputStream",
        "Ljava/io/FileOutputStream;",
        "download",
        "downloadByOkHttp",
        "downloadByURLConnection",
        "execute",
        "Companion",
        "framework_release"
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

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->c:Ljava/lang/String;

    return-void
.end method

.method private final a(Ljava/io/File;JLcn/mucang/android/jiakaoyi/framework/utils/s;Ljava/io/InputStream;Ljava/io/FileOutputStream;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 2
    :goto_0
    invoke-virtual {p5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 3
    invoke-virtual {p6}, Ljava/io/FileOutputStream;->flush()V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->c:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 6
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->c:Ljava/lang/String;

    invoke-static {p4, p2, p3}, Lkotlin/text/l;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p4

    if-nez p4, :cond_1

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25\uff0cMD5\u6821\u9a8c\u4e0d\u901a\u8fc7\uff0c\u8ba1\u7b97md5:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",\u4e0b\u53d1md5:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->c:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return v4

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "\u6587\u4ef6\u4e0b\u8f7d\u5b8c\u6210\uff0c\u6587\u4ef6\u5927\u5c0f:"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return p3

    .line 11
    :cond_2
    invoke-virtual {p6, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 12
    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v3, v2

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 13
    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/utils/d;

    invoke-direct {v2, p4, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/utils/d;-><init>(Lcn/mucang/android/jiakaoyi/framework/utils/s;Lkotlin/jvm/internal/Ref$IntRef;J)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static final b(Lcn/mucang/android/jiakaoyi/framework/utils/s;Lkotlin/jvm/internal/Ref$IntRef;J)V
    .locals 1

    const-string v0, "$downloadSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    long-to-float p2, p2

    div-float/2addr p1, p2

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/s;->a(F)V

    :goto_0
    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/framework/utils/s;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-interface {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/s;->a(F)V

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/s;->b()V

    :goto_1
    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/framework/utils/s;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/s;->b()V

    :goto_0
    return-void
.end method

.method private final g(Lcn/mucang/android/jiakaoyi/framework/utils/s;Ljava/io/File;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/http/a;->q()Lcn/mucang/android/core/http/a;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/mucang/android/core/http/a;->w(Ljava/lang/String;)Lcn/mucang/android/core/http/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lcn/mucang/android/core/http/b;->a()J

    move-result-wide v2

    const-string v4, "okhttp \u6587\u4ef6\u4e0b\u8f7d totalSize "

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const-wide/32 v2, 0x7800000

    :cond_0
    move-wide v6, v2

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/core/http/b;->c()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, p0

    move-object v5, p2

    move-object v8, p1

    move-object v9, v1

    move-object v10, v2

    .line 6
    :try_start_2
    invoke-direct/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->a(Ljava/io/File;JLcn/mucang/android/jiakaoyi/framework/utils/s;Ljava/io/InputStream;Ljava/io/FileOutputStream;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 8
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 9
    :cond_1
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "response is null"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 10
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_2
    const-string p2, "\u6587\u4ef6\u4e0b\u8f7d\u5f02\u5e38\uff0c\u5220\u6389\u4e34\u65f6\u6587\u4ef6:"

    .line 12
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 14
    :goto_3
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 15
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private final h(Lcn/mucang/android/jiakaoyi/framework/utils/s;Ljava/io/File;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v2, 0xbb8

    .line 3
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "HttpURLConnection \u6587\u4ef6\u4e0b\u8f7d totalSize "

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const-wide/32 v2, 0x7800000

    :cond_0
    move-wide v6, v2

    .line 7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, p0

    move-object v5, p2

    move-object v8, p1

    move-object v9, v1

    move-object v10, v2

    .line 9
    :try_start_2
    invoke-direct/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->a(Ljava/io/File;JLcn/mucang/android/jiakaoyi/framework/utils/s;Ljava/io/InputStream;Ljava/io/FileOutputStream;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    invoke-static {v1}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 12
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v2, v0

    .line 13
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 15
    :cond_2
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->b:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    const-string p2, "\u6587\u4ef6\u4e0b\u8f7d\u5f02\u5e38\uff0c\u5220\u6389\u4e34\u65f6\u6587\u4ef6:"

    .line 16
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 17
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 18
    :goto_3
    invoke-static {v0}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 19
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/framework/utils/s;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->f(Lcn/mucang/android/jiakaoyi/framework/utils/s;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/framework/utils/s;Lkotlin/jvm/internal/Ref$IntRef;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->b(Lcn/mucang/android/jiakaoyi/framework/utils/s;Lkotlin/jvm/internal/Ref$IntRef;J)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/framework/utils/s;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->e(Lcn/mucang/android/jiakaoyi/framework/utils/s;)V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->d(Lcn/mucang/android/jiakaoyi/framework/utils/s;)Z

    move-result v0

    return v0
.end method

.method public final d(Lcn/mucang/android/jiakaoyi/framework/utils/s;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/e;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/e;-><init>(Lcn/mucang/android/jiakaoyi/framework/utils/s;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return v2

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->b:Ljava/lang/String;

    const-string v1, "-d"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    add-int/2addr v3, v2

    const/4 v4, 0x2

    .line 7
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 10
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    if-ne v3, v2, :cond_4

    .line 13
    invoke-direct {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->g(Lcn/mucang/android/jiakaoyi/framework/utils/s;Ljava/io/File;)Z

    move-result v5

    goto :goto_2

    .line 14
    :cond_4
    invoke-direct {p0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->h(Lcn/mucang/android/jiakaoyi/framework/utils/s;Ljava/io/File;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_5

    .line 15
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->b:Ljava/lang/String;

    invoke-static {v0, v5}, Lcn/mucang/android/core/utils/m;->r(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/utils/c;

    invoke-direct {v5, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/utils/s;)V

    invoke-static {v5}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return v2

    .line 17
    :cond_5
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->b:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    if-ge v3, v4, :cond_6

    goto :goto_0

    .line 18
    :cond_6
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25\uff0cmd5\u6821\u9a8c\u6ca1\u901a\u8fc7"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 19
    :cond_7
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7236\u6587\u4ef6\u65f6null"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    .line 20
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/framework/utils/t;->b:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    if-ge v3, v4, :cond_8

    goto :goto_0

    .line 21
    :cond_8
    throw v5
.end method

.method public final i()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/t;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
