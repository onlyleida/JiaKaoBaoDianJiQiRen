.class public Lorg/apache/commons/math3/dfp/DfpField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/Field;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation


# static fields
.field public static final FLAG_DIV_ZERO:I = 0x2

.field public static final FLAG_INEXACT:I = 0x10

.field public static final FLAG_INVALID:I = 0x1

.field public static final FLAG_OVERFLOW:I = 0x4

.field public static final FLAG_UNDERFLOW:I = 0x8

.field private static eString:Ljava/lang/String;

.field private static ln10String:Ljava/lang/String;

.field private static ln2String:Ljava/lang/String;

.field private static ln5String:Ljava/lang/String;

.field private static piString:Ljava/lang/String;

.field private static sqr2ReciprocalString:Ljava/lang/String;

.field private static sqr2String:Ljava/lang/String;

.field private static sqr3ReciprocalString:Ljava/lang/String;

.field private static sqr3String:Ljava/lang/String;


# instance fields
.field private final e:Lorg/apache/commons/math3/dfp/Dfp;

.field private final eSplit:[Lorg/apache/commons/math3/dfp/Dfp;

.field private ieeeFlags:I

.field private final ln10:Lorg/apache/commons/math3/dfp/Dfp;

.field private final ln2:Lorg/apache/commons/math3/dfp/Dfp;

.field private final ln2Split:[Lorg/apache/commons/math3/dfp/Dfp;

.field private final ln5:Lorg/apache/commons/math3/dfp/Dfp;

.field private final ln5Split:[Lorg/apache/commons/math3/dfp/Dfp;

.field private final one:Lorg/apache/commons/math3/dfp/Dfp;

.field private final pi:Lorg/apache/commons/math3/dfp/Dfp;

.field private final piSplit:[Lorg/apache/commons/math3/dfp/Dfp;

.field private rMode:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

.field private final radixDigits:I

.field private final sqr2:Lorg/apache/commons/math3/dfp/Dfp;

.field private final sqr2Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

.field private final sqr2Split:[Lorg/apache/commons/math3/dfp/Dfp;

.field private final sqr3:Lorg/apache/commons/math3/dfp/Dfp;

.field private final sqr3Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

.field private final two:Lorg/apache/commons/math3/dfp/Dfp;

.field private final zero:Lorg/apache/commons/math3/dfp/Dfp;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/dfp/DfpField;-><init>(IZ)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    const/16 v1, 0xd

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x3

    .line 3
    div-int/lit8 v0, v1, 0x4

    :goto_0
    iput v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->radixDigits:I

    .line 4
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->rMode:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    .line 6
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    iput-object v1, p0, Lorg/apache/commons/math3/dfp/DfpField;->zero:Lorg/apache/commons/math3/dfp/Dfp;

    .line 7
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->one:Lorg/apache/commons/math3/dfp/Dfp;

    .line 8
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->two:Lorg/apache/commons/math3/dfp/Dfp;

    if-eqz p2, :cond_2

    .line 9
    const-class p2, Lorg/apache/commons/math3/dfp/DfpField;

    monitor-enter p2

    const/16 v0, 0x43

    if-ge p1, v0, :cond_1

    const/16 p1, 0xc8

    goto :goto_1

    :cond_1
    mul-int/lit8 p1, p1, 0x3

    .line 10
    :goto_1
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/math3/dfp/DfpField;->computeStringConstants(I)V

    .line 11
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2String:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2:Lorg/apache/commons/math3/dfp/Dfp;

    .line 12
    sget-object p1, Lorg/apache/commons/math3/dfp/DfpField;->sqr2String:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 13
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2ReciprocalString:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    .line 14
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3String:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3:Lorg/apache/commons/math3/dfp/Dfp;

    .line 15
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3ReciprocalString:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    .line 16
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->piString:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->pi:Lorg/apache/commons/math3/dfp/Dfp;

    .line 17
    sget-object p1, Lorg/apache/commons/math3/dfp/DfpField;->piString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->piSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 18
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->eString:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->e:Lorg/apache/commons/math3/dfp/Dfp;

    .line 19
    sget-object p1, Lorg/apache/commons/math3/dfp/DfpField;->eString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->eSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 20
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->ln2String:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2:Lorg/apache/commons/math3/dfp/Dfp;

    .line 21
    sget-object p1, Lorg/apache/commons/math3/dfp/DfpField;->ln2String:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 22
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->ln5String:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5:Lorg/apache/commons/math3/dfp/Dfp;

    .line 23
    sget-object p1, Lorg/apache/commons/math3/dfp/DfpField;->ln5String:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/DfpField;->split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 24
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->ln10String:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln10:Lorg/apache/commons/math3/dfp/Dfp;

    .line 25
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2:Lorg/apache/commons/math3/dfp/Dfp;

    .line 27
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 28
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    .line 29
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3:Lorg/apache/commons/math3/dfp/Dfp;

    .line 30
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    .line 31
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->pi:Lorg/apache/commons/math3/dfp/Dfp;

    .line 32
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->piSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 33
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->e:Lorg/apache/commons/math3/dfp/Dfp;

    .line 34
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->eSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 35
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2:Lorg/apache/commons/math3/dfp/Dfp;

    .line 36
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 37
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5:Lorg/apache/commons/math3/dfp/Dfp;

    .line 38
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5Split:[Lorg/apache/commons/math3/dfp/Dfp;

    .line 39
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln10:Lorg/apache/commons/math3/dfp/Dfp;

    :goto_2
    return-void
.end method

.method public static computeExp(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 2
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 3
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 4
    new-instance v3, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v3, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 5
    new-instance v4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v4, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x2710

    if-ge v5, v6, :cond_1

    .line 6
    invoke-virtual {v4, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 8
    invoke-virtual {v3, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static computeLn(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    .line 4
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    add-int/lit8 v2, v2, 0x2

    .line 7
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 8
    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method private static computePi(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 3
    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    .line 5
    invoke-virtual {v1, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 8
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 9
    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    .line 10
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p2

    .line 13
    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v1, v3

    goto :goto_0

    .line 14
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    return-object p0
.end method

.method private static computeStringConstants(I)V
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2String:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p0, -0x3

    if-ge v0, v1, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/dfp/DfpField;-><init>(IZ)V

    .line 3
    new-instance p0, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    .line 4
    new-instance v1, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    .line 5
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    .line 6
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/math3/dfp/DfpField;->sqr2String:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/math3/dfp/DfpField;->sqr2ReciprocalString:Ljava/lang/String;

    .line 9
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/commons/math3/dfp/DfpField;->sqr3String:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/math3/dfp/DfpField;->sqr3ReciprocalString:Ljava/lang/String;

    .line 12
    invoke-static {p0, v1, v2}, Lorg/apache/commons/math3/dfp/DfpField;->computePi(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/math3/dfp/DfpField;->piString:Ljava/lang/String;

    .line 13
    invoke-static {p0, p0}, Lorg/apache/commons/math3/dfp/DfpField;->computeExp(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/math3/dfp/DfpField;->eString:Ljava/lang/String;

    .line 14
    invoke-static {v1, p0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->computeLn(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/math3/dfp/DfpField;->ln2String:Ljava/lang/String;

    .line 15
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    invoke-static {v2, p0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->computeLn(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/math3/dfp/DfpField;->ln5String:Ljava/lang/String;

    .line 16
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    invoke-static {v2, p0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->computeLn(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/apache/commons/math3/dfp/DfpField;->ln10String:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private split(Ljava/lang/String;)[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v3, v2, [C

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    const/16 v9, 0x30

    const/16 v10, 0x39

    if-ge v6, v2, :cond_4

    .line 2
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aput-char v11, v3, v6

    .line 3
    aget-char v11, v3, v6

    const/16 v12, 0x31

    if-lt v11, v12, :cond_0

    aget-char v11, v3, v6

    if-gt v11, v10, :cond_0

    const/4 v8, 0x0

    .line 4
    :cond_0
    aget-char v11, v3, v6

    const/16 v12, 0x2e

    if-ne v11, v12, :cond_1

    rsub-int v8, v7, 0x190

    .line 5
    rem-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    const/4 v8, 0x0

    .line 6
    :cond_1
    iget v11, p0, Lorg/apache/commons/math3/dfp/DfpField;->radixDigits:I

    div-int/2addr v11, v0

    mul-int/lit8 v11, v11, 0x4

    if-ne v7, v11, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    aget-char v11, v3, v6

    if-lt v11, v9, :cond_3

    aget-char v9, v3, v6

    if-gt v9, v10, :cond_3

    if-nez v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 8
    :goto_1
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    aput-object v0, v1, v5

    :goto_2
    if-ge v5, v2, :cond_6

    .line 9
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v3, v5

    .line 10
    aget-char v0, v3, v5

    if-lt v0, v9, :cond_5

    aget-char v0, v3, v5

    if-gt v0, v10, :cond_5

    if-ge v5, v6, :cond_5

    .line 11
    aput-char v9, v3, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 12
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/dfp/Dfp;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    aput-object p1, v1, v4

    return-object v1
.end method


# virtual methods
.method public clearIEEEFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    return-void
.end method

.method public getE()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->e:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getESplit()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->eSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getIEEEFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    return v0
.end method

.method public getLn10()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln10:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getLn2()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getLn2Split()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getLn5()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getLn5Split()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ln5Split:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->one:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getPi()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->pi:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getPiSplit()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->piSplit:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getRadixDigits()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->radixDigits:I

    return v0
.end method

.method public getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->rMode:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-object v0
.end method

.method public getRuntimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/math3/FieldElement<",
            "Lorg/apache/commons/math3/dfp/Dfp;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr2()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr2Reciprocal()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr2Split()[Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr2Split:[Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/dfp/Dfp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr3()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getSqr3Reciprocal()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->sqr3Reciprocal:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getTwo()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->two:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->zero:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public newDfp()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newDfp(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newDfp(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 8
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V

    return-object v0
.end method

.method public newDfp(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newDfp(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newDfp(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newDfp(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 7
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newDfp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    return-object v0
.end method

.method public setIEEEFlags(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x1f

    .line 1
    iput p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    return-void
.end method

.method public setIEEEFlagsBits(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->ieeeFlags:I

    return-void
.end method

.method public setRoundingMode(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/DfpField;->rMode:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    return-void
.end method
