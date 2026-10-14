.class public abstract enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "EstimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_1:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_2:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_3:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_4:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_5:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_6:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_7:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_8:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_9:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$1;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    const-string v3, "Legacy Apache Commons Math"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 2
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$2;

    const-string v3, "R_1"

    const/4 v4, 0x1

    const-string v5, "R-1"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_1:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 3
    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$3;

    const-string v5, "R_2"

    const/4 v6, 0x2

    const-string v7, "R-2"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_2:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 4
    new-instance v5, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$4;

    const-string v7, "R_3"

    const/4 v8, 0x3

    const-string v9, "R-3"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_3:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 5
    new-instance v7, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$5;

    const-string v9, "R_4"

    const/4 v10, 0x4

    const-string v11, "R-4"

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_4:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 6
    new-instance v9, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$6;

    const-string v11, "R_5"

    const/4 v12, 0x5

    const-string v13, "R-5"

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_5:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 7
    new-instance v11, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$7;

    const-string v13, "R_6"

    const/4 v14, 0x6

    const-string v15, "R-6"

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_6:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 8
    new-instance v13, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$8;

    const-string v15, "R_7"

    const/4 v14, 0x7

    const-string v12, "R-7"

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_7:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 9
    new-instance v12, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$9;

    const-string v15, "R_8"

    const/16 v14, 0x8

    const-string v10, "R-8"

    invoke-direct {v12, v15, v14, v10}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_8:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 10
    new-instance v10, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$10;

    const-string v15, "R_9"

    const/16 v14, 0x9

    const-string v8, "R-9"

    invoke-direct {v10, v15, v14, v8}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$10;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_9:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    const/16 v8, 0xa

    new-array v8, v8, [Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 11
    sput-object v8, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->$VALUES:[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->$VALUES:[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object v0
.end method


# virtual methods
.method protected estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D
    .locals 6

    .line 1
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-int v2, v0

    sub-double v0, p3, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, p3, v3

    if-gez v5, :cond_0

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p6, p1, p2, p3}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide p1

    return-wide p1

    :cond_0
    int-to-double v3, p5

    cmpl-double v5, p3, v3

    if-ltz v5, :cond_1

    add-int/lit8 p5, p5, -0x1

    .line 3
    invoke-virtual {p6, p1, p2, p5}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide p1

    return-wide p1

    :cond_1
    add-int/lit8 p3, v2, -0x1

    .line 4
    invoke-virtual {p6, p1, p2, p3}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide p3

    .line 5
    invoke-virtual {p6, p1, p2, v2}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide p1

    sub-double/2addr p1, p3

    mul-double v0, v0, p1

    add-double/2addr p3, v0

    return-wide p3
.end method

.method public evaluate([DDLorg/apache/commons/math3/util/KthSelector;)D
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide p1

    return-wide p1
.end method

.method protected evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D
    .locals 8

    .line 1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v2, p3, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v4, p3, v2

    if-lez v4, :cond_0

    div-double/2addr p3, v0

    .line 2
    array-length v0, p1

    invoke-virtual {p0, p3, p4, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->index(DI)D

    move-result-wide v4

    array-length v6, p1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x64

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract index(DI)D
.end method
