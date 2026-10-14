.class public Lorg/apache/commons/math3/util/Decimal64Field;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/Field;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field<",
        "Lorg/apache/commons/math3/util/Decimal64;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/commons/math3/util/Decimal64Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64Field;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Decimal64Field;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64Field;->INSTANCE:Lorg/apache/commons/math3/util/Decimal64Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lorg/apache/commons/math3/util/Decimal64Field;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/math3/util/Decimal64Field;->INSTANCE:Lorg/apache/commons/math3/util/Decimal64Field;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64Field;->getOne()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/util/Decimal64;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/math3/util/Decimal64;->ONE:Lorg/apache/commons/math3/util/Decimal64;

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
            "Lorg/apache/commons/math3/util/Decimal64;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/apache/commons/math3/util/Decimal64;

    return-object v0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64Field;->getZero()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/util/Decimal64;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/math3/util/Decimal64;->ZERO:Lorg/apache/commons/math3/util/Decimal64;

    return-object v0
.end method
