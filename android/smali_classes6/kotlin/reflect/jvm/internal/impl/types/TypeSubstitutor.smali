.class public Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;,
        Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
    }
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/types/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/v0;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->g(Lkotlin/reflect/jvm/internal/impl/types/v0;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    return-void
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/v0;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    return-void

    :cond_0
    const/4 p1, 0x7

    .line 3
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method private static synthetic a(I)V
    .locals 13

    const/16 v0, 0x25

    const/16 v1, 0x22

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v6, 0x2

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_8

    :pswitch_2
    const-string v9, "substitution"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "projectionKind"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_4
    const-string v9, "typeParameterVariance"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_5
    const-string v9, "annotations"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_6
    const-string v9, "substituted"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_7
    const-string v9, "originalType"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_8
    const-string v9, "originalProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_9
    const-string v9, "typeProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_a
    const-string v9, "howThisTypeIsUsed"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_b
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_c
    const-string v9, "context"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_d
    const-string v9, "substitutionContext"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_e
    const-string v9, "second"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_f
    const-string v9, "first"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_10
    aput-object v7, v6, v8

    :goto_2
    const-string v8, "combine"

    const-string v9, "filterOutUnsafeVariance"

    const-string v10, "projectedTypeForConflictedTypeWithUnsafeVariance"

    const-string v11, "unsafeSubstitute"

    const-string v12, "safeSubstitute"

    if-eq p0, v3, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    packed-switch p0, :pswitch_data_b

    packed-switch p0, :pswitch_data_c

    aput-object v7, v6, v3

    goto :goto_3

    :pswitch_11
    aput-object v10, v6, v3

    goto :goto_3

    :pswitch_12
    aput-object v11, v6, v3

    goto :goto_3

    :pswitch_13
    aput-object v12, v6, v3

    goto :goto_3

    :cond_2
    :pswitch_14
    aput-object v8, v6, v3

    goto :goto_3

    :cond_3
    aput-object v9, v6, v3

    goto :goto_3

    :cond_4
    const-string v7, "getSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_5
    const-string v7, "replaceWithContravariantApproximatingSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_6
    const-string v7, "replaceWithNonApproximatingSubstitution"

    aput-object v7, v6, v3

    :goto_3
    packed-switch p0, :pswitch_data_d

    :pswitch_15
    const-string v7, "create"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_16
    aput-object v8, v6, v4

    goto :goto_4

    :pswitch_17
    aput-object v9, v6, v4

    goto :goto_4

    :pswitch_18
    aput-object v10, v6, v4

    goto :goto_4

    :pswitch_19
    aput-object v11, v6, v4

    goto :goto_4

    :pswitch_1a
    const-string v7, "substituteWithoutApproximation"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1b
    const-string v7, "substitute"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1c
    aput-object v12, v6, v4

    goto :goto_4

    :pswitch_1d
    const-string v7, "<init>"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1e
    const-string v7, "createChainedSubstitutor"

    aput-object v7, v6, v4

    :goto_4
    :pswitch_1f
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v3, :cond_7

    if-eq p0, v4, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_e

    packed-switch p0, :pswitch_data_f

    packed-switch p0, :pswitch_data_10

    packed-switch p0, :pswitch_data_11

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_20
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_9
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1d
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_17
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xb
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x13
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1d
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x28
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method private static b(ILkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/types/v0;)V
    .locals 2

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recursion too deep. Most likely infinite loop while substituting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; substitution: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/s0;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x25

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 2
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->d(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0x24

    .line 3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0x23

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0
.end method

.method public static d(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    .line 1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0x28

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_1
    if-ne p1, v1, :cond_3

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/16 p0, 0x29

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_3
    if-ne p0, p1, :cond_5

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/16 p0, 0x2a

    .line 3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 4
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variance conflict: type parameter variance \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "projection kind \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be combined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const/16 p0, 0x27

    .line 5
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_7
    const/16 p0, 0x26

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0
.end method

.method private static e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v0, :cond_0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v1, :cond_0

    .line 2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v1, :cond_1

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->IN_IN_OUT_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->NO_CONFLICT:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    return-object p0
.end method

.method public static f(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/r0;->i(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/v0;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->g(Lkotlin/reflect/jvm/internal/impl/types/v0;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static g(Lkotlin/reflect/jvm/internal/impl/types/v0;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/v0;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static h(Lkotlin/reflect/jvm/internal/impl/types/v0;Lkotlin/reflect/jvm/internal/impl/types/v0;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/p;->i(Lkotlin/reflect/jvm/internal/impl/types/v0;Lkotlin/reflect/jvm/internal/impl/types/v0;)Lkotlin/reflect/jvm/internal/impl/types/v0;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->g(Lkotlin/reflect/jvm/internal/impl/types/v0;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x4

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0
.end method

.method private static i(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/h$a;->z:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-interface {p0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->h(Lkotlin/reflect/jvm/internal/impl/name/c;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x22

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 2
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/h;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$a;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$a;-><init>()V

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/h;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/jvm/b/l;)V

    return-object v0

    :cond_2
    const/16 p0, 0x21

    .line 3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0
.end method

.method private static l(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Lkotlin/reflect/jvm/internal/impl/types/s0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    if-eqz p1, :cond_a

    if-eqz p3, :cond_9

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/h$a;->z:Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-interface {p0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->h(Lkotlin/reflect/jvm/internal/impl/name/c;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0x1d

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 2
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p0

    .line 3
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const/16 p0, 0x1e

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 4
    :cond_3
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    .line 5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    .line 7
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object p3

    .line 8
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->OUT_IN_IN_POSITION:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    if-ne p3, v2, :cond_4

    .line 9
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object p1

    :cond_4
    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    const/16 p0, 0x1f

    .line 10
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 11
    :cond_6
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object p2

    if-ne p2, v2, :cond_7

    .line 12
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object p1

    :cond_7
    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    const/16 p0, 0x20

    .line 13
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_9
    const/16 p0, 0x1c

    .line 14
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_a
    const/16 p0, 0x1b

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_b
    const/16 p0, 0x1a

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0
.end method

.method private static o(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/utils/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Exception while computing toString(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method private r(Lkotlin/reflect/jvm/internal/impl/types/s0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v2

    instance-of v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->b(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->m()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p1

    .line 6
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->s(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    .line 8
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/v0;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/w0;->b(Lkotlin/reflect/jvm/internal/impl/types/a0;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p2

    .line 9
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/f0;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/f0;

    if-eqz v0, :cond_2

    .line 10
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/f0;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/f0;

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/i0;->j(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p2

    .line 11
    :cond_2
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-direct {p1, v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object p1
.end method

.method private s(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;I)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    .line 4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/s0;

    const/4 v5, 0x1

    add-int/lit8 v6, p3, 0x1

    .line 5
    invoke-direct {p0, v4, v3, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v6

    .line 6
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$b;->a:[I

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v8

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_1

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq v3, v7, :cond_2

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/s0;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v6

    invoke-direct {v3, v7, v6}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    move-object v6, v3

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/y0;->t(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v6

    :cond_2
    :goto_1
    if-eq v6, v4, :cond_3

    const/4 v2, 0x1

    .line 10
    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    return-object p2

    :cond_5
    return-object v0
.end method

.method private u(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-static {p3, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->b(ILkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/types/v0;)V

    .line 2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0x13

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 3
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/types/z0;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 5
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/z0;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/z0;->B0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object v2

    .line 6
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/z0;->e0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v1

    .line 7
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    add-int/2addr p3, v3

    invoke-direct {p0, v4, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    const/16 p1, 0x14

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 9
    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->p(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    .line 10
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p3

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/z0;

    if-eqz v0, :cond_4

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/z0;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/z0;->e0()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    :cond_4
    invoke-static {p3, p1}, Lkotlin/reflect/jvm/internal/impl/types/a1;->e(Lkotlin/reflect/jvm/internal/impl/types/c1;Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    .line 11
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object p3

    .line 12
    :cond_5
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/r;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object v2

    instance-of v2, v2, Lkotlin/reflect/jvm/internal/impl/types/e0;

    if-eqz v2, :cond_6

    goto/16 :goto_4

    .line 13
    :cond_6
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/v0;->e(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 14
    invoke-static {v1, v2, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->l(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Lkotlin/reflect/jvm/internal/impl/types/s0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v2

    goto :goto_0

    :cond_7
    move-object v2, v0

    .line 15
    :goto_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    if-nez v2, :cond_a

    .line 16
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/y;->b(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/p0;->b(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 17
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/y;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/v;

    move-result-object v1

    .line 18
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/v;->Q0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    add-int/2addr p3, v3

    invoke-direct {p0, v2, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v2

    .line 19
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/v;->R0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    invoke-direct {p0, v3, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p2

    .line 20
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p3

    .line 21
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/v;->Q0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v4

    if-ne v3, v4, :cond_9

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/v;->R0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    if-ne v3, v1, :cond_9

    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    const/16 p1, 0x16

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 22
    :cond_9
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/w0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/w0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    .line 23
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-direct {p2, p3, p1}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object p2

    .line 24
    :cond_a
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->l0(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result p2

    if-nez p2, :cond_16

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto/16 :goto_3

    :cond_b
    if-eqz v2, :cond_14

    .line 25
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->e(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    move-result-object p1

    .line 26
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorKt;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result p2

    const/4 p3, 0x2

    if-nez p2, :cond_e

    .line 27
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p2, p2, v5

    if-eq p2, v3, :cond_d

    if-eq p2, p3, :cond_c

    goto :goto_1

    .line 28
    :cond_c
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/u0;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p3

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/types/q0;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->I()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object p1

    .line 29
    :cond_d
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;

    const-string p2, "Out-projection in in-position"

    invoke-direct {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_e
    :goto_1
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/p0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object p2

    .line 31
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->a()Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v2, :cond_f

    return-object v2

    :cond_f
    const/16 p1, 0x18

    .line 32
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_10
    if-eqz p2, :cond_11

    .line 33
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/j;->h0(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p2

    goto :goto_2

    .line 34
    :cond_11
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p2

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->J0()Z

    move-result v0

    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/y0;->r(Lkotlin/reflect/jvm/internal/impl/types/a0;Z)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p2

    .line 35
    :goto_2
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 36
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/v0;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    .line 37
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;

    new-array p3, p3, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    const/4 v5, 0x0

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v6

    aput-object v6, p3, v5

    aput-object v0, p3, v3

    invoke-direct {v1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    invoke-static {p2, v1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->r(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p2

    .line 38
    :cond_12
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;->NO_CONFLICT:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$VarianceConflictType;

    if-ne p1, p3, :cond_13

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->d(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    .line 39
    :cond_13
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-direct {p1, v4, p2}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object p1

    .line 40
    :cond_14
    invoke-direct {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->r(Lkotlin/reflect/jvm/internal/impl/types/s0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    if-eqz p1, :cond_15

    return-object p1

    :cond_15
    const/16 p1, 0x19

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_16
    :goto_3
    if-eqz p1, :cond_17

    return-object p1

    :cond_17
    const/16 p1, 0x17

    .line 41
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_18
    :goto_4
    if-eqz p1, :cond_19

    return-object p1

    :cond_19
    const/16 p1, 0x15

    .line 42
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_1a
    const/16 p1, 0x12

    .line 43
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0
.end method


# virtual methods
.method public j()Lkotlin/reflect/jvm/internal/impl/types/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->f()Z

    move-result v0

    return v0
.end method

.method public m()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/z;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/z;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/z;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/z;->j()[Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    move-result-object v2

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/z;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/z;->i()[Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/z;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/t0;[Lkotlin/reflect/jvm/internal/impl/types/s0;Z)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/v0;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public n(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xb

    .line 2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    .line 3
    :cond_1
    :try_start_0
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-direct {v1, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const/16 p1, 0xc

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/t;->j(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const/16 p1, 0xd

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_4
    const/16 p1, 0xa

    .line 5
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_5
    const/16 p1, 0x9

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0
.end method

.method public p(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->j()Lkotlin/reflect/jvm/internal/impl/types/v0;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/v0;->g(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->q(Lkotlin/reflect/jvm/internal/impl/types/s0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/16 p1, 0xf

    .line 3
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0

    :cond_2
    const/16 p1, 0xe

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0
.end method

.method public q(Lkotlin/reflect/jvm/internal/impl/types/s0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->t(Lkotlin/reflect/jvm/internal/impl/types/s0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a:Lkotlin/reflect/jvm/internal/impl/types/v0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/v0;->b()Z

    move-result v0

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt;->c(Lkotlin/reflect/jvm/internal/impl/types/s0;Z)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x10

    .line 4
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public t(Lkotlin/reflect/jvm/internal/impl/types/s0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->u(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$SubstitutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :cond_1
    const/16 p1, 0x11

    .line 3
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->a(I)V

    throw v0
.end method
