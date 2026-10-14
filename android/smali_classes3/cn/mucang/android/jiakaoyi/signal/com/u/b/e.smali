.class public Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/com/u/a;


# instance fields
.field private final a:Z

.field private final b:S

.field private final c:[B

.field private final d:[B

.field private e:I


# direct methods
.method public constructor <init>(ZS)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->a:Z

    .line 3
    iput-short p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->b:S

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->e:I

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    const/16 p1, 0x800

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->d:[B

    return-void
.end method

.method private c(ZZ)B
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x80

    int-to-byte p1, p1

    if-eqz p2, :cond_1

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->e:I

    int-to-short v0, v0

    return v0
.end method

.method public b([BIIIZSZ)[B
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->e:I

    const/4 v2, 0x0

    const v3, 0xffff

    if-le v0, v3, :cond_0

    .line 2
    iput v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->e:I

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    int-to-byte p4, p4

    invoke-static {v0, p4, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->g([BBI)I

    move-result p4

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    invoke-direct {p0, p5, p7}, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c(ZZ)B

    move-result p5

    invoke-static {v0, p5, p4}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->g([BBI)I

    move-result p4

    .line 5
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    iget-boolean p7, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->a:Z

    invoke-static {p5, p6, p4, p7}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->j([BSIZ)I

    move-result p4

    .line 6
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    iget p6, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->e:I

    int-to-short p6, p6

    iget-boolean p7, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->a:Z

    invoke-static {p5, p6, p4, p7}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->j([BSIZ)I

    move-result p4

    .line 7
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    iget-short p6, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->b:S

    iget-boolean p7, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->a:Z

    invoke-static {p5, p6, p4, p7}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->j([BSIZ)I

    move-result p4

    .line 8
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    invoke-static {p5, p4, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->h([BI[BII)I

    move-result p1

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    invoke-static {p2, v2, p1}, Lcn/mucang/android/jiakaoyi/signal/utils/CRCUtil;->crc([BII)I

    move-result p2

    .line 10
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    iget-boolean p4, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->a:Z

    invoke-static {p3, p2, p1, p4}, Lcn/mucang/android/jiakaoyi/signal/communicate/utils/a;->i([BIIZ)I

    move-result p1

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->d:[B

    const/16 p3, 0x7e

    aput-byte p3, p2, v2

    const/4 p2, 0x0

    const/4 p4, 0x1

    :goto_0
    if-ge p2, p1, :cond_3

    .line 12
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->c:[B

    aget-byte p6, p5, p2

    const/16 p7, 0x7f

    if-ne p6, p3, :cond_1

    .line 13
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->d:[B

    add-int/lit8 p6, p4, 0x1

    aput-byte p7, p5, p4

    add-int/lit8 p4, p6, 0x1

    .line 14
    aput-byte v1, p5, p6

    goto :goto_1

    .line 15
    :cond_1
    aget-byte p6, p5, p2

    if-ne p6, p7, :cond_2

    .line 16
    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->d:[B

    add-int/lit8 p6, p4, 0x1

    aput-byte p7, p5, p4

    add-int/lit8 p4, p6, 0x1

    const/4 p7, 0x2

    .line 17
    aput-byte p7, p5, p6

    goto :goto_1

    .line 18
    :cond_2
    iget-object p6, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->d:[B

    add-int/lit8 p7, p4, 0x1

    aget-byte p5, p5, p2

    aput-byte p5, p6, p4

    move p4, p7

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/u/b/e;->d:[B

    add-int/lit8 p2, p4, 0x1

    aput-byte p3, p1, p4

    .line 20
    invoke-static {p1, v2, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method
