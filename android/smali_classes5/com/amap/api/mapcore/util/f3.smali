.class public Lcom/amap/api/mapcore/util/f3;
.super Lcom/amap/api/mapcore/util/x3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/f3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/x3<",
        "Lcom/amap/api/mapcore/util/f3$a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/amap/api/mapcore/util/f3$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x3;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)Lcom/amap/api/mapcore/util/f3$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x3;->a:Lcom/amap/api/mapcore/util/y3;

    check-cast v0, Lcom/amap/api/mapcore/util/f3$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/f3$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/f3$a;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/amap/api/mapcore/util/y3;->a:Lcom/amap/api/mapcore/util/y3;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/x3;->a:Lcom/amap/api/mapcore/util/y3;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/amap/api/mapcore/util/y3;->a:Lcom/amap/api/mapcore/util/y3;

    .line 5
    :goto_0
    iget v1, v0, Lcom/amap/api/mapcore/util/f3$a;->e:I

    if-ge v1, p1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/f3$a;->b(I)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/f3;->b:Lcom/amap/api/mapcore/util/f3$a;

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/y3;->a(Lcom/amap/api/mapcore/util/y3;Lcom/amap/api/mapcore/util/y3;)Lcom/amap/api/mapcore/util/y3;

    move-object p1, v0

    check-cast p1, Lcom/amap/api/mapcore/util/f3$a;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/f3;->b:Lcom/amap/api/mapcore/util/f3$a;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/f3;->b:Lcom/amap/api/mapcore/util/f3$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/x3;->b(Lcom/amap/api/mapcore/util/y3;)Lcom/amap/api/mapcore/util/y3;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/f3$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/f3;->b:Lcom/amap/api/mapcore/util/f3$a;

    return-void
.end method

.method public e(I)Ljava/nio/ShortBuffer;
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/f3;->c(I)Lcom/amap/api/mapcore/util/f3$a;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/amap/api/mapcore/util/f3$a;->c:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/amap/api/mapcore/util/f3$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iget-object v0, p1, Lcom/amap/api/mapcore/util/f3$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/mapcore/util/f3$a;->c:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    :goto_0
    iget-object p1, p1, Lcom/amap/api/mapcore/util/f3$a;->c:Ljava/nio/ShortBuffer;

    return-object p1
.end method

.method public f(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p1, p1, 0x4

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/f3;->c(I)Lcom/amap/api/mapcore/util/f3$a;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/amap/api/mapcore/util/f3$a;->d:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/amap/api/mapcore/util/f3$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iget-object v0, p1, Lcom/amap/api/mapcore/util/f3$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/mapcore/util/f3$a;->d:Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/amap/api/mapcore/util/f3$a;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    iget-object p1, p1, Lcom/amap/api/mapcore/util/f3$a;->d:Ljava/nio/FloatBuffer;

    return-object p1
.end method
