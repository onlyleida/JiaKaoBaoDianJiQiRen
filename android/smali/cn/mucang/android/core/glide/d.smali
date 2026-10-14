.class public Lcn/mucang/android/core/glide/d;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lokhttp3/ResponseBody;

.field private c:Lcn/mucang/android/core/glide/b;

.field private d:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/ResponseBody;Lcn/mucang/android/core/glide/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/glide/d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/glide/d;->b:Lokhttp3/ResponseBody;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/core/glide/d;->c:Lcn/mucang/android/core/glide/b;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/glide/d;)Lcn/mucang/android/core/glide/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/glide/d;->c:Lcn/mucang/android/core/glide/b;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/core/glide/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/glide/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/glide/d$a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/glide/d$a;-><init>(Lcn/mucang/android/core/glide/d;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/glide/d;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/glide/d;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/glide/d;->d:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/glide/d;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/core/glide/d;->c(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/glide/d;->d:Lokio/BufferedSource;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/glide/d;->d:Lokio/BufferedSource;

    return-object v0
.end method
