.class Lorg/apache/commons/math3/util/FastMath$Split;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Split"
.end annotation


# static fields
.field public static final NAN:Lorg/apache/commons/math3/util/FastMath$Split;

.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;


# instance fields
.field private final full:D

.field private final high:D

.field private final low:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$Split;->NAN:Lorg/apache/commons/math3/util/FastMath$Split;

    .line 2
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$Split;->POSITIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

    .line 3
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/util/FastMath$Split;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

    return-void
.end method

.method constructor <init>(D)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/32 v2, -0x8000000

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    sub-double/2addr p1, v0

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    return-void
.end method

.method constructor <init>(DD)V
    .locals 9

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    move-wide v3, p3

    goto :goto_1

    :cond_1
    add-double v0, p1, p3

    :goto_0
    move-wide v3, v0

    :goto_1
    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DDD)V

    return-void
.end method

.method constructor <init>(DDD)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    .line 8
    iput-wide p3, p0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    .line 9
    iput-wide p5, p0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/util/FastMath$Split;J)Lorg/apache/commons/math3/util/FastMath$Split;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/util/FastMath$Split;->pow(J)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/math3/util/FastMath$Split;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    return-wide v0
.end method

.method private pow(J)Lorg/apache/commons/math3/util/FastMath$Split;
    .locals 11

    .line 1
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(D)V

    .line 2
    new-instance v10, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v4, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    iget-wide v6, p0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    iget-wide v8, p0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DDD)V

    move-wide v3, p1

    :goto_0
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    cmp-long v9, v3, v5

    if-eqz v9, :cond_1

    and-long/2addr v7, v3

    cmp-long v9, v7, v5

    if-eqz v9, :cond_0

    .line 3
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/util/FastMath$Split;->multiply(Lorg/apache/commons/math3/util/FastMath$Split;)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {v10, v10}, Lorg/apache/commons/math3/util/FastMath$Split;->multiply(Lorg/apache/commons/math3/util/FastMath$Split;)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v10

    const/4 v5, 0x1

    ushr-long/2addr v3, v5

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v3, v0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6
    iget-wide v3, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object p1, Lorg/apache/commons/math3/util/FastMath$Split;->NAN:Lorg/apache/commons/math3/util/FastMath$Split;

    return-object p1

    .line 8
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v1

    if-gez v0, :cond_3

    .line 9
    new-instance p1, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v0

    invoke-direct {p1, v0, v1, v5, v6}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    return-object p1

    .line 10
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    cmpg-double v2, v0, v5

    if-gez v2, :cond_4

    and-long/2addr p1, v7

    cmp-long v0, p1, v7

    if-nez v0, :cond_4

    .line 11
    sget-object p1, Lorg/apache/commons/math3/util/FastMath$Split;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

    return-object p1

    .line 12
    :cond_4
    sget-object p1, Lorg/apache/commons/math3/util/FastMath$Split;->POSITIVE_INFINITY:Lorg/apache/commons/math3/util/FastMath$Split;

    return-object p1

    :cond_5
    return-object v0
.end method


# virtual methods
.method public multiply(Lorg/apache/commons/math3/util/FastMath$Split;)Lorg/apache/commons/math3/util/FastMath$Split;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v3, v0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    iget-wide v5, v1, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    mul-double v3, v3, v5

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(D)V

    .line 2
    iget-wide v3, v0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    iget-wide v5, v1, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    mul-double v7, v3, v5

    iget-wide v9, v2, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    iget-wide v11, v0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    iget-wide v13, v1, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    mul-double v15, v11, v13

    sub-double/2addr v9, v15

    mul-double v3, v3, v13

    sub-double/2addr v9, v3

    mul-double v11, v11, v5

    sub-double/2addr v9, v11

    sub-double/2addr v7, v9

    .line 3
    new-instance v1, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v3, v2, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    iget-wide v5, v2, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    add-double/2addr v5, v7

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    return-object v1
.end method

.method public reciprocal()Lorg/apache/commons/math3/util/FastMath$Split;
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    .line 2
    new-instance v4, Lorg/apache/commons/math3/util/FastMath$Split;

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(D)V

    .line 3
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/util/FastMath$Split;->multiply(Lorg/apache/commons/math3/util/FastMath$Split;)Lorg/apache/commons/math3/util/FastMath$Split;

    move-result-object v0

    .line 4
    iget-wide v5, v0, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    sub-double/2addr v5, v2

    iget-wide v0, v0, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    add-double/2addr v5, v0

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/util/FastMath$Split;

    iget-wide v1, v4, Lorg/apache/commons/math3/util/FastMath$Split;->high:D

    iget-wide v3, v4, Lorg/apache/commons/math3/util/FastMath$Split;->low:D

    iget-wide v7, p0, Lorg/apache/commons/math3/util/FastMath$Split;->full:D

    div-double/2addr v5, v7

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath$Split;-><init>(DD)V

    move-object v4, v0

    :goto_0
    return-object v4
.end method
