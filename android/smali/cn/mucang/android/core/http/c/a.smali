.class public Lcn/mucang/android/core/http/c/a;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/http/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lokhttp3/MediaType;

.field private final c:Lcn/mucang/android/core/http/c/b;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Ljava/io/File;Lcn/mucang/android/core/http/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/http/c/a;->b:Lokhttp3/MediaType;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/http/c/a;->a:Ljava/io/File;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/core/http/c/a;->c:Lcn/mucang/android/core/http/c/b;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/http/c/a;)Lcn/mucang/android/core/http/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/http/c/a;->c:Lcn/mucang/android/core/http/c/b;

    return-object p0
.end method

.method public static b(Lokhttp3/MediaType;Ljava/io/File;Lcn/mucang/android/core/http/c/b;)Lokhttp3/RequestBody;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/http/c/a;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/core/http/c/a;-><init>(Lokhttp3/MediaType;Ljava/io/File;Lcn/mucang/android/core/http/c/b;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/http/c/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/http/c/a;->b:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/http/c/a;->c:Lcn/mucang/android/core/http/c/b;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/http/c/a$a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/http/c/a$a;-><init>(Lcn/mucang/android/core/http/c/a;Lokio/Sink;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/core/http/c/a;->a:Ljava/io/File;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    invoke-interface {p1}, Lokio/Sink;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 8
    invoke-interface {p1}, Lokio/Sink;->close()V

    .line 9
    throw v1
.end method
