.class Lkotlin/reflect/jvm/internal/impl/protobuf/r;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/r$d;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/r$b;
    }
.end annotation


# static fields
.field private static final h:[I


# instance fields
.field private final b:I

.field private final c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private final d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private final e:I

.field private final f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-lez v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->h:[I

    const/4 v1, 0x0

    .line 5
    :goto_1
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->h:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->g:I

    .line 4
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 5
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->e:I

    .line 7
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b:I

    .line 8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->o()I

    move-result p1

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->o()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method static synthetic C(Lkotlin/reflect/jvm/internal/impl/protobuf/r;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic D(Lkotlin/reflect/jvm/internal/impl/protobuf/r;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic E()[I
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->h:[I

    return-object v0
.end method

.method static F(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 6

    .line 1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move-object p0, p1

    goto/16 :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v2

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-ge v2, v3, :cond_3

    .line 5
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->G(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 6
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v3, :cond_4

    .line 7
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->G(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    move-result-object p0

    .line 8
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-direct {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 9
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->o()I

    move-result v3

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->o()I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->o()I

    move-result v3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->o()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 10
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-direct {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    .line 11
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-direct {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->o()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->o()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 13
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->h:[I

    aget v0, v3, v0

    if-lt v2, v0, :cond_6

    .line 14
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    move-object p0, v0

    goto :goto_2

    .line 15
    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$b;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/r$a;)V

    invoke-static {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r$b;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private static G(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/m;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v1

    add-int v2, v0, v1

    .line 3
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3, v3, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->m([BIII)V

    .line 5
    invoke-virtual {p1, v2, v3, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->m([BIII)V

    .line 6
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;-><init>([B)V

    return-object p0
.end method

.method private H(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Z
    .locals 11

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/r$a;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    .line 3
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;

    invoke-direct {v3, p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/r$a;)V

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    :goto_0
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .line 6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->size()I

    move-result v8

    sub-int/2addr v8, v5

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v2, p1, v5, v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->D(Lkotlin/reflect/jvm/internal/impl/protobuf/m;II)Z

    move-result v10

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2, v4, v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->D(Lkotlin/reflect/jvm/internal/impl/protobuf/m;II)Z

    move-result v10

    :goto_1
    if-nez v10, :cond_1

    return v1

    :cond_1
    add-int/2addr v6, v9

    .line 9
    iget v10, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b:I

    if-lt v6, v10, :cond_3

    if-ne v6, v10, :cond_2

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    if-ne v9, v7, :cond_4

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    add-int/2addr v4, v9

    :goto_2
    if-ne v9, v8, :cond_5

    .line 12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    add-int/2addr v5, v9

    goto :goto_0
.end method


# virtual methods
.method B(Ljava/io/OutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    .line 1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->e:I

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->B(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_0
    if-lt p2, v1, :cond_1

    .line 3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->B(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    .line 4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->B(Ljava/io/OutputStream;II)V

    .line 5
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->B(Ljava/io/OutputStream;II)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b:I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b:I

    if-nez v1, :cond_3

    return v0

    .line 5
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->g:I

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->w()I

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->g:I

    if-eq v1, v0, :cond_4

    return v2

    .line 8
    :cond_4
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->H(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->g:I

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->u(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->g:I

    :cond_1
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->r()Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;

    move-result-object v0

    return-object v0
.end method

.method protected n([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->e:I

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->n([BIII)V

    goto :goto_0

    :cond_0
    if-lt p2, v1, :cond_1

    .line 3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->n([BIII)V

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    .line 4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->n([BIII)V

    .line 5
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->n([BIII)V

    :goto_0
    return-void
.end method

.method protected o()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->f:I

    return v0
.end method

.method protected p()Z
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b:I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->h:[I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->f:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->v(III)I

    move-result v0

    .line 2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->v(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public r()Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;
    .locals 2

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/r$a;)V

    return-object v0
.end method

.method public s()Lkotlin/reflect/jvm/internal/impl/protobuf/e;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/r$e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/r;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g(Ljava/io/InputStream;)Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b:I

    return v0
.end method

.method protected u(III)I
    .locals 2

    add-int v0, p2, p3

    .line 1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->e:I

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->u(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->u(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->u(III)I

    move-result p1

    .line 5
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->u(III)I

    move-result p1

    return p1
.end method

.method protected v(III)I
    .locals 2

    add-int v0, p2, p3

    .line 1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->e:I

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->v(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->v(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->v(III)I

    move-result p1

    .line 5
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->v(III)I

    move-result p1

    return p1
.end method

.method protected w()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->g:I

    return v0
.end method

.method public y(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->x()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
