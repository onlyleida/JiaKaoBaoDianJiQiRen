.class public final enum Lorg/apache/commons/math3/optim/linear/Relationship;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/optim/linear/Relationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/optim/linear/Relationship;

.field public static final enum EQ:Lorg/apache/commons/math3/optim/linear/Relationship;

.field public static final enum GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

.field public static final enum LEQ:Lorg/apache/commons/math3/optim/linear/Relationship;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lorg/apache/commons/math3/optim/linear/Relationship;

    const-string v1, "EQ"

    const/4 v2, 0x0

    const-string v3, "="

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->EQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 2
    new-instance v1, Lorg/apache/commons/math3/optim/linear/Relationship;

    const-string v3, "LEQ"

    const/4 v4, 0x1

    const-string v5, "<="

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/math3/optim/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/math3/optim/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    .line 3
    new-instance v3, Lorg/apache/commons/math3/optim/linear/Relationship;

    const-string v5, "GEQ"

    const/4 v6, 0x2

    const-string v7, ">="

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/math3/optim/linear/Relationship;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/math3/optim/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/commons/math3/optim/linear/Relationship;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/apache/commons/math3/optim/linear/Relationship;->$VALUES:[Lorg/apache/commons/math3/optim/linear/Relationship;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/apache/commons/math3/optim/linear/Relationship;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/optim/linear/Relationship;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/optim/linear/Relationship;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/optim/linear/Relationship;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->$VALUES:[Lorg/apache/commons/math3/optim/linear/Relationship;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optim/linear/Relationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/linear/Relationship;

    return-object v0
.end method


# virtual methods
.method public oppositeRelationship()Lorg/apache/commons/math3/optim/linear/Relationship;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship$1;->$SwitchMap$org$apache$commons$math3$optim$linear$Relationship:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->EQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->LEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Lorg/apache/commons/math3/optim/linear/Relationship;->GEQ:Lorg/apache/commons/math3/optim/linear/Relationship;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/Relationship;->stringValue:Ljava/lang/String;

    return-object v0
.end method
