.class Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;

.field private b:Lkotlin/reflect/jvm/internal/impl/protobuf/m;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field final synthetic g:Lkotlin/reflect/jvm/internal/impl/protobuf/r;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->b()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    if-eqz v0, :cond_1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->c:I

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->e:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    .line 4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;->d()Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    .line 6
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->size()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->c:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    .line 8
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->c:I

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/r$a;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;

    .line 2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;->d()Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    .line 3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->size()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->c:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    .line 5
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->e:I

    return-void
.end method

.method private c([BII)I
    .locals 4

    move v0, p3

    :goto_0
    if-lez v0, :cond_2

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->a()V

    .line 2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    if-nez v1, :cond_0

    if-ne v0, p3, :cond_2

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->c:I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    sub-int/2addr v1, v2

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1

    .line 5
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->m([BIII)V

    add-int/2addr p2, v1

    .line 6
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    sub-int/2addr p3, v0

    return p3
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->e:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public mark(I)V
    .locals 1

    .line 1
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->e:I

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->f:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->a()V

    .line 6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 7
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->d:I

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->C(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->c([BII)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->f:I

    invoke-direct {p0, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->c([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    .line 1
    invoke-direct {p0, v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;->c([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
