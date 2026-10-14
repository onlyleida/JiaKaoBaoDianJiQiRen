.class public Lorg/extra/relinker/a$n;
.super Lorg/extra/relinker/a$g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/extra/relinker/a$j;Lorg/extra/relinker/a$e;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/extra/relinker/a$g;-><init>()V

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-boolean v1, p2, Lorg/extra/relinker/a$e;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    iget-wide v1, p2, Lorg/extra/relinker/a$e;->c:J

    iget p2, p2, Lorg/extra/relinker/a$e;->f:I

    mul-int p3, p3, p2

    int-to-long p2, p3

    add-long/2addr v1, p2

    const-wide/16 p2, 0x2c

    add-long/2addr v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lorg/extra/relinker/a$j;->j(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/extra/relinker/a$g;->a:J

    return-void
.end method
