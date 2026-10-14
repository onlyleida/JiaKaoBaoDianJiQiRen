.class public Lcom/serenegiant/media/MediaData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field flags:I

.field mBuffer:Ljava/nio/ByteBuffer;

.field presentationTimeUs:J

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/serenegiant/media/MediaData;->resize(I)Lcom/serenegiant/media/MediaData;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/serenegiant/media/MediaData;->flags:I

    iput v0, p0, Lcom/serenegiant/media/MediaData;->size:I

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 15
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public get(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 13
    iget v2, p0, Lcom/serenegiant/media/MediaData;->size:I

    iget-wide v3, p0, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    iget v5, p0, Lcom/serenegiant/media/MediaData;->flags:I

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-void
.end method

.method public get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    if-lt v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/serenegiant/media/MediaData;->size:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 5
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public presentationTimeUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    return-wide v0
.end method

.method public resize(I)Lcom/serenegiant/media/MediaData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public set(Ljava/nio/ByteBuffer;IIJI)V
    .locals 0

    .line 2
    iput-wide p4, p0, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    .line 3
    iput p3, p0, Lcom/serenegiant/media/MediaData;->size:I

    .line 4
    iput p6, p0, Lcom/serenegiant/media/MediaData;->flags:I

    .line 5
    invoke-virtual {p0, p3}, Lcom/serenegiant/media/MediaData;->resize(I)Lcom/serenegiant/media/MediaData;

    if-eqz p1, :cond_0

    if-le p3, p2, :cond_0

    add-int/2addr p3, p2

    .line 6
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object p2, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    iget-object p1, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public set(Ljava/nio/ByteBuffer;IJ)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/serenegiant/media/MediaData;->set(Ljava/nio/ByteBuffer;IIJI)V

    return-void
.end method

.method public set(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 11
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/serenegiant/media/MediaData;->presentationTimeUs:J

    if-eqz p1, :cond_0

    .line 12
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/serenegiant/media/MediaData;->size:I

    .line 13
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v1, p0, Lcom/serenegiant/media/MediaData;->flags:I

    .line 14
    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 15
    invoke-virtual {p0, v0}, Lcom/serenegiant/media/MediaData;->resize(I)Lcom/serenegiant/media/MediaData;

    if-eqz p1, :cond_1

    .line 16
    iget v0, p0, Lcom/serenegiant/media/MediaData;->size:I

    if-le v0, p2, :cond_1

    add-int/2addr v0, p2

    .line 17
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 19
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    iget-object p2, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 21
    iget-object p1, p0, Lcom/serenegiant/media/MediaData;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/media/MediaData;->size:I

    return v0
.end method
