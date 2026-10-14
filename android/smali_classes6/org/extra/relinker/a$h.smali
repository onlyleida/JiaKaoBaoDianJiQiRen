.class public Lorg/extra/relinker/a$h;
.super Lorg/extra/relinker/a$e;
.source "SourceFile"


# instance fields
.field private final g:Lorg/extra/relinker/a$j;


# direct methods
.method public constructor <init>(ZLorg/extra/relinker/a$j;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/extra/relinker/a$e;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/extra/relinker/a$e;->a:Z

    .line 3
    iput-object p2, p0, Lorg/extra/relinker/a$h;->g:Lorg/extra/relinker/a$j;

    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    .line 6
    invoke-virtual {p2, v0, v1, v2}, Lorg/extra/relinker/a$j;->e(Ljava/nio/ByteBuffer;J)I

    const-wide/16 v1, 0x1c

    .line 7
    invoke-virtual {p2, v0, v1, v2}, Lorg/extra/relinker/a$j;->j(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/extra/relinker/a$e;->b:J

    const-wide/16 v1, 0x20

    .line 8
    invoke-virtual {p2, v0, v1, v2}, Lorg/extra/relinker/a$j;->j(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/extra/relinker/a$e;->c:J

    const-wide/16 v1, 0x2a

    .line 9
    invoke-virtual {p2, v0, v1, v2}, Lorg/extra/relinker/a$j;->e(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lorg/extra/relinker/a$e;->d:I

    const-wide/16 v1, 0x2c

    .line 10
    invoke-virtual {p2, v0, v1, v2}, Lorg/extra/relinker/a$j;->e(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lorg/extra/relinker/a$e;->e:I

    const-wide/16 v1, 0x2e

    .line 11
    invoke-virtual {p2, v0, v1, v2}, Lorg/extra/relinker/a$j;->e(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lorg/extra/relinker/a$e;->f:I

    const-wide/16 v1, 0x30

    .line 12
    invoke-virtual {p2, v0, v1, v2}, Lorg/extra/relinker/a$j;->e(Ljava/nio/ByteBuffer;J)I

    const-wide/16 v1, 0x32

    .line 13
    invoke-virtual {p2, v0, v1, v2}, Lorg/extra/relinker/a$j;->e(Ljava/nio/ByteBuffer;J)I

    return-void
.end method


# virtual methods
.method public a(JI)Lorg/extra/relinker/a$d;
    .locals 7

    .line 1
    new-instance v6, Lorg/extra/relinker/a$b;

    iget-object v1, p0, Lorg/extra/relinker/a$h;->g:Lorg/extra/relinker/a$j;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/extra/relinker/a$b;-><init>(Lorg/extra/relinker/a$j;Lorg/extra/relinker/a$e;JI)V

    return-object v6
.end method

.method public b(J)Lorg/extra/relinker/a$f;
    .locals 2

    .line 1
    new-instance v0, Lorg/extra/relinker/a$k;

    iget-object v1, p0, Lorg/extra/relinker/a$h;->g:Lorg/extra/relinker/a$j;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/extra/relinker/a$k;-><init>(Lorg/extra/relinker/a$j;Lorg/extra/relinker/a$e;J)V

    return-object v0
.end method

.method public c(I)Lorg/extra/relinker/a$g;
    .locals 2

    .line 1
    new-instance v0, Lorg/extra/relinker/a$m;

    iget-object v1, p0, Lorg/extra/relinker/a$h;->g:Lorg/extra/relinker/a$j;

    invoke-direct {v0, v1, p0, p1}, Lorg/extra/relinker/a$m;-><init>(Lorg/extra/relinker/a$j;Lorg/extra/relinker/a$e;I)V

    return-object v0
.end method
