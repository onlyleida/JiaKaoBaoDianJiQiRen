.class Lcom/amap/api/mapcore/util/z6$d$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/z6$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/z6$d;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/z6$d;Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/z6$d$a;->a:Lcom/amap/api/mapcore/util/z6$d;

    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/z6$d;Ljava/io/OutputStream;Lcom/amap/api/mapcore/util/z6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/z6$d$a;-><init>(Lcom/amap/api/mapcore/util/z6$d;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z6$d$a;->a:Lcom/amap/api/mapcore/util/z6$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/z6$d;->d(Lcom/amap/api/mapcore/util/z6$d;Z)Z

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z6$d$a;->a:Lcom/amap/api/mapcore/util/z6$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/z6$d;->d(Lcom/amap/api/mapcore/util/z6$d;Z)Z

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z6$d$a;->a:Lcom/amap/api/mapcore/util/z6$d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/z6$d;->d(Lcom/amap/api/mapcore/util/z6$d;Z)Z

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z6$d$a;->a:Lcom/amap/api/mapcore/util/z6$d;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/z6$d;->d(Lcom/amap/api/mapcore/util/z6$d;Z)Z

    :goto_0
    return-void
.end method
