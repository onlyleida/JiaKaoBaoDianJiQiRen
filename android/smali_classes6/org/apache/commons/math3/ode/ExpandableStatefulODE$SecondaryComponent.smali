.class Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecondaryComponent"
.end annotation


# instance fields
.field private final equation:Lorg/apache/commons/math3/ode/SecondaryEquations;

.field private final mapper:Lorg/apache/commons/math3/ode/EquationsMapper;

.field private final state:[D

.field private final stateDot:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/ode/SecondaryEquations;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/SecondaryEquations;->getDimension()I

    move-result v0

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->equation:Lorg/apache/commons/math3/ode/SecondaryEquations;

    .line 4
    new-instance p1, Lorg/apache/commons/math3/ode/EquationsMapper;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;-><init>(II)V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 5
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->state:[D

    .line 6
    new-array p1, v0, [D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->stateDot:[D

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/EquationsMapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->mapper:Lorg/apache/commons/math3/ode/EquationsMapper;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->state:[D

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->stateDot:[D

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;)Lorg/apache/commons/math3/ode/SecondaryEquations;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/ode/ExpandableStatefulODE$SecondaryComponent;->equation:Lorg/apache/commons/math3/ode/SecondaryEquations;

    return-object p0
.end method
